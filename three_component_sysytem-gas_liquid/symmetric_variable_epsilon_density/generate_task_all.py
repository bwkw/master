# task/lammps/runファイル作成
# 系の長さ（Length）、温度（Temperature）、組成比分割数（CompositionNumber）、変数イプシロン（Epsilon）、Cの密度（Density）
# コマンドライン引数に、系の長さ、温度、組成比分割数、変数イプシロン、Cの密度を入れる

import math
import sys
import os

def make_lammps_base_file(filename):
    with open(filename, "w") as f:
        f.write("#!/bin/sh\n\n")
        f.write("#SBATCH -p F144cpu\n")
        f.write("#SBATCH -N 144\n")
        f.write("#SBATCH -n 18432\n")
        f.write("#SBATCH --mail-type=ALL\n")
        f.write("#SBATCH --mail-user=n.shota.1139@keio.jp\n\n")
        f.write("source /home/issp/materiapps/intel/lammps/lammpsvars.sh\n\n")

def make_lammps_file(filename, length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num):
    with open(filename, "a") as f:
        f.write("srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L{}T{}E{}CD{}/lan{}-lbn{}-lcn{}-ran{}-rbn{}-rcn{}.in &\n".format(length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num))

def make_lammps_end_file(filename):
    with open(filename, "a") as f:
        f.write("wait\n")

def make_atoms_file(filename, length, temperature, a_composition_ratio, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_atoms.py < data/param/L{}T{}E{}CD{}/AC{}.param\n".format(length, temperature, variable_epsilon, c_density, a_composition_ratio))

def make_density_file(filename, length, temperature, a_composition_ratio, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_density.py < data/param/L{}T{}E{}CD{}/AC{}.param\n".format(length, temperature, variable_epsilon, c_density, a_composition_ratio))

def make_density_fitting_plt_file(filename, length, temperature, a_composition_ratio, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_density_fitting_plt.py < data/param/L{}T{}E{}CD{}/AC{}.param\n".format(length, temperature, variable_epsilon, c_density, a_composition_ratio))

def make_inmelt_file(filename, length, temperature, a_composition_ratio, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_in.melt.py < data/param/L{}T{}E{}CD{}/AC{}.param\n".format(length, temperature, variable_epsilon, c_density, a_composition_ratio))

length = int(sys.argv[1])
temperature = float(sys.argv[2])
composition_number = int(sys.argv[3])
variable_epsilon = float(sys.argv[4])
c_density = float(sys.argv[5])

half_volume = length**3
make_lammps_base_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density))
left_s = round(math.pow((half_volume*0.7/4), 1/3))
right_s = round(math.pow((half_volume*0.02/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
total_num = left_num + right_num
for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    left_c_num = round(left_num * c_density)
    left_ab_num = left_num - left_c_num
    left_a_num = round(left_ab_num * a_composition_ratio)
    left_b_num = left_ab_num - left_a_num
    right_c_num = round(right_num * c_density)
    right_ab_num = right_num - right_c_num
    right_a_num = round(right_ab_num * a_composition_ratio)
    right_b_num = right_ab_num - right_a_num
    make_lammps_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num)
    make_atoms_file("task/python/atoms/L{}CN{}CD{}atoms.sh".format(length, composition_number, c_density), length, temperature, a_composition_ratio, variable_epsilon, c_density)
    make_inmelt_file("task/python/in.melt/L{}T{}CN{}E{}CD{}inmelt.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, a_composition_ratio, variable_epsilon, c_density)
    make_density_file("task/python/density/L{}T{}CN{}E{}CD{}density.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, a_composition_ratio, variable_epsilon, c_density)
    make_density_fitting_plt_file("task/python/density_fitting_plt/L{}T{}CN{}E{}CD{}density_fitting_plt.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, a_composition_ratio, variable_epsilon, c_density)

make_lammps_end_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density))
