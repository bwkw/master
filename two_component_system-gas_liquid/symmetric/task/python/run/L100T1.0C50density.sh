#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 256
#SBATCH -c 36
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0C50density.sh
