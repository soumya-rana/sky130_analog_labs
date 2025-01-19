v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 450 -125 0 0 0.4 0.4 {font=Monospace}
N 330 -550 430 -550 {lab=VUPB}
N 290 -610 290 -580 {lab=VDD}
N 290 -610 470 -610 {lab=VDD}
N 470 -610 470 -580 {lab=VDD}
N 470 -520 470 -370 {lab=VUPB}
N 290 -520 290 -370 {lab=VLOB}
N 290 -310 290 -210 {lab=VSS}
N 290 -210 470 -210 {lab=VSS}
N 330 -340 430 -340 {lab=VLOB}
N 380 -390 380 -340 {lab=VLOB}
N 290 -390 380 -390 {lab=VLOB}
N 380 -550 380 -490 {lab=VUPB}
N 380 -490 470 -490 {lab=VUPB}
N 470 -310 470 -290 {lab=#net1}
N 470 -230 470 -210 {lab=VSS}
N 440 -260 450 -260 {lab=VSS}
N 440 -260 440 -210 {lab=VSS}
N 270 -340 290 -340 {lab=VSS}
N 270 -340 270 -210 {lab=VSS}
N 270 -210 290 -210 {lab=VSS}
N 470 -340 490 -340 {lab=VSS}
N 490 -340 490 -210 {lab=VSS}
N 470 -210 490 -210 {lab=VSS}
N 430 -550 790 -550 {lab=VUPB}
N 470 -610 830 -610 {lab=VDD}
N 830 -610 830 -580 {lab=VDD}
N 490 -210 830 -210 {lab=VSS}
N 830 -320 830 -210 {lab=VSS}
N 900 -260 900 -210 {lab=VSS}
N 830 -210 900 -210 {lab=VSS}
N 900 -210 930 -210 {lab=VSS}
N 930 -230 930 -210 {lab=VSS}
N 900 -260 910 -260 {lab=VSS}
N 930 -350 930 -290 {lab=VBE}
N 870 -340 930 -340 {lab=VBE}
N 930 -610 930 -510 {lab=VDD}
N 830 -610 930 -610 {lab=VDD}
N 930 -450 930 -350 {lab=VBE}
N 750 -480 890 -480 {lab=#net2}
N 710 -610 710 -510 {lab=VDD}
N 750 -400 830 -400 {lab=#net3}
N 710 -370 710 -210 {lab=VSS}
N 710 -450 710 -430 {lab=#net2}
N 710 -440 780 -440 {lab=#net2}
N 780 -480 780 -440 {lab=#net2}
N 790 -550 1020 -550 {lab=VUPB}
N 1060 -610 1060 -580 {lab=VDD}
N 930 -610 1060 -610 {lab=VDD}
N 1030 -260 1030 -210 {lab=VSS}
N 1030 -210 1060 -210 {lab=VSS}
N 1060 -230 1060 -210 {lab=VSS}
N 1030 -260 1040 -260 {lab=VSS}
N 1060 -350 1060 -290 {lab=VREF}
N 1060 -520 1060 -350 {lab=VREF}
N 930 -210 1030 -210 {lab=VSS}
N 890 -480 1140 -480 {lab=#net2}
N 1180 -610 1180 -510 {lab=VDD}
N 1060 -610 1180 -610 {lab=VDD}
N 1180 -450 1180 -390 {lab=VREF}
N 1060 -390 1180 -390 {lab=VREF}
N 690 -640 710 -640 {lab=VDD}
N 710 -640 710 -610 {lab=VDD}
N 710 -210 710 -175 {lab=VSS}
N 685 -175 710 -175 {lab=VSS}
N 350 -70 350 -10 {lab=VDD}
N 350 50 350 130 {lab=VSS}
N 830 -520 830 -400 {lab=#net3}
N 830 -405 830 -370 {lab=#net3}
N 810 -340 830 -340 {lab=VSS}
N 810 -340 810 -210 {lab=VSS}
N 250 50 250 110 {
lab=GND}
N 250 -65 250 -10 {lab=VSS}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 450 -550 0 0 {name=M1
W=20
L=4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 310 -550 0 1 {name=M2
W=20
L=4
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
C {sky130_fd_pr/npn_05v5.sym} 450 -340 0 0 {name=Q1
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 310 -340 0 1 {name=Q2
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 470 -260 0 0 {name=R1
L=230
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 810 -550 0 0 {name=M3
W=20
L=4
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
C {sky130_fd_pr/npn_05v5.sym} 850 -340 0 1 {name=Q3
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 930 -260 0 0 {name=R2
L=500
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 910 -480 0 0 {name=M4
W=20
L=4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 730 -480 0 1 {name=M5
W=20
L=4
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
C {sky130_fd_pr/nfet3_01v8.sym} 730 -400 0 1 {name=M6
W=4
L=4
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1040 -550 0 0 {name=M7
W=20
L=4
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
C {sky130_fd_pr/res_high_po_1p41.sym} 1060 -260 0 0 {name=R3
L=100
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1160 -480 0 0 {name=M8
W=1
L=0.35
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
C {ipin.sym} 690 -640 0 0 {name=p1 lab=VDD}
C {ipin.sym} 685 -175 0 0 {name=p2 lab=VSS}
C {lab_wire.sym} 600 -550 0 0 {name=p3 sig_type=std_logic lab=VUPB}
C {lab_wire.sym} 360 -390 0 0 {name=p4 sig_type=std_logic lab=VLOB}
C {lab_wire.sym} 1130 -390 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {vsource.sym} 350 20 0 0 {name=V1 value=1.65 savecurrent=true}
C {lab_wire.sym} 350 -70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 130 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 700 -120 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option savecurrents
.control
save all
dc VGS 0.05 1.8 0.05 
** remove zero length vectors to prevent write errors
remzerovec
write ~/.xschem/simulations/parallel_bandgap.raw
set appendwrite
op
remzerovec
write ~/.xschem/simulations/parallel_bandgap.raw
quit 0
.endc
"

}
C {devices/code.sym} 400 50 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/launcher.sym} 510 -35 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/parallel_bandgap.raw dc"
}
C {devices/vsource.sym} 250 20 0 0 {name=VS value=0 savecurrent=false}
C {devices/gnd.sym} 250 110 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 250 -65 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 930 -365 0 0 {name=p9 sig_type=std_logic lab=VBE}
