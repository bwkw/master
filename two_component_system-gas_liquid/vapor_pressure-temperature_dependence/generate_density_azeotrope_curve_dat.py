# densityファイルから粒子A,Bの密度を計算するようなファイル
# コマンドライン引数一つ目で温度を指定

import os
import re
import sys

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

def makefile(filename, a_composition_ratio, a_gas_density, b_gas_density):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(a_composition_ratio, a_gas_density, b_gas_density))

temperature = float(sys.argv[1])
files = os.listdir("density_dat/T{}/".format(temperature))

for filename in files:
    a_density_list_1000 = []
    b_density_list_1000 = []
    temperature = float(sys.argv[1])
    create_density_1000("density_dat/T{}/".format(temperature)+filename, a_density_list_1000, b_density_list_1000)
    a_density_list_10 = []
    b_density_list_10 = []
    create_density_10(a_density_list_10, b_density_list_10, a_density_list_1000, b_density_list_1000)
    a_gas_density = min(a_density_list_10)
    b_gas_density = min(b_density_list_10)
    result = re.findall(r"\d+", filename)
    a_composition_ratio = (int(result[0]))/(int(result[0])+int(result[1]))
    makefile("density_azeotrope_curve_dat/T{}.dat".format(temperature), a_composition_ratio, a_gas_density, b_gas_density)
    