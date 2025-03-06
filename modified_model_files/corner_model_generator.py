def preamble(fID, corner):
    if (corner.endswith("prmm")):
        fID.write("* "+corner[0:4]+" corner with process and mismatch \n\n")
        fID.write(".lib "+corner+"\n")
        fID.write(".param MC_MM_SWITCH=1\n")
        fID.write(".param MC_PR_SWITCH=1\n")
        fID.write(".param corner_factor=1\n")
        fID.write(".param process_mc_factor=1\n")
        fID.write(".param mismatch_factor=1\n\n")
        fID.write(".include continuous/models_global.spice\n")
        fID.write(".include continuous/models_fet.spice\n")
        fID.write(".include continuous/models_bjt.spice\n")
        fID.write(".include continuous/models_diodes.spice\n")
        fID.write(".include continuous/models_resistors.spice\n")
        fID.write(".include continuous/models_capacitors.spice\n\n")
    elif (corner.endswith("mm")):
        fID.write("* "+corner[0:4]+" corner with mismatch \n\n")
        fID.write(".lib "+corner+"\n")
        fID.write(".param MC_MM_SWITCH=1\n")
        fID.write(".param MC_PR_SWITCH=0\n")
        fID.write(".param corner_factor=1\n")
        fID.write(".param process_mc_factor=1\n")
        fID.write(".param mismatch_factor=1\n\n")
        fID.write(".include continuous/models_global.spice\n")
        fID.write(".include continuous/models_fet.spice\n")
        fID.write(".include continuous/models_bjt.spice\n")
        fID.write(".include continuous/models_diodes.spice\n")
        fID.write(".include continuous/models_resistors.spice\n")
        fID.write(".include continuous/models_capacitors.spice\n\n")
    else:
        fID.write("* "+corner[0:4]+" corner \n\n")
        fID.write(".lib "+corner+"\n")
        fID.write(".param MC_MM_SWITCH=0\n")
        fID.write(".param MC_PR_SWITCH=0\n")
        fID.write(".param corner_factor=1\n")
        fID.write(".param process_mc_factor=1\n")
        fID.write(".param mismatch_factor=1\n\n")
        fID.write(".include continuous/models_global.spice\n")
        fID.write(".include continuous/models_fet.spice\n")
        fID.write(".include continuous/models_bjt.spice\n")
        fID.write(".include continuous/models_diodes.spice\n")
        fID.write(".include continuous/models_resistors.spice\n")
        fID.write(".include continuous/models_capacitors.spice\n\n")

def corner_model(fID, corner):
    fet = corner[0:2]
    res = "low" if corner[2] == "l" else "high"
    cap = "low" if corner[3] == "l" else "high"
    fID.write(".include continuous/parameters_fet_"+fet+".spice\n")
    fID.write(".include continuous/parameters_res_"+res+".spice\n")
    fID.write(".include continuous/parameters_cap_"+cap+".spice\n\n")
    fID.write(".include corners/"+fet+".spice\n")
    fID.write(".include corners/"+fet+"/specialized_cells.spice\n")
    fID.write(".include rescap/res_"+res+"__cap_"+cap+".spice\n")
    fID.write(".include rescap/res_"+res+"__cap_"+cap+"__lin.spice\n")
    fID.write(".endl "+corner+"\n\n")

if __name__ == "__main__":
    fID = open("/foss/pdks/sky130A/libs.tech/combined/sky130.corners.lib.spice","w")
    corners = []
    pmos = ["f", "s"]
    nmos = ["f", "s"]
    res = ["l", "h"]
    cap = ["l", "h"]
    for i in range(len(pmos)):
        for j in range(len(nmos)):
            for k in range(len(res)):
                for l in range(len(cap)):
                    corner = pmos[i] + nmos[j] + res[k] + cap[l]
                    corners.append(corner)
    for corner in corners:
        preamble(fID, corner)
        corner_model(fID, corner)
        preamble(fID, corner+"_mm")
        corner_model(fID, corner+"_mm")
        preamble(fID, corner+"_prmm")
        corner_model(fID, corner+"_prmm")
    fID.close()

