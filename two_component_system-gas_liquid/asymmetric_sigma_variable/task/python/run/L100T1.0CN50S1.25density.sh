#!/bin/bash
#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 576
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0CN50S1.25density.sh
