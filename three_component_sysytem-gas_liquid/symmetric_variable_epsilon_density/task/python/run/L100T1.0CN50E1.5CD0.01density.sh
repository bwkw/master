#!/bin/bash
#SBATCH -p F36cpu
#SBATCH -N 36
#SBATCH -n 144
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0CN50E1.5CD0.01density.sh
