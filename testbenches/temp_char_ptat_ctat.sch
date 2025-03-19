v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 640 -295 0 0 0.4 0.4 {font=Monospace}
N 700 -100 700 -40 {
lab=GND}
N 700 -215 700 -160 {lab=VSS}
N 800 -100 800 -40 {lab=VSS}
N 800 -220 800 -160 {lab=VDD}
N 400 -570 500 -570 {lab=VUPB}
N 360 -630 360 -600 {lab=VDD}
N 360 -630 540 -630 {lab=VDD}
N 540 -630 540 -600 {lab=VDD}
N 360 0 540 0 {lab=VSS}
N 540 -100 540 -80 {lab=#net1}
N 540 -20 540 0 {lab=VSS}
N 510 -50 520 -50 {lab=VSS}
N 510 -50 510 0 {lab=VSS}
N 340 -130 360 -130 {lab=VSS}
N 340 -130 340 0 {lab=VSS}
N 340 0 360 0 {lab=VSS}
N 540 -130 560 -130 {lab=VSS}
N 560 -130 560 0 {lab=VSS}
N 540 0 560 0 {lab=VSS}
N 360 -500 360 -480 {lab=VSCAS}
N 400 -450 500 -450 {lab=VPCAS}
N 540 -500 540 -480 {lab=#net2}
N 540 -420 540 -400 {lab=VUPB}
N 540 -540 540 -500 {lab=#net2}
N 360 -540 360 -500 {lab=VSCAS}
N 480 -570 480 -410 {lab=VUPB}
N 480 -410 540 -410 {lab=VUPB}
N 360 -180 360 -160 {lab=#net3}
N 540 -180 540 -160 {lab=#net4}
N 400 -210 430 -210 {lab=VBE}
N 400 -130 430 -130 {lab=VBE}
N 430 -210 430 -130 {lab=VBE}
N 470 -130 500 -130 {lab=VBE}
N 470 -210 470 -130 {lab=VBE}
N 470 -210 500 -210 {lab=VBE}
N 460 -330 540 -330 {lab=VPCAS}
N 430 -130 470 -130 {lab=VBE}
N 560 -370 560 -130 {lab=VSS}
N 360 -100 360 -80 {lab=VSS}
N 360 -20 360 0 {lab=VSS}
N 460 -450 460 -330 {lab=VPCAS}
N 540 -340 540 -320 {lab=VPCAS}
N 540 -260 540 -240 {lab=#net5}
N 360 -260 360 -240 {lab=#net6}
N 360 -80 360 -20 {lab=VSS}
N 430 -230 430 -210 {lab=VBE}
N 360 -260 390 -260 {lab=#net6}
N 430 -630 430 -290 {lab=VDD}
N 360 -420 360 -320 {lab=VDCAS}
C {vsource.sym} 800 -130 0 0 {name=VD value=3.3 savecurrent=true}
C {lab_wire.sym} 800 -220 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 800 -40 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 700 -130 0 0 {name=VS value=0 savecurrent=false}
C {devices/gnd.sym} 700 -40 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 700 -215 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code.sym} 670 -580 0 0 {name=TempSweep only_toplevel=false value="
** Analysis Requests **
** Outputs Requests **
.option wnflag=1
.option savecurrents
.control
save all
dc temp -40 125 5 VD 1.65 1.8 0.075
remzerovec
wrdata ~/.xschem/simulations/temp_char_ptat_ctat.txt i(V0) i(V1)/i(V0) v(VBE) v(VUPB)
*plot V(VBE), V(VUPB)
plot V(VSCAS) - V(VDCAS)
plot I(V1)/I(V0)
plot I(V0), I(V1)
.endc
"}
C {devices/vsource.sym} 360 -290 0 0 {name=V0 value=0 savecurrent=true}
C {devices/vsource.sym} 540 -290 0 0 {name=V1 value=0 savecurrent=true}
C {lab_wire.sym} 460 -130 0 0 {name=p4 sig_type=std_logic lab=VBE}
C {devices/code.sym} 670 -430 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.corners.lib.spice tt
"
spice_ignore=false
}
C {lab_wire.sym} 360 -500 0 0 {name=p9 sig_type=std_logic lab=VSCAS}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 520 -570 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 380 -570 0 1 {name=M6
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
C {sky130_fd_pr/npn_05v5.sym} 520 -130 0 0 {name=Q2
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 380 -130 0 1 {name=Q4
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 540 -50 0 0 {name=R3
L=260
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 520 -450 0 0 {name=M7
W=50
L=8
body=VDD
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 380 -450 0 1 {name=M8
W=50
L=8
body=VDD
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} 450 -570 0 0 {name=p10 sig_type=std_logic lab=VUPB}
C {lab_wire.sym} 450 -450 0 0 {name=p11 sig_type=std_logic lab=VPCAS}
C {sky130_fd_pr/res_high_po_1p41.sym} 540 -370 0 1 {name=R7
L=800
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet3_05v0_nvt.sym} 380 -210 0 1 {name=M16
W=10
L=2
body=VSS
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_05v0_nvt.sym} 520 -210 0 0 {name=M18
W=10
L=2
body=VSS
nf=1
mult=6
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_05v0_nvt.sym} 410 -260 0 0 {name=M19
W=10
L=2
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {lab_wire.sym} 460 0 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -400 0 0 {name=p13 sig_type=std_logic lab=VDCAS}
C {lab_wire.sym} 430 -630 0 0 {name=p1 sig_type=std_logic lab=VDD}
