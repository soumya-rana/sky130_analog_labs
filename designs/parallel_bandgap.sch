v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -30 50 -30 {lab=#net1}
N -90 -90 -90 -60 {lab=VDD}
N -90 -90 90 -90 {lab=VDD}
N 90 -90 90 -60 {lab=VDD}
N 90 -0 90 150 {lab=#net1}
N -90 -0 -90 150 {lab=#net2}
N -90 210 -90 310 {lab=VDD}
N -90 310 90 310 {lab=VDD}
N -50 180 50 180 {lab=#net2}
N -0 130 0 180 {lab=#net2}
N -90 130 0 130 {lab=#net2}
N 0 -30 0 30 {lab=#net1}
N 0 30 90 30 {lab=#net1}
N 90 210 90 230 {lab=#net3}
N 90 290 90 310 {lab=VDD}
N 60 260 70 260 {lab=VDD}
N 60 260 60 310 {lab=VDD}
N -110 180 -90 180 {lab=VDD}
N -110 180 -110 310 {lab=VDD}
N -110 310 -90 310 {lab=VDD}
N 90 180 110 180 {lab=VDD}
N 110 180 110 310 {lab=VDD}
N 90 310 110 310 {lab=VDD}
N 50 -30 410 -30 {lab=#net1}
N 90 -90 450 -90 {lab=VDD}
N 450 -90 450 -60 {lab=VDD}
N 450 -0 450 140 {lab=#net4}
N 110 310 450 310 {lab=VDD}
N 450 200 450 310 {lab=VDD}
N 430 170 450 170 {lab=VDD}
N 430 170 430 310 {lab=VDD}
N 520 260 520 310 {lab=VDD}
N 450 310 520 310 {lab=VDD}
N 520 310 550 310 {lab=VDD}
N 550 290 550 310 {lab=VDD}
N 520 260 530 260 {lab=VDD}
N 550 170 550 230 {lab=#net5}
N 490 170 550 170 {lab=#net5}
N 550 -90 550 10 {lab=VDD}
N 450 -90 550 -90 {lab=VDD}
N 550 70 550 170 {lab=#net5}
N 370 40 510 40 {lab=#net6}
N 330 -90 330 10 {lab=VDD}
N 370 120 450 120 {lab=#net4}
N 330 150 330 310 {lab=VDD}
N 330 70 330 90 {lab=#net6}
N 330 80 400 80 {lab=#net6}
N 400 40 400 80 {lab=#net6}
N 410 -30 640 -30 {lab=#net1}
N 680 -90 680 -60 {lab=VDD}
N 550 -90 680 -90 {lab=VDD}
N 650 260 650 310 {lab=VDD}
N 650 310 680 310 {lab=VDD}
N 680 290 680 310 {lab=VDD}
N 650 260 660 260 {lab=VDD}
N 680 170 680 230 {lab=#net7}
N 680 -0 680 170 {lab=#net7}
N 550 310 650 310 {lab=VDD}
N 510 40 760 40 {lab=#net6}
N 800 -90 800 10 {lab=VDD}
N 680 -90 800 -90 {lab=VDD}
N 800 70 800 130 {lab=#net7}
N 680 130 800 130 {lab=#net7}
N 310 -120 330 -120 {lab=VDD}
N 330 -120 330 -90 {lab=VDD}
N 330 310 330 345 {lab=VDD}
N 305 345 330 345 {lab=VDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 70 -30 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -70 -30 0 1 {name=M2
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
C {sky130_fd_pr/npn_05v5.sym} 70 180 0 0 {name=Q1
model=npn_05v5_w1p00l2p00 m=8
spiceprefix=X
}
C {sky130_fd_pr/npn_05v5.sym} -70 180 0 1 {name=Q2
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 90 260 0 0 {name=R1
L=1.41
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 430 -30 0 0 {name=M3
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
C {sky130_fd_pr/npn_05v5.sym} 470 170 0 1 {name=Q3
model=npn_05v5_w1p00l2p00 m=1
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 550 260 0 0 {name=R2
L=1.41
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 530 40 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 350 40 0 1 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 350 120 0 1 {name=M6
W=1
L=0.15
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 660 -30 0 0 {name=M7
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
C {sky130_fd_pr/res_high_po_1p41.sym} 680 260 0 0 {name=R3
L=1.41
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 780 40 0 0 {name=M8
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
C {ipin.sym} 310 -120 0 0 {name=p1 lab=VDD}
C {ipin.sym} 305 345 0 0 {name=p2 lab=VSS}
