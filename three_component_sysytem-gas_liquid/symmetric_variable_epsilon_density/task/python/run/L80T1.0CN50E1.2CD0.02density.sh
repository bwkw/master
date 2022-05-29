#!/bin/bash
#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 576
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L80T1.0CN50E1.2CD0.02density.sh
