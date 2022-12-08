#!/bin/sh

#SBATCH -p F36cpu
#SBATCH -N 36
#SBATCH -n 144
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun lammps < data/in.melt/L100T1.0/lan140493-lbn561971-ran3930-rbn15722-last.in
