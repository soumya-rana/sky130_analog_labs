v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 10 -435 0 0 0.4 0.4 {font=Monospace}
N 710 -240 710 -180 {
lab=GND}
N 710 -355 710 -300 {lab=VSS}
N 810 -240 810 -180 {lab=VSS}
N 810 -360 810 -300 {lab=VDD}
N 400 -400 500 -400 {lab=VUPB}
N 360 -460 360 -430 {lab=VDD}
N 360 -460 540 -460 {lab=VDD}
N 540 -460 540 -430 {lab=VDD}
N 360 -160 360 -60 {lab=VSS}
N 360 -60 540 -60 {lab=VSS}
N 400 -190 500 -190 {lab=VBE}
N 450 -240 450 -190 {lab=VBE}
N 360 -240 450 -240 {lab=VBE}
N 450 -400 450 -340 {lab=VUPB}
N 450 -340 540 -340 {lab=VUPB}
N 540 -160 540 -140 {lab=VE}
N 540 -80 540 -60 {lab=VSS}
N 510 -110 520 -110 {lab=VSS}
N 510 -110 510 -60 {lab=VSS}
N 340 -190 360 -190 {lab=VSS}
N 340 -190 340 -60 {lab=VSS}
N 340 -60 360 -60 {lab=VSS}
N 540 -190 560 -190 {lab=VSS}
N 560 -190 560 -60 {lab=VSS}
N 540 -60 560 -60 {lab=VSS}
N 540 -370 540 -340 {lab=VUPB}
N 540 -280 540 -220 {lab=#net1}
N 360 -370 360 -340 {lab=#net2}
N 360 -280 360 -220 {lab=VBE}
C {vsource.sym} 810 -270 0 0 {name=VD value=1.65 savecurrent=true}
C {lab_wire.sym} 810 -360 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 810 -180 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 710 -270 0 0 {name=VS value=0 savecurrent=false}
C {devices/gnd.sym} 710 -180 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 710 -355 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {vdd.sym} 450 -460 0 0 {name=l2 lab=VDD}
C {devices/code.sym} 80 -330 0 0 {name=TempSweep only_toplevel=false value="
** Analysis Requests **
** Outputs Requests **
.option wnflag=1
.option savecurrents
.control
save all
dc temp -40 125 5
remzerovec
wrdata ~/.xschem/simulations/temp_char_ptat_ctat.txt i(V0) i(V1) v(VBE) v(VUPB)
*plot V(VBE), V(VUPB)
plot V(VE)/I(V1)
*plot I(V0), I(V1)
quit 0
.endc
"}
C {devices/code.sym} 80 -180 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.corners.spice sshh
"
spice_ignore=false}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 520 -400 0 0 {name=M1
W=20
L=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 380 -400 0 1 {name=M2
W=20
L=8
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 520 -190 0 0 {name=Q1
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 380 -190 0 1 {name=Q3
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {lab_wire.sym} 430 -240 0 0 {name=p4 sig_type=std_logic lab=VBE}
C {lab_wire.sym} 460 -60 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -400 0 0 {name=p2 sig_type=std_logic lab=VUPB}
C {devices/vsource.sym} 360 -310 0 0 {name=V0 value=0 savecurrent=true}
C {devices/vsource.sym} 540 -310 0 0 {name=V1 value=0 savecurrent=true}
C {lab_wire.sym} 540 -140 0 0 {name=p3 sig_type=std_logic lab=VE}
C {sky130_fd_pr/res_high_po_1p41.sym} 540 -110 0 0 {name=R1
L=230
model=res_high_po_1p41
spiceprefix=X
mult=1}
