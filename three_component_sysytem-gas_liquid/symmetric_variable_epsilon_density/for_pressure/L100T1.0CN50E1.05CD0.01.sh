#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.01/lan292084-lbn403355-lcn7025-ran8171-rbn11284-rcn197.in > data/pressure/L100T1.0E1.05CD0.01/lan292084-lbn403355-lcn7025-ran8171-rbn11284-rcn197.pressure &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.01/lan305993-lbn389446-lcn7025-ran8560-rbn10895-rcn197.in > data/pressure/L100T1.0E1.05CD0.01/lan305993-lbn389446-lcn7025-ran8560-rbn10895-rcn197.pressure &
wait
