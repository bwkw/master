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
loadfile("output/ln42592-rn2916-ld0.6655-rd0.0455625-T1.0.output")
makefile("time-pressure/ln42592-rn2916-ld0.6655-rd0.0455625-T1.0.tp")

pressure = [float(n) for n in pressure]
print(sum(pressure[1:51])/len(pressure[1:51]))
print(len(pressure[1:51]))
