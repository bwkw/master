#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 512
#SBATCH -c 36
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0C50density.sh
