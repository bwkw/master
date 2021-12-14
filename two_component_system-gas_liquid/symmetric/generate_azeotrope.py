# densityファイルから粒子A,Bの密度を計算するようなファイル

import os
import re

def create_density_1000(filename, a_density_list_1000, b_density_list_1000):
    with open(filename) as f:
        for line in f:
            line = line.split(' ')
            line[2] = line[2].replace('\n', '')
            a_density_list_1000.append(float(line[1]))
            b_density_list_1000.append(float(line[2]))

def create_density_10(a_density_list_10, b_density_list_10, a_density_list_1000, b_density_list_1000):
    for i in range(10):
        first = 100*i
        last = 100*(i+1)
        a_ave_density = sum(a_density_list_1000[first:last])/len(a_density_list_1000[first:last])
        b_ave_density = sum(b_density_list_1000[first:last])/len(b_density_list_1000[first:last])
        a_density_list_10.append(a_ave_density)
        b_density_list_10.append(b_ave_density)

def makefile(filename, a_composition_ratio, composition_parameter):
    with open(filename, "a") as f:
        f.write("{} {}\n".format(a_composition_ratio, composition_parameter))

files = os.listdir("density/")

ratio_parameters = []
for filename in files:
    a_density_list_1000 = []
    b_density_list_1000 = []
    create_density_1000("density/"+filename, a_density_list_1000, b_density_list_1000)
    a_density_list_10 = []
    b_density_list_10 = []
    create_density_10(a_density_list_10, b_density_list_10, a_density_list_1000, b_density_list_1000)
    a_gas_density = min(a_density_list_10)
    a_liquid_density = max(a_density_list_10)
    b_gas_density = min(b_density_list_10)
    b_liquid_density = max(b_density_list_10)
    ratio_parameter = []
    result = re.findall(r"\d+", filename)
    a_composition_ratio = round((int(result[0]))/(int(result[0])+int(result[1])), 2)
    composition_parameter = a_gas_density*b_liquid_density-a_liquid_density*b_gas_density
    ratio_parameter.append(a_composition_ratio)
    ratio_parameter.append(composition_parameter)
    ratio_parameters.append(ratio_parameter)

ratio_parameters = sorted(ratio_parameters, reverse=False, key=lambda x: x[0]) 

for ratio_parameter in ratio_parameters:
    makefile("density_azeotrope_curve-2.dat", ratio_parameter[0], ratio_parameter[1])