#!/bin/bash
#SBATCH -p F4cpu
#SBATCH -N 2
#SBATCH -n 8
#SBATCH -c 32
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun lammps < data/in.melt/L100T1.0E1.05CD0.01/lan278176-lbn417263-lcn7025-ran7782-rbn11673-rcn197-for-c.in
