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
            time.append(a)
            temperature.append(b)

def makefile(filename):
    with open(filename, "w") as f:
        for i in range(len(tt_list)):
            f.write("{} {}\n".format(time[i], temperature[i]))

density = 2.0
tt_list = []
time = []
temperature = []
loadfile("dat/d{}.dat".format(density))
makefile("time-temperature/d{}-tt.dat".format(density))
