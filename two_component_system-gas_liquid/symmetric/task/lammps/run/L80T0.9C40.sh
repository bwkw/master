#!/bin/sh

#SBATCH -p i8cpu
#SBATCH -N 1
#SBATCH -n 128
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1149@gmail.com

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

