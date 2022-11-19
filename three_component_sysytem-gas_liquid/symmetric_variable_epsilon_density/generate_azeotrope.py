# densityファイルから共沸点を取得するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、シグマを入れる

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
                print(result[7])
                a_composition_ratio = round((int(result[7]))/(int(result[7])+int(result[8])+int(result[9])), 5)
            if re.match("dal             =", line):
                result = line.split()
                print(float(result[2]))
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

def make_plt_file(filename, length, temperature, composition_number, variable_epsilon, c_density):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'azeotrope/azeotrope_img/L{}T{}CN{}E{}CD{}.pdf'\n".format(length, temperature, composition_number, variable_epsilon, c_density))
        f.write("set xlabel '{/Arial-Italic A-composition-ratio}'\n")
        f.write("set ylabel '{/Arial-Italic X}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set xrange [0.0:0.5]\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set nokey\n")
        f.write("plot 'azeotrope/azeotrope/L{}T{}CN{}E{}CD{}.dat' with yerrorbars pt 0, 0.0\n".format(length, temperature, composition_number, variable_epsilon, c_density))

def make_ab_gasliquid_file(filename, a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density):
    with open(filename, "a") as f:
        f.write("{} {} {} {} {}\n".format(a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density))

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
c_density = float(sys.argv[5])
loadfile("density/density_fitting/L{}T{}CN{}E{}CD{}.log".format(length, temperature, composition_number, variable_epsilon, c_density))

parameters = sorted(parameters)

for parameter in parameters:
    a_composition_ratio = parameter[0]
    a_liquid_density = parameter[1]
    a_gas_density = parameter[2]
    b_liquid_density = parameter[3]
    b_gas_density = parameter[4]
    make_ab_gasliquid_file("azeotrope/gas_liquid_density/L{}T{}CN{}E{}CD{}.dat".format(length, temperature, composition_number, variable_epsilon, c_density), a_composition_ratio, a_gas_density, a_liquid_density, b_gas_density, b_liquid_density)
    # Y = a_gas_density * b_liquid_density
    # Z = a_liquid_density * b_gas_density
    # X = Y-Z
    # make_azeotrope_file("azeotrope/azeotrope/L{}T{}CN{}E{}CD{}.dat".format(length, temperature, composition_number, variable_epsilon, c_density), a_composition_ratio, X)
    # make_yz_file("azeotrope/yz/L{}T{}CN{}E{}CD{}.dat".format(length, temperature, composition_number, variable_epsilon, c_density), a_composition_ratio, Y, Z)

# make_plt_file("azeotrope/azeotrope_plt/L{}T{}CN{}E{}CD{}.plt".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, composition_number, variable_epsilon, c_density)
