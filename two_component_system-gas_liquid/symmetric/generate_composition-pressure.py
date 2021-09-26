# densityファイルから粒子A,Bの密度を計算するようなファイル

import os
import re

def loadfile(filename, a_gas_density_list, a_liquid_density_list, b_gas_density_list, b_liquid_density_list):
    with open(filename) as f:
            for line in f:
                line = line.split(' ')
                line[2] = line[2].replace('\n', '')
                if ((float(line[0])>=0.2) and (float(line[0])<=0.3)):
                    a_gas_density_list.append(float(line[1]))
                    b_gas_density_list.append(float(line[2]))
                if ((float(line[0])>=0.5) and (float(line[0])<=0.9)):
                    a_liquid_density_list.append(float(line[1]))
                    b_liquid_density_list.append(float(line[2]))


# aを22*22*22*4で固定して、bの組成割合を変えていく感じかな
files = os.listdir("density/")

for filename in files:
    result = re.findall(r"\d+", filename)
    a_composition_ratio = (int(result[0]))/(int(result[0])+int(result[1]))
    a_gas_density_list = []
    a_liquid_density_list = []
    b_gas_density_list = []
    b_liquid_density_list = []
    loadfile("density/"+filename, a_gas_density_list, a_liquid_density_list, b_gas_density_list, b_liquid_density_list)
    a_gas_density = sum(a_gas_density_list)/len(a_gas_density_list)
    b_gas_density = sum(b_gas_density_list)/len(b_gas_density_list)
    print(filename)
    print(a_gas_density)