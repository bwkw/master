#!/bin/bash
#SBATCH -p B32cpu
#SBATCH -N 32
#SBATCH -n 144
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0CN50E1.2CD0.01density.sh
