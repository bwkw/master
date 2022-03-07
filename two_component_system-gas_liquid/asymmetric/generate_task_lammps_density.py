# task/lammps/runファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れる

import math
import sys

def make_base_file(filename):
    with open(filename, "w") as f:
        f.write("#!/bin/sh\n\n")
        f.write("#SBATCH -p F144cpu\n")
        f.write("#SBATCH -N 144\n")
        f.write("#SBATCH -n 18432\n")
        f.write("#SBATCH --mail-type=ALL\n")
        f.write("#SBATCH --mail-user=n.shota.1139@keio.jp\n\n")
        f.write("source /home/issp/materiapps/intel/lammps/lammpsvars.sh\n\n")

def make_file(filename, length, temperature, a_composition_ratio):
    with open(filename, "a") as f:
        f.write("srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L{}T{}/C{}.param &\n".format(length, temperature, a_composition_ratio))

def make_end_file(filename):
    with open(filename, "a") as f:
        f.write("wait\n")


length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
half_volume = length**3
make_base_file("task/lammps/run/density/L{}T{}C{}.sh".format(length, temperature, composition_number))

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/lammps/run/density/L{}T{}C{}.sh".format(length, temperature, composition_number), length, temperature, a_composition_ratio)

make_end_file("task/lammps/run/density/L{}T{}C{}.sh".format(length, temperature, composition_number))
