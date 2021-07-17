#Lのdatファイルを読み込み、tpファイルを作成

import re

def loadfile(filename):
    with open(filename) as f:
        a = 0
        for line in f:
            if re.match("Time", line):
                a = 1
                continue
            elif re.match("Loop", line):
                a = 0
                break
            if a == 1:
                line = line.split()
                tt_list.append(line)
        for i in range(len(tt_list)):
            a = tt_list[i][0]
            b = tt_list[i][1]
            time_list.append(a)
            temperature_list.append(b)

def makefile(filename):
    with open(filename, "w") as f:
        for i in range(len(tt_list)):
            f.write("{} {}\n".format(time_list[i], temperature_list[i]))

density = 2.0
tt_list = []
time_list = []
temperature_list = []
left_num = 6*6*6*4
right_num = 0
left_density = 0.8
right_density = 0.0
temperature = 1.0
loadfile("dat/l{}-r{}-T{}.dat".format(left_density, right_density, temperature))
makefile("time-temperature/l{}-r{}-T{}_tt.dat".format(left_density, right_density, temperature))
