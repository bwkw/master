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
            if ((a == 1) and ((b >= 1997) and (b <= 2001))):
                line = line.split()
                x = line[2]
                x_list.append(x)
        
def makefile(filename):
    with open(filename, "w") as f:
        for i in range(len(density_list)):
            f.write("{} {}\n".format(round(float(0.01)*i, 2), density_list[i]))

left_density = 0.8
right_density = 0.0
temperature = 1.0
num = 864
density = 0.4
line_list = []
x_list = []
loadfile("dump.melt/l{}-r{}-T{}.dump".format(left_density, right_density, temperature))

x_max = 20.51971136012036
x_max_adjust = 20.52
x_interval = 0.01
x_interval_num = int(float(x_max_adjust)/float(x_interval))
density_list = [0]*(x_interval_num)

for i in range(len(x_list)):
    x = float(x_list[i])
    density_position = math.floor(float(x)/float(0.01))
    density_list[density_position] += 1

makefile("density/l{}-r{}-T{}.density".format(left_density, right_density, temperature))
