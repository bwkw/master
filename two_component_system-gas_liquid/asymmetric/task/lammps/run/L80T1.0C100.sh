#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 9216
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/lammps/density/L80T1.0C100.sh
