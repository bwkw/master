#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0/lan295035-lbn407429-ran8254-rbn11398.in > data/pressure/L100T1.0/lan295035-lbn407429-ran8254-rbn11398.pressure &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0/lan309084-lbn393380-ran8647-rbn11005.in > data/pressure/L100T1.0/lan309084-lbn393380-ran8647-rbn11005.pressure &
wait
