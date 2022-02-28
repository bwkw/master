# densityファイルから共沸点を取得するファイル
# 系の長さ（Length）、温度（Temperature）

import math
import os
import re
import statistics
import sys


## densityファイルを基に、10000区切りの密度リストを作成する
def create_density_10000(filename, a_density_list_10000, b_density_list_10000):
    with open(filename) as f:
        for line in f:
            line = line.split(' ')
            line[2] = line[2].replace('\n', '')
            a_density_list_10000.append(float(line[1]))
            b_density_list_10000.append(float(line[2]))

## densityファイルを基に、10区切りの密度平均/標準偏差リストを作成する
def create_density_10(a_density_list_10, b_density_list_10, a_density_list_10000, b_density_list_10000, a_stdev_list_10, b_stdev_list_10):
    for i in range(10):
        first = 1000*i
        last = 1000*(i+1)
        a_ave_density = sum(a_density_list_10000[first:last])/len(a_density_list_10000[first:last])
        a_stdev = statistics.pstdev(a_density_list_10000[first:last])/math.sqrt(len(a_density_list_10000[first:last]))
        b_ave_density = sum(b_density_list_10000[first:last])/len(b_density_list_10000[first:last])
        b_stdev = statistics.pstdev(b_density_list_10000[first:last])/math.sqrt(len(a_density_list_10000[first:last]))
        a_density_list_10.append(a_ave_density)
        a_stdev_list_10.append(a_stdev)
        b_density_list_10.append(b_ave_density)
        b_stdev_list_10.append(b_stdev)

def make_ab_gasliquid_file(filename, a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {} {}\n".format(a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x))

def make_yz_file(filename, a_composition_ratio, y, z, delta_y, delta_z):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, y, z))

def make_azeotrope_file(filename, a_composition_ratio, x, delta_x):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, x, delta_x))


ratio_parameters = []
yz_lists = []
length = int(sys.argv[1])
temperature = float(sys.argv[2])
files = os.listdir("density/density/L{}T{}/".format(length, temperature))
for filename in files:
    result = re.findall(r"\d+", filename)
    a_composition_ratio = round((int(result[0]))/(int(result[0])+int(result[1])), 3)
    a_density_list_10000 = []
    b_density_list_10000 = []
    create_density_10000("density/density/L{}T{}/".format(length, temperature)+filename, a_density_list_10000, b_density_list_10000)
    a_density_list_10 = []
    a_stdev_list_10 = []
    b_density_list_10 = []
    b_stdev_list_10 = []
    create_density_10(a_density_list_10, b_density_list_10, a_density_list_10000, b_density_list_10000, a_stdev_list_10, b_stdev_list_10)
    a_gas_density = a_density_list_10[7]
    a_gas_stdev = a_stdev_list_10[7]
    a_liquid_density = a_density_list_10[2]
    a_liquid_stdev = a_stdev_list_10[2]
    b_gas_density = b_density_list_10[7]
    b_gas_stdev = b_stdev_list_10[7]
    b_liquid_density = b_density_list_10[2]
    b_liquid_stdev = b_stdev_list_10[2]
    y = a_gas_density*b_liquid_density
    delta_y = b_liquid_density*a_gas_stdev + a_gas_density*b_liquid_stdev
    z = a_liquid_density*b_gas_density
    delta_z = b_gas_density*a_liquid_stdev + a_liquid_density*b_gas_stdev
    x = y-z
    delta_x = delta_y-delta_z
    yz_list = []
    yz_list.append(a_composition_ratio)
    yz_list.append(y)
    yz_list.append(z)
    yz_list.append(delta_y)
    yz_list.append(delta_z)
    yz_lists.append(yz_list)
    # delta_x = math.sqrt((((b_liquid_density)**2)*((a_gas_stdev)**2)+((a_gas_density)**2)*((b_liquid_stdev)**2))+(((b_gas_density)**2)*((a_liquid_stdev)**2)+((a_liquid_density)**2)*((b_gas_stdev)**2)))
    # print(a_composition_ratio)
    # print(a_gas_density)
    # print(a_gas_stdev)
    # print(a_liquid_density)
    # print(a_liquid_stdev)
    # print(b_gas_density)
    # print(b_gas_stdev)
    # print(b_liquid_density)
    # print(b_liquid_stdev)
    if not os.path.exists('azeotrope'):
        os.mkdir('azeotrope')
    if not os.path.exists('azeotrope/gas_liquid_density'):
        os.mkdir('azeotrope/gas_liquid_density')
    make_ab_gasliquid_file("azeotrope/gas_liquid_density/L{}T{}.dat".format(length, temperature), a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x)
    ratio_parameter = []
    ratio_parameter.append(a_composition_ratio)
    ratio_parameter.append(x)
    ratio_parameter.append(delta_x)
    ratio_parameters.append(ratio_parameter)

yz_lists = sorted(yz_lists, reverse=False, key=lambda x: x[0])
for yz_list in yz_lists:
    if not os.path.exists('azeotrope/yz'):
        os.mkdir('azeotrope/yz')
    make_yz_file("azeotrope/yz/L{}T{}.dat".format(length, temperature), yz_list[0], yz_list[1], yz_list[2], yz_list[3], yz_list[4])

ratio_parameters = sorted(ratio_parameters, reverse=False, key=lambda x: x[0]) 
for ratio_parameter in ratio_parameters:
    if not os.path.exists('azeotrope/azeotrope'):
        os.mkdir('azeotrope/azeotrope')
    make_azeotrope_file("azeotrope/azeotrope/L{}T{}.dat".format(length, temperature), ratio_parameter[0], ratio_parameter[1], ratio_parameter[2])
