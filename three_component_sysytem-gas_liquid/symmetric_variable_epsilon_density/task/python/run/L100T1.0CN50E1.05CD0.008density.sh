#!/bin/bash
#SBATCH -p F4cpu
#SBATCH -N 2
#SBATCH -n 8
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0CN50E1.05CD0.008density.sh
