# densityファイルから粒子A,Bの密度を計算するようなファイル

import math
import os
import re
import statistics

def create_density_1000(filename, a_density_list_1000, b_density_list_1000):
    with open(filename) as f:
        for line in f:
            line = line.split(' ')
            line[2] = line[2].replace('\n', '')
            a_density_list_1000.append(float(line[1]))
            b_density_list_1000.append(float(line[2]))

def create_density_10(a_density_list_10, b_density_list_10, a_density_list_1000, b_density_list_1000, a_stdev_list_10, b_stdev_list_10):
    for i in range(10):
        first = 100*i
        last = 100*(i+1)
        a_ave_density = sum(a_density_list_1000[first:last])/len(a_density_list_1000[first:last])
        a_stdev = statistics.pstdev(a_density_list_1000[first:last])/math.sqrt(len(a_density_list_1000[first:last]))
        b_ave_density = sum(b_density_list_1000[first:last])/len(b_density_list_1000[first:last])
        b_stdev = statistics.pstdev(b_density_list_1000[first:last])/math.sqrt(len(a_density_list_1000[first:last]))
        a_density_list_10.append(a_ave_density)
        a_stdev_list_10.append(a_stdev)
        b_density_list_10.append(b_ave_density)
        b_stdev_list_10.append(b_stdev)

def make_ab_gasliquid_file(filename, a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {} {}\n".format(a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x))

def makefile(filename, a_composition_ratio, x, delta_x):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, x, delta_x))

files = os.listdir("density/")

ratio_parameters = []
for filename in files:
    result = re.findall(r"\d+", filename)
    a_composition_ratio = round((int(result[0]))/(int(result[0])+int(result[1])), 2)
    a_density_list_1000 = []
    b_density_list_1000 = []
    create_density_1000("density/"+filename, a_density_list_1000, b_density_list_1000)
    a_density_list_10 = []
    a_stdev_list_10 = []
    b_density_list_10 = []
    b_stdev_list_10 = []
    create_density_10(a_density_list_10, b_density_list_10, a_density_list_1000, b_density_list_1000, a_stdev_list_10, b_stdev_list_10)
    a_gas_density = a_density_list_10[7]
    a_gas_stdev = a_stdev_list_10[7]
    a_liquid_density = a_density_list_10[2]
    a_liquid_stdev = a_stdev_list_10[2]
    b_gas_density = b_density_list_10[7]
    b_gas_stdev = b_stdev_list_10[7]
    b_liquid_density = b_density_list_10[2]
    b_liquid_stdev = b_stdev_list_10[2]
    print("a_gas_stdev:{}".format(a_gas_stdev))
    print("a_liquid_stdev:{}".format(a_liquid_stdev))
    print("b_gas_stdev:{}".format(b_gas_stdev))
    print("b_liquid_stdev:{}".format(b_liquid_stdev))
    x = a_gas_density*b_liquid_density-a_liquid_density*b_gas_density
    # delta_x = math.sqrt((((b_liquid_density)**2)*((a_gas_stdev)**2)+((a_gas_density)**2)*((b_liquid_stdev)**2))+(((b_gas_density)**2)*((a_liquid_stdev)**2)+((a_liquid_density)**2)*((b_gas_stdev)**2)))
    delta_x = b_liquid_density*a_gas_stdev + a_gas_density*b_liquid_stdev + b_gas_density*a_liquid_stdev + a_liquid_density*b_gas_stdev
    make_ab_gasliquid_file("ab_gasliquid.density3", a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x)
    ratio_parameter = []
    ratio_parameter.append(a_composition_ratio)
    ratio_parameter.append(x)
    ratio_parameter.append(delta_x)
    ratio_parameters.append(ratio_parameter)

ratio_parameters = sorted(ratio_parameters, reverse=False, key=lambda x: x[0]) 

for ratio_parameter in ratio_parameters:
    makefile("density_azeotrope_curve-3.dat", ratio_parameter[0], ratio_parameter[1], ratio_parameter[2])