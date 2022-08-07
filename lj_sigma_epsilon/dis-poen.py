import re


def lj_loadfile(filename):
    with open(filename) as f:
        a = 0
        for line in f:
            if re.match("PotEng", line):
                a = 1
                continue
            elif re.match("Loop", line):
                a = 0
                break
            if a == 1:
                line = line.split()
                lj_energy.append(line[0])

def makefile(filename, distance):
    with open(filename, "a") as f:
        f.write("{} {} {}\n".format(distance, lj_energy[0]))

for i in range(201):
    lj_energy = []
    r = format((0.5 + 0.01*i),'.3f')
    lj_loadfile("lj-dat/lj{}.dat".format(r))
    makefile("dis-poen.dat", r)
