#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.01/lan13909-lbn681530-lcn7025-ran389-rbn19066-rcn197.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.01/lan27818-lbn667621-lcn7025-ran778-rbn18677-rcn197.in &
wait
