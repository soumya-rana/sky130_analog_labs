v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 650 -1500 0 0 0.4 0.4 {font=Monospace}
N 710 -1060 710 -1010 {
lab=GND}
N 910 -1060 910 -1010 {
lab=GND}
N 710 -1010 910 -1010 {
lab=GND}
N 710 -1190 910 -1190 {
lab=VD}
N 620 -1090 670 -1090 {
lab=VG}
N 920 -1440 920 -1380 {
lab=VD}
N 1010 -1440 1010 -1380 {
lab=VD}
N 920 -1320 920 -1260 {
lab=VG}
N 1010 -1320 1010 -1260 {
lab=GND}
N 1110 -1060 1110 -1010 {
lab=GND}
N 910 -1010 1110 -1010 {
lab=GND}
N 1110 -1010 1290 -1010 {
lab=GND}
N 1460 -1060 1460 -1010 {
lab=GND}
N 1290 -1010 1460 -1010 {
lab=GND}
N 710 -1190 710 -1180 {
lab=VD}
N 910 -1190 910 -1180 {
lab=VD}
N 820 -1090 870 -1090 {
lab=VG}
N 1110 -1190 1110 -1180 {
lab=VD}
N 1020 -1090 1070 -1090 {
lab=VG}
N 1290 -1060 1290 -1010 {
lab=GND}
N 1290 -1190 1290 -1180 {
lab=VD}
N 1200 -1090 1250 -1090 {
lab=VG}
N 1460 -1060 1460 -1010 {
lab=GND}
N 1460 -1190 1460 -1180 {
lab=VD}
N 1370 -1090 1420 -1090 {
lab=VG}
N 910 -1190 1110 -1190 {
lab=VD}
N 1110 -1190 1290 -1190 {
lab=VD}
N 1290 -1190 1460 -1190 {
lab=VD}
N 1100 -1440 1100 -1380 {
lab=VDD}
N 1100 -1320 1100 -1260 {
lab=GND}
C {devices/lab_pin.sym} 620 -1090 0 0 {name=p1 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 710 -1190 0 0 {name=p3 sig_type=std_logic lab=VD}
C {devices/vsource.sym} 920 -1350 0 0 {name=VGS value=0.9 savecurrent=false}
C {devices/vsource.sym} 1010 -1350 0 0 {name=VD value=0.9 savecurrent=false}
C {devices/lab_pin.sym} 920 -1440 0 0 {name=p4 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} 1010 -1440 0 0 {name=p5 sig_type=std_logic lab=VD}
C {devices/code.sym} 650 -1340 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {devices/code_shown.sym} 120 -1360 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option savecurrents
.control
save all
save @m.xm1.msky130_fd_pr__pfet_01v8_hvt[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8_hvt[vth]
save @m.xm1.msky130_fd_pr__pfet_01v8_hvt[gds]
save @m.xm2.msky130_fd_pr__pfet_01v8_hvt[gm]
save @m.xm2.msky130_fd_pr__pfet_01v8_hvt[vth]
save @m.xm2.msky130_fd_pr__pfet_01v8_hvt[gds]
save @m.xm3.msky130_fd_pr__pfet_01v8_hvt[gm]
save @m.xm3.msky130_fd_pr__pfet_01v8_hvt[vth]
save @m.xm3.msky130_fd_pr__pfet_01v8_hvt[gds]
save @m.xm4.msky130_fd_pr__pfet_01v8_hvt[gm]
save @m.xm4.msky130_fd_pr__pfet_01v8_hvt[vth]
save @m.xm4.msky130_fd_pr__pfet_01v8_hvt[gds]
save @m.xm5.msky130_fd_pr__pfet_01v8_hvt[gm]
save @m.xm5.msky130_fd_pr__pfet_01v8_hvt[vth]
save @m.xm5.msky130_fd_pr__pfet_01v8_hvt[gds]
dc VGS 0.05 1.8 0.05 
** remove zero length vectors to prevent write errors
remzerovec
write ~/.xschem/simulations/gmid_nmos_tb.raw
plot @m.xm1.msky130_fd_pr__pfet_01v8_hvt[gm]
plot @m.xm2.msky130_fd_pr__pfet_01v8_hvt[gm]
plot @m.xm3.msky130_fd_pr__pfet_01v8_hvt[gm]
plot @m.xm4.msky130_fd_pr__pfet_01v8_hvt[gm]
plot @m.xm5.msky130_fd_pr__pfet_01v8_hvt[gm]
wrdata gmid_1_pfet_01v8_hvt_tb.txt @m.xm1.msky130_fd_pr__pfet_01v8_hvt[gm] i(VD1) @m.xm1.msky130_fd_pr__pfet_01v8_hvt[vth] @m.xm1.msky130_fd_pr__pfet_01v8_hvt[gds]
wrdata gmid_2_pfet_01v8_hvt_tb.txt @m.xm2.msky130_fd_pr__pfet_01v8_hvt[gm] i(VD2) @m.xm2.msky130_fd_pr__pfet_01v8_hvt[vth] @m.xm2.msky130_fd_pr__pfet_01v8_hvt[gds]
wrdata gmid_3_pfet_01v8_hvt_tb.txt @m.xm3.msky130_fd_pr__pfet_01v8_hvt[gm] i(VD3) @m.xm3.msky130_fd_pr__pfet_01v8_hvt[vth] @m.xm3.msky130_fd_pr__pfet_01v8_hvt[gds]
wrdata gmid_4_pfet_01v8_hvt_tb.txt @m.xm4.msky130_fd_pr__pfet_01v8_hvt[gm] i(VD4) @m.xm4.msky130_fd_pr__pfet_01v8_hvt[vth] @m.xm4.msky130_fd_pr__pfet_01v8_hvt[gds]
wrdata gmid_5_pfet_01v8_hvt_tb.txt @m.xm5.msky130_fd_pr__pfet_01v8_hvt[gm] i(VD5) @m.xm5.msky130_fd_pr__pfet_01v8_hvt[vth] @m.xm5.msky130_fd_pr__pfet_01v8_hvt[gds]
set appendwrite
op
remzerovec
write ~/.xschem/simulations/gmid_nmos_tb.raw
quit 0
.endc
"

}
C {devices/gnd.sym} 1110 -1010 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1010 -1260 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 710 -1410 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/gmid_nmos_tb.raw dc"
}
C {devices/ammeter.sym} 710 -1150 0 0 {name=VD1 savecurrent=true}
C {devices/ammeter.sym} 910 -1150 0 0 {name=VD2 savecurrent=true}
C {devices/lab_pin.sym} 820 -1090 0 0 {name=p2 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 690 -1090 0 0 {name=M1
L=0.15
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 890 -1090 0 0 {name=M2
L=0.3
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ammeter.sym} 1110 -1150 0 0 {name=VD3 savecurrent=true}
C {devices/lab_pin.sym} 1020 -1090 0 0 {name=p6 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 1090 -1090 0 0 {name=M3
L=0.5
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ammeter.sym} 1290 -1150 0 0 {name=VD4 savecurrent=true}
C {devices/lab_pin.sym} 1200 -1090 0 0 {name=p7 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 1270 -1090 0 0 {name=M4
L=1
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/ammeter.sym} 1460 -1150 0 0 {name=VD5 savecurrent=true}
C {devices/lab_pin.sym} 1370 -1090 0 0 {name=p8 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 1440 -1090 0 0 {name=M5
L=2
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/vsource.sym} 1100 -1350 0 0 {name=VDD value=0.9 savecurrent=false}
C {devices/lab_pin.sym} 1100 -1440 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1100 -1260 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 920 -1260 0 0 {name=p10 sig_type=std_logic lab=VG}
