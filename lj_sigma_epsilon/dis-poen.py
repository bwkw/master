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
                return line[0]

def makefile(filename, distance, lj_normal_energy, lj_epsilon_energy, lj_sigma_energy):
    with open(filename, "a") as f:
        f.write("{} {} {} {}\n".format(distance, lj_normal_energy, lj_epsilon_energy, lj_sigma_energy))

for i in range(201):
    r = format((0.5 + 0.01*i),'.3f')
    lj_normal_energy = lj_loadfile("lj-dat/normal/lj{}.dat".format(r))
    lj_epsilon_energy = lj_loadfile("lj-dat/E1.2/lj{}.dat".format(r))
    lj_sigma_energy = lj_loadfile("lj-dat/S1.2/lj{}.dat".format(r))
    makefile("dis-poen.dat", r, lj_normal_energy, lj_epsilon_energy, lj_sigma_energy)
