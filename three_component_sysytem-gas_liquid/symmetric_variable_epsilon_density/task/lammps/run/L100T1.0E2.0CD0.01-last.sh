#!/bin/sh

#SBATCH -p F4cpu
#SBATCH -N 4
#SBATCH -n 512
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E2.0CD0.01/lan278176-lbn417263-lcn7025-ran7782-rbn11673-rcn197-last.in

