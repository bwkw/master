#!/bin/sh

#SBATCH -p F16cpu
#SBATCH -N 16
#SBATCH -n 128
#SBATCH -c 16
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/lammps/density/L100T1.0C50density.sh
