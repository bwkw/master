#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan13768-lbn674647-lcn14049-ran385-rbn18874-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan27537-lbn660878-lcn14049-ran770-rbn18489-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan41305-lbn647110-lcn14049-ran1156-rbn18103-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan55073-lbn633342-lcn14049-ran1541-rbn17718-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan68842-lbn619573-lcn14049-ran1926-rbn17333-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan82610-lbn605805-lcn14049-ran2311-rbn16948-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan96378-lbn592037-lcn14049-ran2696-rbn16563-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan110146-lbn578269-lcn14049-ran3081-rbn16178-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan123915-lbn564500-lcn14049-ran3467-rbn15792-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan137683-lbn550732-lcn14049-ran3852-rbn15407-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan151451-lbn536964-lcn14049-ran4237-rbn15022-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan165220-lbn523195-lcn14049-ran4622-rbn14637-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan178988-lbn509427-lcn14049-ran5007-rbn14252-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan192756-lbn495659-lcn14049-ran5393-rbn13866-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan206524-lbn481891-lcn14049-ran5778-rbn13481-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan220293-lbn468122-lcn14049-ran6163-rbn13096-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan234061-lbn454354-lcn14049-ran6548-rbn12711-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan247829-lbn440586-lcn14049-ran6933-rbn12326-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan261598-lbn426817-lcn14049-ran7318-rbn11941-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan275366-lbn413049-lcn14049-ran7704-rbn11555-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan289134-lbn399281-lcn14049-ran8089-rbn11170-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan302903-lbn385512-lcn14049-ran8474-rbn10785-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan316671-lbn371744-lcn14049-ran8859-rbn10400-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan330439-lbn357976-lcn14049-ran9244-rbn10015-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan344208-lbn344207-lcn14049-ran9630-rbn9629-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan357976-lbn330439-lcn14049-ran10015-rbn9244-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan371744-lbn316671-lcn14049-ran10400-rbn8859-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan385512-lbn302903-lcn14049-ran10785-rbn8474-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan399281-lbn289134-lcn14049-ran11170-rbn8089-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan413049-lbn275366-lcn14049-ran11555-rbn7704-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan426817-lbn261598-lcn14049-ran11941-rbn7318-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan440586-lbn247829-lcn14049-ran12326-rbn6933-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan454354-lbn234061-lcn14049-ran12711-rbn6548-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan468122-lbn220293-lcn14049-ran13096-rbn6163-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan481890-lbn206525-lcn14049-ran13481-rbn5778-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan495659-lbn192756-lcn14049-ran13866-rbn5393-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan509427-lbn178988-lcn14049-ran14252-rbn5007-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan523195-lbn165220-lcn14049-ran14637-rbn4622-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan536964-lbn151451-lcn14049-ran15022-rbn4237-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan550732-lbn137683-lcn14049-ran15407-rbn3852-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan564500-lbn123915-lcn14049-ran15792-rbn3467-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan578269-lbn110146-lcn14049-ran16178-rbn3081-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan592037-lbn96378-lcn14049-ran16563-rbn2696-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan605805-lbn82610-lcn14049-ran16948-rbn2311-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan619574-lbn68841-lcn14049-ran17333-rbn1926-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan633342-lbn55073-lcn14049-ran17718-rbn1541-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan647110-lbn41305-lcn14049-ran18103-rbn1156-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan660878-lbn27537-lcn14049-ran18489-rbn770-rcn393.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.1CD0.02/lan674647-lbn13768-lcn14049-ran18874-rbn385-rcn393.in &
wait
