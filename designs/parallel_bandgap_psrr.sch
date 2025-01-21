v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 450 -125 0 0 0.4 0.4 {font=Monospace}
N 210 -720 310 -720 {lab=VUPB}
N 170 -780 170 -750 {lab=VDD}
N 170 -780 350 -780 {lab=VDD}
N 350 -780 350 -750 {lab=VDD}
N 170 -340 170 -240 {lab=VSS}
N 170 -240 350 -240 {lab=VSS}
N 210 -370 310 -370 {lab=VLOB}
N 260 -420 260 -370 {lab=VLOB}
N 170 -420 260 -420 {lab=VLOB}
N 350 -340 350 -320 {lab=#net1}
N 350 -260 350 -240 {lab=VSS}
N 320 -290 330 -290 {lab=VSS}
N 320 -290 320 -240 {lab=VSS}
N 150 -370 170 -370 {lab=VSS}
N 150 -370 150 -240 {lab=VSS}
N 150 -240 170 -240 {lab=VSS}
N 350 -370 370 -370 {lab=VSS}
N 370 -370 370 -240 {lab=VSS}
N 350 -240 370 -240 {lab=VSS}
N 350 -780 710 -780 {lab=VDD}
N 370 -240 710 -240 {lab=VSS}
N 710 -350 710 -240 {lab=VSS}
N 780 -290 780 -240 {lab=VSS}
N 710 -240 780 -240 {lab=VSS}
N 780 -240 810 -240 {lab=VSS}
N 810 -260 810 -240 {lab=VSS}
N 780 -290 790 -290 {lab=VSS}
N 810 -380 810 -320 {lab=VBE}
N 750 -370 810 -370 {lab=VBE}
N 710 -780 810 -780 {lab=VDD}
N 810 -780 940 -780 {lab=VDD}
N 910 -290 910 -240 {lab=VSS}
N 910 -240 940 -240 {lab=VSS}
N 940 -260 940 -240 {lab=VSS}
N 910 -290 920 -290 {lab=VSS}
N 810 -240 910 -240 {lab=VSS}
N 940 -780 1060 -780 {lab=VDD}
N 940 -420 1060 -420 {lab=VREF}
N 570 -810 590 -810 {lab=VDD}
N 590 -810 590 -780 {lab=VDD}
N 590 -240 590 -205 {lab=VSS}
N 565 -205 590 -205 {lab=VSS}
N 690 -370 710 -370 {lab=VSS}
N 690 -370 690 -240 {lab=VSS}
N 170 -460 170 -400 {lab=VLOB}
N 810 -400 810 -370 {lab=VBE}
N 810 -480 810 -460 {lab=#net2}
N 170 -650 170 -630 {lab=#net3}
N 210 -600 310 -600 {lab=VPCAS}
N 350 -650 350 -630 {lab=#net4}
N 350 -570 350 -550 {lab=VUPB}
N 280 -560 350 -560 {lab=VUPB}
N 280 -680 280 -560 {lab=VUPB}
N 350 -500 350 -460 {lab=VPCAS}
N 370 -520 370 -370 {lab=VSS}
N 250 -480 350 -480 {lab=VPCAS}
N 250 -600 250 -480 {lab=VPCAS}
N 170 -570 170 -520 {lab=#net5}
N 710 -780 710 -750 {lab=VDD}
N 940 -780 940 -750 {lab=VDD}
N 710 -570 710 -400 {lab=#net6}
N 630 -410 710 -410 {lab=#net6}
N 940 -570 940 -320 {lab=VREF}
N 310 -720 670 -720 {lab=VUPB}
N 310 -600 670 -600 {lab=VPCAS}
N 670 -720 900 -720 {lab=VUPB}
N 670 -600 900 -600 {lab=VPCAS}
N 350 -690 350 -650 {lab=#net4}
N 280 -720 280 -680 {lab=VUPB}
N 170 -690 170 -650 {lab=#net3}
N 630 -650 770 -650 {lab=VCBIAS}
N 590 -780 590 -680 {lab=VDD}
N 590 -380 590 -240 {lab=VSS}
N 590 -530 590 -520 {lab=VCBIAS}
N 590 -460 590 -440 {lab=VCCAS}
N 550 -490 570 -490 {lab=VSS}
N 550 -490 550 -240 {lab=VSS}
N 590 -620 590 -590 {lab=#net7}
N 810 -780 810 -680 {lab=VDD}
N 810 -620 810 -590 {lab=#net8}
N 810 -530 810 -480 {lab=#net2}
N 630 -560 770 -560 {lab=VCCAS}
N 590 -530 650 -530 {lab=VCBIAS}
N 650 -650 650 -530 {lab=VCBIAS}
N 680 -560 680 -450 {lab=VCCAS}
N 590 -450 680 -450 {lab=VCCAS}
N 1060 -780 1060 -680 {lab=VDD}
N 1060 -620 1060 -590 {lab=#net9}
N 770 -560 1020 -560 {lab=VCCAS}
N 1060 -530 1060 -420 {lab=VREF}
N 940 -690 940 -630 {lab=#net10}
N 770 -650 1020 -650 {lab=VCBIAS}
N 710 -690 710 -630 {lab=#net11}
N 1210 -350 1210 -290 {
lab=GND}
N 1210 -465 1210 -410 {lab=VSS}
C {devices/code_shown.sym} 710 -120 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
* defining VDD supply with ac 1 component (no component in xschem)
VDD VDD VSS dc 1.65 ac 1
.option wnflag=1 
.option savecurrents
.control
save all
ac dec 20 1 1e9
** remove zero length vectors to prevent write errors
remzerovec
write ~/.xschem/simulations/parallel_bandgap_psrr.raw 
wrdata ~/.xschem/simulations/parallel_bandgap_psrr.txt vdb(VREF)
plot vdb(VREF)
plot 180*vp(VREF)/3.14159265
.meas ac V(VUPB) at freq = 1e3
set appendwrite
.op
write ~/.xschem/simulations/parallel_bandgap_psrr.raw
.endc
"

}
C {devices/code.sym} 400 50 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.corners.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} 510 -35 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/parallel_bandgap.raw dc"
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 330 -720 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 190 -720 0 1 {name=M2
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
C {sky130_fd_pr/npn_05v5.sym} 330 -370 0 0 {name=Q1
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} 190 -370 0 1 {name=Q2
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 350 -290 0 0 {name=R1
L=260
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/npn_05v5.sym} 730 -370 0 1 {name=Q3
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 810 -290 0 0 {name=R2
L=2400
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 790 -560 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 610 -560 0 1 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 610 -410 0 1 {name=M6
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
C {sky130_fd_pr/res_high_po_1p41.sym} 940 -290 0 0 {name=R3
L=2730
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1040 -560 0 0 {name=M8
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
C {ipin.sym} 570 -810 0 0 {name=p1 lab=VDD}
C {ipin.sym} 565 -205 0 0 {name=p2 lab=VSS}
C {lab_wire.sym} 240 -420 0 0 {name=p4 sig_type=std_logic lab=VLOB}
C {lab_wire.sym} 1010 -420 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {lab_wire.sym} 810 -395 0 0 {name=p9 sig_type=std_logic lab=VBE}
C {devices/vsource.sym} 170 -490 0 0 {name=V0 value=0 savecurrent=true}
C {devices/vsource.sym} 810 -430 0 0 {name=V2 value=0 savecurrent=true}
C {devices/vsource.sym} 350 -430 0 0 {name=V1 value=0 savecurrent=true}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 330 -600 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 190 -600 0 1 {name=M7
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
C {sky130_fd_pr/res_high_po_1p41.sym} 350 -520 0 1 {name=R4
L=700
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 690 -720 0 0 {name=M9
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 690 -600 0 0 {name=M10
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 920 -720 0 0 {name=M11
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 920 -600 0 0 {name=M12
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 610 -650 0 1 {name=M13
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 790 -650 0 0 {name=M14
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
C {sky130_fd_pr/res_high_po_1p41.sym} 590 -490 0 0 {name=R5
L=800
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1040 -650 0 0 {name=M15
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
C {lab_wire.sym} 260 -720 0 0 {name=p3 sig_type=std_logic lab=VUPB}
C {lab_wire.sym} 260 -600 0 0 {name=p10 sig_type=std_logic lab=VPCAS}
C {lab_wire.sym} 1010 -560 0 0 {name=p11 sig_type=std_logic lab=VCCAS}
C {lab_wire.sym} 1000 -650 0 0 {name=p12 sig_type=std_logic lab=VCBIAS}
C {devices/vsource.sym} 1210 -380 0 0 {name=VS value=0 savecurrent=false}
C {devices/gnd.sym} 1210 -290 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 1210 -465 0 0 {name=p8 sig_type=std_logic lab=VSS}
