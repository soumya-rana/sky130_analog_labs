#!/usr/bin/python

import matplotlib.pyplot as plt
import subprocess

# change this to your ngspice run directory where all raw files and txt files are dumped post simulations.
path="/headless/.xschem/simulations/"
corners = []

# set the names of sweep var and output vars as per your testbench. output vars should be in the same order as in wrdata command
sweep_var = ["temp"]
output_vars = ["i_ptat0", "i_ptat1/i_ptat0", "v_vbe", "v_vupb"]

# loading netlist into inventory
netlist="temp_char_ptat_ctat"
filename=path + netlist + ".spice"
fID = open(filename,'r')
netlist_lines = []
for line in fID:
    netlist_lines.append(line.strip().split())
    if line.startswith(".lib"): print(line.strip().split())

# creating list of corners. modify the component arrays to include/exclude corner combinations
pmos = ["f", "s"]
nmos = ["f", "s"]
rescap = ["ll","hh"]
for i in range(len(pmos)):
    for j in range(len(nmos)):
        for k in range(len(rescap)):
            corner = pmos[i] + nmos[j] + rescap[k]
            corners.append(corner)
print(" ".join(corners))

# debug statements. i can run ngspice only as root, however i want to check the netlist generation as a normal user as well
result = subprocess.run(['whoami'], capture_output=True, text=True)
if (result.stdout!="root\n"):
    path = "/home/ubuntu/temp/"

# creating graph objects for plotting data
fig, ax = plt.subplots(1,len(output_vars))

# creating corner netlists
iteration = 1
for corner in corners:
    corner_netlist = path + netlist + "_" + corner + ".spice"
    # cleanup netlist if exists
    fID = open(corner_netlist, 'w')
    fID.write("* "+corner+" netlist\n")
    fID.close()

    # create the corner netlist
    fID = open(corner_netlist, 'a+')
    for line in netlist_lines:
        # update corner name before writing to netlist
        if len(line)>0 and line[0]=='.lib':
            line[len(line)-1] = corner 
        if len(line)>0 and line[0]=='wrdata':
            filename = line[1]
            n = len(filename)
            filename = path + netlist + "_" + corner + ".txt"
            line[1] = filename
        if len(line)>0 and line[0]==".endc":
            fID.write("quit 0\n")
        temp = " ".join(line)
        fID.write(temp+"\n")
    fID.close()
    # netlist writing complete. lets run the simulation now (only if script is executed as root)
    simulation_cmd = "ngspice -i " + corner_netlist
    if (result.stdout=="root\n"):
        subprocess.run(simulation_cmd, shell=True, check=True)
    
    # simulation complete. load results from the dumped text file
    outfile = filename
    sweepdata = []
    outdata = {}
    for var in output_vars:
        outdata[var] = []
    fID = open(outfile, 'r')
    for line in fID:
        temp=list(map(float,line.strip().split()))
        sweepdata.append(temp[0])
        for i in range(len(output_vars)):
            outdata[output_vars[i]].append(temp[2*i + 1])
    fID.close()
    print("simulation "+ str(iteration) + " out of "+str(len(corners))+" completed!!!")
    iteration += 1
    for i in range(len(output_vars)):
        ax[i].plot(sweepdata, outdata[output_vars[i]])
        ax[i].grid()

# adding grid, title and legend to the graph
for i in range(len(output_vars)):
    ax[i].grid()
    ax[i].set(xlabel = sweep_var[0], ylabel = output_vars[i])
    ax[i].set_title(output_vars[i] + " vs " + sweep_var[0])
    ax[i].legend(corners)
plt.show()