v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 80 30 130 {lab=GND}
N 130 -100 210 -100 {lab=VUPB}
N 130 -60 210 -60 {lab=VREF}
N 130 -20 210 -20 {lab=#net1}
N 130 20 210 20 {lab=#net1}
N 210 -20 210 20 {lab=#net1}
N 30 -210 30 -160 {lab=VDD}
N -290 -130 -290 -70 {lab=VDD}
N -290 -10 -290 50 {lab=GND}
C {parallel_bandgap.sym} -50 60 0 0 {name=bandgap}
C {gnd.sym} 30 130 0 0 {name=l1 lab=GND}
C {vsource.sym} -290 -40 0 0 {name=V1 value="pwl(0 0 500n 0 501n 3.3)" savecurrent=true}
C {gnd.sym} -290 50 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -290 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 30 -210 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {noconn.sym} 210 -100 0 1 {name=l3}
C {noconn.sym} 210 -60 0 1 {name=l4}
C {lab_wire.sym} 190 -100 0 0 {name=p3 sig_type=std_logic lab=VUPB}
C {lab_wire.sym} 190 -60 0 0 {name=p4 sig_type=std_logic lab=VREF}
