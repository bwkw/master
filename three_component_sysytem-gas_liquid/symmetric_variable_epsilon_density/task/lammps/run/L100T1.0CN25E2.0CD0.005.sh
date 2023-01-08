#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 9216
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan27958-lbn670994-lcn3512-ran782-rbn18772-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan55916-lbn643036-lcn3512-ran1564-rbn17990-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan83874-lbn615078-lcn3512-ran2346-rbn17208-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan111832-lbn587120-lcn3512-ran3129-rbn16425-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan139790-lbn559162-lcn3512-ran3911-rbn15643-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan167748-lbn531204-lcn3512-ran4693-rbn14861-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan195707-lbn503245-lcn3512-ran5475-rbn14079-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan223665-lbn475287-lcn3512-ran6257-rbn13297-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan251623-lbn447329-lcn3512-ran7039-rbn12515-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan279581-lbn419371-lcn3512-ran7822-rbn11732-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan307539-lbn391413-lcn3512-ran8604-rbn10950-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan335497-lbn363455-lcn3512-ran9386-rbn10168-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan363455-lbn335497-lcn3512-ran10168-rbn9386-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan391413-lbn307539-lcn3512-ran10950-rbn8604-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan419371-lbn279581-lcn3512-ran11732-rbn7822-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan447329-lbn251623-lcn3512-ran12515-rbn7039-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan475287-lbn223665-lcn3512-ran13297-rbn6257-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan503245-lbn195707-lcn3512-ran14079-rbn5475-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan531204-lbn167748-lcn3512-ran14861-rbn4693-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan559162-lbn139790-lcn3512-ran15643-rbn3911-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan587120-lbn111832-lcn3512-ran16425-rbn3129-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan615078-lbn83874-lcn3512-ran17208-rbn2346-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan643036-lbn55916-lcn3512-ran17990-rbn1564-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.005/lan670994-lbn27958-lcn3512-ran18772-rbn782-rcn98.in &
wait
