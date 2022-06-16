# densityファイルから共沸点を取得するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、イプシロンを入れる

import re
import sys
from uncertainties import ufloat

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
                a_composition_ratio = round((int(result[5]))/(int(result[5])+int(result[6])), 2)
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

def make_plt_file(filename, length, temperature, variable_epsilon):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'azeotrope/azeotrope_img/L{}T{}E{}.pdf'\n".format(length, temperature, variable_epsilon))
        f.write("set xlabel '{/Arial-Italic A-composition-ratio}'\n")
        f.write("set ylabel '{/Arial-Italic X}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set xrange [0.0:1.0]\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set nokey\n")
        f.write("plot 'azeotrope/azeotrope/L{}T{}E{}.dat' with yerrorbars pt 0, 0.0\n".format(length, temperature, variable_epsilon))


def make_ab_gasliquid_file(filename, a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {} {}\n".format(a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density, x))

def make_yz_file(filename, a_composition_ratio, Y, Z):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {}\n".format(a_composition_ratio, Y.n, Y.s, Z.n, Z.s))

def make_azeotrope_file(filename, a_composition_ratio, X):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, X.n, X.s))

parameters = []
length = int(sys.argv[1])
temperature = float(sys.argv[2])
composition_number = int(sys.argv[3])
variable_epsilon = float(sys.argv[4])
loadfile("density/density_fitting/L{}T{}CN{}E{}.log".format(length, temperature, composition_number, variable_epsilon))

for parameter in parameters:
    a_composition_ratio = parameter[0]
    a_liquid_density = parameter[1]
    a_gas_density = parameter[2]
    b_liquid_density = parameter[3]
    b_gas_density = parameter[4]
    Y = a_gas_density * b_liquid_density
    Z = a_liquid_density * b_gas_density
    X = Y-Z
    make_azeotrope_file("azeotrope/azeotrope/L{}T{}E{}.dat".format(length, temperature, variable_epsilon), a_composition_ratio, X)
    make_yz_file("azeotrope/yz/L{}T{}E{}.dat".format(length, temperature, variable_epsilon), a_composition_ratio, Y, Z)

make_plt_file("azeotrope/azeotrope_plt/L{}T{}E{}.plt".format(length, temperature, variable_epsilon), length, temperature, variable_epsilon)

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
