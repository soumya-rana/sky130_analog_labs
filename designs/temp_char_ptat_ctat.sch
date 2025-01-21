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
N 360 -30 360 70 {lab=VSS}
N 360 70 540 70 {lab=VSS}
N 540 -30 540 -10 {lab=VE}
N 540 50 540 70 {lab=VSS}
N 510 20 520 20 {lab=VSS}
N 510 20 510 70 {lab=VSS}
N 340 -60 360 -60 {lab=VSS}
N 340 -60 340 70 {lab=VSS}
N 340 70 360 70 {lab=VSS}
N 540 -60 560 -60 {lab=VSS}
N 560 -60 560 70 {lab=VSS}
N 540 70 560 70 {lab=VSS}
N 400 -60 500 -60 {lab=VBE}
N 540 -370 540 -340 {lab=#net1}
N 400 -310 500 -310 {lab=VCAS}
N 360 -370 360 -340 {lab=#net2}
N 540 -280 540 -250 {lab=VUPB}
N 540 -190 540 -170 {lab=VCAS}
N 540 -110 540 -90 {lab=#net3}
N 360 -110 360 -90 {lab=VBE}
N 360 -100 420 -100 {lab=VBE}
N 420 -100 420 -60 {lab=VBE}
N 360 -280 360 -170 {lab=#net4}
N 480 -270 540 -270 {lab=VUPB}
N 480 -400 480 -270 {lab=VUPB}
N 450 -180 540 -180 {lab=VCAS}
N 450 -310 450 -180 {lab=VCAS}
N 560 -220 560 -60 {lab=VSS}
C {vsource.sym} 810 -270 0 0 {name=VD value=1.65 savecurrent=true}
C {lab_wire.sym} 810 -360 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 810 -180 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 710 -270 0 0 {name=VS value=0 savecurrent=false}
C {devices/gnd.sym} 710 -180 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 710 -355 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {vdd.sym} 450 -460 0 0 {name=l2 lab=VDD}
C {devices/code.sym} 80 -320 0 0 {name=TempSweep only_toplevel=false value="
** Analysis Requests **
** Outputs Requests **
.option wnflag=1
.option savecurrents
.control
save all
dc temp -40 125 5 VD 1.65 3.3 0.825
remzerovec
wrdata ~/.xschem/simulations/temp_char_ptat_ctat.txt i(V0) i(V1)/i(V0) v(VBE) v(VUPB)
*plot V(VBE), V(VUPB)
plot V(VUPB)
plot I(V1)/I(V0)
plot I(V0), I(V1)
.endc
"}
C {devices/code.sym} 80 -180 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.corners.spice ssll
"
spice_ignore=false}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 520 -400 0 0 {name=M1
W=25
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
W=25
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
C {sky130_fd_pr/npn_05v5.sym} 520 -60 0 0 {name=Q1
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 380 -60 0 1 {name=Q3
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {lab_wire.sym} 460 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -400 0 0 {name=p2 sig_type=std_logic lab=VUPB}
C {devices/vsource.sym} 360 -140 0 0 {name=V0 value=0 savecurrent=true}
C {lab_wire.sym} 540 -10 0 0 {name=p3 sig_type=std_logic lab=VE}
C {sky130_fd_pr/res_high_po_1p41.sym} 540 20 0 0 {name=R1
L=280
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 380 -310 0 1 {name=M4
W=50
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 520 -310 0 0 {name=M5
W=50
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
C {sky130_fd_pr/res_high_po_1p41.sym} 540 -220 0 1 {name=R2
L=1000
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/vsource.sym} 540 -140 0 0 {name=V1 value=0 savecurrent=true}
C {lab_wire.sym} 450 -310 0 0 {name=p5 sig_type=std_logic lab=VCAS}
C {lab_wire.sym} 470 -60 0 0 {name=p4 sig_type=std_logic lab=VBE}
