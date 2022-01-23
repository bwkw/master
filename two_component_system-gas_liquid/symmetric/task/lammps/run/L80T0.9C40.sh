#!/bin/sh

#SBATCH -p i8cpu
#SBATCH -N 1
#SBATCH -n 128

source /home/issp/materiapps/intel/lammps/lammpsvars.sh
srun task/lammps/in.melt/L80T0.9C40inmelt.sh
