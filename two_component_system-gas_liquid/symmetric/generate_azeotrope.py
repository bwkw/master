# densityファイルから共沸点を取得するファイル
# 系の長さ（Length）、温度（Temperature）

import math
import os
import re
from uncertainties import ufloat, umath

## fit.logファイルから粒子Aの気相/液相密度、粒子Bの気相/液相密度取得
def loadfile(filename):
    with open(filename) as f:
        parameter = []
        a_composition_ratio = 0
        dal = 0
        dag = 0
        dbl = 0
        dbg = 0
        for line in f:
            if re.match("FIT:    data read from ", line):
                result = re.findall(r"\d+", line)
                a_composition_ratio = round((int(result[3]))/(int(result[3])+int(result[4])), 2)
            if re.match("dal             =", line):
                result = line.split()
                dal = ufloat(float(result[2]), float(result[4]))
            if re.match("dag             =", line):
                result = line.split()
                dag = ufloat(float(result[2]), float(result[4]))
            if re.match("dbl             =", line):
                result = line.split()
                dbl = ufloat(float(result[2]), float(result[4]))
            if re.match("dbg             =", line):
                result = line.split()
                dbg = ufloat(float(result[2]), float(result[4]))
            if ( (a_composition_ratio!=0) and (dal!=0) and (dag!=0) and (dbl!=0) and (dbg!=0) ):
                parameter.append(a_composition_ratio)
                parameter.append(dal)
                parameter.append(dag)
                parameter.append(dbl)
                parameter.append(dbg)
                parameters.append(parameter)
                parameter = []
                a_composition_ratio = 0
                dal = 0
                dag = 0
                dbl = 0
                dbg = 0


def make_ab_gasliquid_file(filename, a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {} {}\n".format(a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x))

def make_yz_file(filename, a_composition_ratio, Y, Z):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, Y, Z))

def make_azeotrope_file(filename, a_composition_ratio, X):
    with open(filename, "a") as f:
        f.write("{} {}\n".format(a_composition_ratio, X))

parameters = []
loadfile("fit.log")

for parameter in parameters:
    a_composition_ratio = parameter[0]
    a_liquid_density = parameter[1]
    a_gas_density = parameter[2]
    b_liquid_density = parameter[3]
    b_gas_density = parameter[4]
    Y = a_gas_density * b_liquid_density
    Z = a_liquid_density * b_gas_density
    X = Y-Z
    make_azeotrope_file("azeotrope/azeotrope/L80T1.0.dat", a_composition_ratio, X)
    make_yz_file("azeotrope/yz/L80T1.0.dat", a_composition_ratio, Y, Z)


# ratio_parameters = []
# yz_lists = []
# length = int(sys.argv[1])
# temperature = float(sys.argv[2])
# files = os.listdir("density/density/L{}T{}/".format(length, temperature))
# for filename in files:
#     result = re.findall(r"\d+", filename)
#     a_composition_ratio = round((int(result[0]))/(int(result[0])+int(result[1])), 3)
    
#     # y = a_gas_density*b_liquid_density
#     # delta_y = b_liquid_density*a_gas_stdev + a_gas_density*b_liquid_stdev
#     # z = a_liquid_density*b_gas_density
#     # delta_z = b_gas_density*a_liquid_stdev + a_liquid_density*b_gas_stdev
#     # x = y-z
#     # delta_x = delta_y-delta_z
#     # yz_list = []
#     # yz_list.append(a_composition_ratio)
#     # yz_list.append(y)
#     # yz_list.append(z)
#     # yz_list.append(delta_y)
#     # yz_list.append(delta_z)
#     # yz_lists.append(yz_list)

#     if not os.path.exists('azeotrope'):
#         os.mkdir('azeotrope')
#     if not os.path.exists('azeotrope/gas_liquid_density'):
#         os.mkdir('azeotrope/gas_liquid_density')
#     make_ab_gasliquid_file("azeotrope/gas_liquid_density/L{}T{}.dat".format(length, temperature), a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x)
#     ratio_parameter = []
#     ratio_parameter.append(a_composition_ratio)
#     ratio_parameter.append(x)
#     ratio_parameter.append(delta_x)
#     ratio_parameters.append(ratio_parameter)

# yz_lists = sorted(yz_lists, reverse=False, key=lambda x: x[0])
# for yz_list in yz_lists:
#     if not os.path.exists('azeotrope/yz'):
#         os.mkdir('azeotrope/yz')
#     make_yz_file("azeotrope/yz/L{}T{}.dat".format(length, temperature), yz_list[0], yz_list[1], yz_list[2], yz_list[3], yz_list[4])

# ratio_parameters = sorted(ratio_parameters, reverse=False, key=lambda x: x[0]) 
# for ratio_parameter in ratio_parameters:
#     if not os.path.exists('azeotrope/azeotrope'):
#         os.mkdir('azeotrope/azeotrope')
#     make_azeotrope_file("azeotrope/azeotrope/L{}T{}.dat".format(length, temperature), ratio_parameter[0], ratio_parameter[1], ratio_parameter[2])
