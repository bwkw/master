#!/bin/sh

#SBATCH -p F1cpu
#SBATCH -N 1
#SBATCH -n 128
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/lammps/density/L80T1.0C100.sh
