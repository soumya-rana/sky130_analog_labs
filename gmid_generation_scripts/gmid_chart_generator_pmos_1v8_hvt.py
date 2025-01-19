import matplotlib.pyplot as plt
# change this to your ngspice run directory where all raw files and txt files are dumped post simulations.
path="/headless/.xschem/simulations/"
# creating vectors for storing vov, gm/id, gm/gds, id/W
vov=[[],[],[],[],[]]
gm_id=[[],[],[],[],[]]
gm_gds=[[],[],[],[],[]]
id_W=[[],[],[],[],[]]
W=2e-6
# read data from the text file 
for i in range(5):
    filename=path+"gmid_"+str(i+1)+"_pfet_01v8_hvt_tb.txt"
    fID = open(filename,'r')
    for line in fID:
        temp=list(map(float,line.strip().split()))
        if (temp[0]-temp[5])>0 and temp[3]!=0:
            vov[i].append(temp[0]-temp[5])
            gm_id[i].append(temp[1]/temp[3])
            gm_gds[i].append(temp[1]/temp[7])
            id_W[i].append(temp[3]/W)
fig, ax = plt.subplots(1,3)
# plot gm/id versus Vov
ax[0].plot(vov[0], gm_id[0], vov[1], gm_id[1], vov[2], gm_id[2], vov[3], gm_id[3], vov[4], gm_id[4])
ax[0].legend(["L=0.15u","L=0.3u","L=0.5u","L=1u","L=2u"])
ax[0].grid()
ax[0].set(xlabel='Vov', ylabel = 'gm/id')
ax[0].set_title("gm/id versus V_{ov}")
# plot gm/gds versus gm/id
ax[1].plot(gm_id[0], gm_gds[0], gm_id[1], gm_gds[1], gm_id[2], gm_gds[2], gm_id[3], gm_gds[3], gm_id[4], gm_gds[4])
ax[1].legend(["L=0.15u","L=0.3u","L=0.5u","L=1u","L=2u"])
ax[1].grid()
ax[1].set(xlabel='gm/id', ylabel = 'gm/gds')
ax[1].set_title("gm/gds vs gm/id")
# plot id/W versus gm/id
ax[2].plot(gm_id[0], id_W[0], gm_id[1], id_W[1], gm_id[2], id_W[2], gm_id[3], id_W[3], gm_id[4], id_W[4])
ax[2].legend(["L=0.15u","L=0.3u","L=0.5u","L=1u","L=2u"])
ax[2].grid()
ax[2].set(xlabel='gm/id', ylabel = 'id/W')
ax[2].set_title("id/W vs gm/id")
plt.show()
fID.close()
