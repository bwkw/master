#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan27537-lbn660878-lcn14049-ran770-rbn18489-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan55073-lbn633342-lcn14049-ran1541-rbn17718-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan82610-lbn605805-lcn14049-ran2311-rbn16948-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan110146-lbn578269-lcn14049-ran3081-rbn16178-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan137683-lbn550732-lcn14049-ran3852-rbn15407-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan165220-lbn523195-lcn14049-ran4622-rbn14637-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan192756-lbn495659-lcn14049-ran5393-rbn13866-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan220293-lbn468122-lcn14049-ran6163-rbn13096-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan247829-lbn440586-lcn14049-ran6933-rbn12326-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan275366-lbn413049-lcn14049-ran7704-rbn11555-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan302903-lbn385512-lcn14049-ran8474-rbn10785-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan330439-lbn357976-lcn14049-ran9244-rbn10015-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan357976-lbn330439-lcn14049-ran10015-rbn9244-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan385512-lbn302903-lcn14049-ran10785-rbn8474-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan413049-lbn275366-lcn14049-ran11555-rbn7704-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan440586-lbn247829-lcn14049-ran12326-rbn6933-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan468122-lbn220293-lcn14049-ran13096-rbn6163-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan495659-lbn192756-lcn14049-ran13866-rbn5393-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan523195-lbn165220-lcn14049-ran14637-rbn4622-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan550732-lbn137683-lcn14049-ran15407-rbn3852-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan578269-lbn110146-lcn14049-ran16178-rbn3081-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan605805-lbn82610-lcn14049-ran16948-rbn2311-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan633342-lbn55073-lcn14049-ran17718-rbn1541-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.02/lan660878-lbn27537-lcn14049-ran18489-rbn770-rcn393.in &
wait
