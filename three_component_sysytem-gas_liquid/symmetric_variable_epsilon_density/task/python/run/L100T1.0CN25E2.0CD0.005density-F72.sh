#!/bin/bash
#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 144
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

srun task/cps task/python/density/L100T1.0CN25E2.0CD0.005density.sh
