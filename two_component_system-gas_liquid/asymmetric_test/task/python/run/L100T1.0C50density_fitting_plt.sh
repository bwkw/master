#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 256
#SBATCH -c 72
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density_fitting_plt/L100T1.0C50density_fitting_plt.sh
