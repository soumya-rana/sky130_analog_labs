v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } -490 265 0 0 0.4 0.4 {font=Monospace}
N 340 -110 340 40 {lab=ON}
N -20 -110 340 -110 {lab=ON}
N -20 15.625 50 15.625 {lab=ON}
N 260 59.375 340 59.375 {lab=OP}
N -15 190 340 190 {lab=OP}
N -20 190 -15 190 {lab=OP}
N 150 -65 150 -25 {lab=VDD}
N 150 120 150 160 {lab=VSS}
N -480 -115 -480 -55 {lab=VDD}
N -480 5 -480 65 {lab=VSS}
N -480 65 -480 100 {lab=VSS}
N -480 155 -480 200 {lab=GND}
N 25 -20 50 -20 {lab=INP}
N 25 115 50 115 {lab=INN}
N 30 50 50 50 {lab=CMREF}
N -370 95 -370 155 {lab=VSS}
N -370 -40 -370 35 {lab=CMREF}
N -220 95 -220 155 {lab=VSS}
N -260 15 -260 30 {lab=#net1}
N -260 30 -180 30 {lab=#net1}
N -180 15 -180 30 {lab=#net1}
N -220 30 -220 35 {lab=#net1}
N -260 -65 -260 -45 {lab=INP}
N 380 1.875 380 21.875 {lab=VSS}
N 380 1.875 405 1.875 {lab=VSS}
N 380 80 380 100 {lab=OUT}
N -20 -110 -20 15.625 {lab=ON}
N -180 -65 -180 -44.375 {lab=INN}
N -20 81.25 50 81.25 {lab=OP}
N -20 81.25 -20 190 {lab=OP}
N 260 39.375 340 39.375 {lab=ON}
N 340 59.375 340 190 {lab=OP}
N 380 100 405 100 {lab=OUT}
N 340 250 340 290 {lab=VSS}
N 340 -210 340 -170 {lab=VSS}
C {/foss/designs/sky130_analog_labs/designs/fully_differential_amplifier.sym} -190 50 0 0 {name=x1}
C {lab_wire.sym} 150 -65 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 160 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {vsource.sym} -480 -25 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} -480 -115 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -480 65 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {vsource.sym} -480 130 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -480 200 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 25 -20 0 0 {name=p4 sig_type=std_logic lab=INP}
C {lab_wire.sym} 25 115 0 0 {name=p5 sig_type=std_logic lab=INN}
C {lab_wire.sym} 310.625 39.375 0 0 {name=p6 sig_type=std_logic lab=ON}
C {lab_wire.sym} 311.25 59.375 0 0 {name=p7 sig_type=std_logic lab=OP}
C {vsource.sym} -370 65 0 0 {name=V3 value=1.2 savecurrent=false}
C {lab_wire.sym} -370 155 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -370 -40 0 0 {name=p9 sig_type=std_logic lab=CMREF}
C {lab_wire.sym} 30 50 0 0 {name=p10 sig_type=std_logic lab=CMREF}
C {vsource.sym} -220 65 0 0 {name=V4 value=1.1 savecurrent=false}
C {lab_wire.sym} -220 155 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {vsource.sym} -260 -15 0 1 {name=V5 value="DC 0 AC 0.5" savecurrent=false}
C {vsource.sym} -180 -15 0 0 {name=V6 value="DC 0 AC -0.5" savecurrent=false}
C {lab_wire.sym} -260 -65 0 0 {name=p12 sig_type=std_logic lab=INP}
C {lab_wire.sym} -180 -65 0 0 {name=p13 sig_type=std_logic lab=INN}
C {vcvs.sym} 380 51.25 2 1 {name=E1 value=1}
C {lab_wire.sym} 404.375 1.875 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 405 100 0 1 {name=p15 sig_type=std_logic lab=OUT}
C {devices/code.sym} -500 360 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.corners.lib.spice fslh
"
spice_ignore=false
}
C {devices/code_shown.sym} 580 -400 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option savecurrents
.control
save all
ac dec 20 1 1e9
** remove zero length vectors to prevent write errors
remzerovec
wrdata ~/.xschem/simulations/full_diff_amp_loop_gain.txt vdb(OUT) 180*vp(OUT)/3.14159265
plot vdb(OUT)
plot 180*vp(OUT)/3.14159265
.endc"

}
C {capa-2.sym} 340 220 0 0 {name=C1
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 340 290 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {capa-2.sym} 340 -140 2 0 {name=C2
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 340 -210 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {code.sym} -330 360 0 0 {name=AC_MEAS only_toplevel=false value="
.control
begin
    let x1 = v(OUT)
    let x = db(x1[0])-3
    let y = db(x1)
    let l = length(y)-1
    let lpv = 0
    let tol = 0
    set units=degrees
    set do_again = 1

    while ($do_again eq 1)
        while (lpv lt l)
            let lpv = lpv+1
            if (abs(y[lpv]-x) lt tol)
                let threedB = mag(frequency[lpv])
                set do_again = 0
            end
        end
        if ($do_again eq 1)
            let tol = tol+0.1
            let lpv = 0
        end
    end
    let tol = 0
    set do_again = 1
    while ($do_again eq 1)
        while (lpv lt l)
            let lpv = lpv+1
            if (abs(y[lpv]) lt tol)
                let UGB = mag(frequency[lpv])
                let PM = 180 + ph(x1[lpv])
                set do_again = 0
            end
        end
        if ($do_again eq 1)
            let tol = tol+0.1
            let lpv = 0
        end
    end

    let DC_Gain = db(x1[0])
    print DC_Gain
    print threedB
    print UGB
    print PM

    label BOTTOM
    unlet x1 x y l lpv threedB UGB DC_Gain PM tol
    unset do_again
end
op
remzerovec
write ~/.xschem/simulations/full_diff_amp_loop_gain.raw
.endc
"}
