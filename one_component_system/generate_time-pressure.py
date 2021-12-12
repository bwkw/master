import math
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
                tp_list.append(line)
        for i in range(len(tp_list)):
            a = tp_list[i][0]
            b = tp_list[i][2]
            time.append(a)
            pressure.append(b)

def makefile(filename):
    with open(filename, "w") as f:
        for i in range(len(tp_list)):
            f.write("{} {}\n".format(time[i], pressure[i]))


tp_list = []
time = []
pressure = []
half_volume = 40*40*40
left_num = 9*9*9*4
right_num = 9*9*9*4
left_density = left_num/half_volume
right_density = right_num/half_volume
length = math.pow(half_volume, 1/3)
temperature = 1.0
loadfile("output/ln{}-rn{}-ld{}-rd{}-T{}.output".format(left_num, right_num, left_density, right_density, temperature))
makefile("time-pressure/ln{}-rn{}-ld{}-rd{}-T{}_tp.dat".format(left_num, right_num, left_density, right_density, temperature))

pressure = [float(n) for n in pressure]
print(sum(pressure[1:51])/len(pressure[1:51]))
print(len(pressure))
