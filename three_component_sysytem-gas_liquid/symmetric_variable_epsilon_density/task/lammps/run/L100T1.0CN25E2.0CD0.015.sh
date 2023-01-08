#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 9216
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan27677-lbn664250-lcn10537-ran774-rbn18583-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan55354-lbn636573-lcn10537-ran1549-rbn17808-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan83031-lbn608896-lcn10537-ran2323-rbn17034-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan110708-lbn581219-lcn10537-ran3097-rbn16260-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan138385-lbn553542-lcn10537-ran3871-rbn15486-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan166062-lbn525865-lcn10537-ran4646-rbn14711-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan193740-lbn498187-lcn10537-ran5420-rbn13937-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan221417-lbn470510-lcn10537-ran6194-rbn13163-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan249094-lbn442833-lcn10537-ran6969-rbn12388-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan276771-lbn415156-lcn10537-ran7743-rbn11614-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan304448-lbn387479-lcn10537-ran8517-rbn10840-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan332125-lbn359802-lcn10537-ran9291-rbn10066-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan359802-lbn332125-lcn10537-ran10066-rbn9291-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan387479-lbn304448-lcn10537-ran10840-rbn8517-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan415156-lbn276771-lcn10537-ran11614-rbn7743-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan442833-lbn249094-lcn10537-ran12388-rbn6969-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan470510-lbn221417-lcn10537-ran13163-rbn6194-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan498187-lbn193740-lcn10537-ran13937-rbn5420-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan525865-lbn166062-lcn10537-ran14711-rbn4646-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan553542-lbn138385-lcn10537-ran15486-rbn3871-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan581219-lbn110708-lcn10537-ran16260-rbn3097-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan608896-lbn83031-lcn10537-ran17034-rbn2323-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan636573-lbn55354-lcn10537-ran17808-rbn1549-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan664250-lbn27677-lcn10537-ran18583-rbn774-rcn295.in &
wait
