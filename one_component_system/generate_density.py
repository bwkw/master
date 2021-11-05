# dumpファイルから密度を計算する

import re
import math

def loadfile(filename):
    with open(filename) as f:
        # aは出力する範囲を特定する変数
        a = 0
        # bはdumpを吐いている数(最大2001)
        b = 0
        for line in f:
            if re.match("ITEM: ATOMS id type xs ys zs", line):
                a = 1
                b += 1
                continue
            elif re.match("ITEM: TIMESTEP", line):
                a = 0
            if ((a == 1) and ((b >= 2) and (b <= 26))):
                line = line.split()
                x = line[2]
                x_list.append(x)
        
def makefile(filename, length):
    with open(filename, "w") as f:
        for i in range(len(density_list)):
            f.write("{} {}\n".format(round(float(0.001)*i, 3), density_list[i]))

half_volume = 40*40*40
left_num = 22*22*22*4
right_num = 0
left_density = left_num/half_volume
right_density = 0
length = math.pow(half_volume, 1/3)
temperature = 1.0
line_list = []
x_list = []
loadfile("dump.melt/ln{}-rn{}-ld{}-rd{}-T{}-test.dump".format(left_num, right_num, left_density, right_density, temperature))

x_interval = 0.001
x_interval_num = int(1/float(x_interval))
density_list = [0]*(x_interval_num)
for i in range(len(x_list)):
    x = float(x_list[i])
    if x < 1:
        density_position = math.floor(float(x)/float(0.001))
        density_list[density_position] += 1
    elif x == 1:
        density_list[999] += 1

density_list = list(map(lambda x: x/(0.001*length**3*2*25), density_list))

makefile("density/ln{}-rn{}-ld{}-rd{}-T{}-test.density".format(left_num, right_num, left_density, right_density, temperature), length)

liquid_density = 0
gas_density = 0
for i in range(100, 401):
    liquid_density += density_list[i]

for i in range(600, 901):
    gas_density += density_list[i]

ave_liquid_density = liquid_density/300
ave_gas_density = gas_density/300
ave_gas_liquid_density = (ave_gas_density + ave_liquid_density)/2

print("temperature:{}".format(temperature))
print("liquid_density:{}".format(ave_liquid_density))
print("gas_density:{}".format(ave_gas_density))
print("ave_density:{}".format(ave_gas_liquid_density))
