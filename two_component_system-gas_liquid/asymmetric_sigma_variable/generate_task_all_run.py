# task/lammps/runファイル作成
# 系の長さ（Length）、温度（Temperature）、組成比分割数（CompositionNumber）、変数シグマ（sigma）、Cの密度（Density）
# コマンドライン引数に、系の長さ、温度、組成比分割数、変数シグマ、Cの密度を入れる

import sys

def make_atoms_file(filename, length, composition_number):
    with open(filename, "a") as f:
        f.write("#!/bin/bash\n");
        f.write("#PBS -l nodes=1:ppn=20\n");
        f.write("cd $PBS_O_WORKDIR\n\n");
        f.write("mpirun -np 4 --oversubscribe task/cps task/python/atoms/L{}CN{}atoms.sh\n".format(length, composition_number))

def make_inmelt_file(filename, length, temperature, composition_number, variable_sigma):
    with open(filename, "a") as f:
        f.write("#!/bin/bash\n");
        f.write("#PBS -l nodes=1:ppn=20\n");
        f.write("cd $PBS_O_WORKDIR\n\n");
        f.write("mpirun -np 4 --oversubscribe task/cps task/python/in.melt/L{}T{}CN{}S{}inmelt.sh\n".format(length, temperature, composition_number, variable_sigma))

def make_density_file(filename, length, temperature, composition_number, variable_sigma):
    with open(filename, "a") as f:
        f.write("#!/bin/bash\n");
        f.write("#SBATCH -p B144cpu\n");
        f.write("#SBATCH -N 144\n");
        f.write("#SBATCH -n 576\n");
        f.write("#SBATCH -c 32\n");
        f.write("#SBATCH --mail-type=ALL\n");
        f.write("#SBATCH --mail-user=n.shota.1139@keio.jp\n\n");
        f.write("srun task/cps task/python/density/L{}T{}CN{}S{}density.sh\n".format(length, temperature, composition_number, variable_sigma))

def make_density_fitting_plt_file(filename, length, temperature, composition_number, variable_sigma):
    with open(filename, "a") as f:
        f.write("#!/bin/bash\n");
        f.write("#PBS -l nodes=1:ppn=20\n");
        f.write("cd $PBS_O_WORKDIR\n\n");
        f.write("mpirun -np 4 --oversubscribe task/cps task/python/density_fitting_plt/L{}T{}CN{}S{}density_fitting_plt.sh\n".format(length, temperature, composition_number, variable_sigma))

length = int(sys.argv[1])
temperature = float(sys.argv[2])
composition_number = int(sys.argv[3])
variable_sigma = float(sys.argv[4])

# make_atoms_file("task/python/run/L{}CN{}atoms.sh".format(length, composition_number), length, composition_number)
make_inmelt_file("task/python/run/L{}T{}CN{}S{}inmelt.sh".format(length, temperature, composition_number, variable_sigma),length, temperature, composition_number, variable_sigma)
make_density_file("task/python/run/L{}T{}CN{}S{}density.sh".format(length, temperature, composition_number, variable_sigma),length, temperature, composition_number, variable_sigma)
make_density_fitting_plt_file("task/python/run/L{}T{}CN{}S{}density_fitting_plt.sh".format(length, temperature, composition_number, variable_sigma),length, temperature, composition_number, variable_sigma)
