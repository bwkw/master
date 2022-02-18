#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 9216
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan24061-lbn1178991-ran741-rbn36303.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan48122-lbn1154930-ran1482-rbn35562.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan72183-lbn1130869-ran2223-rbn34821.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan96244-lbn1106808-ran2964-rbn34080.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan120305-lbn1082747-ran3704-rbn33340.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan144366-lbn1058686-ran4445-rbn32599.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan168427-lbn1034625-ran5186-rbn31858.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan192488-lbn1010564-ran5927-rbn31117.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan216549-lbn986503-ran6668-rbn30376.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan240610-lbn962442-ran7409-rbn29635.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan264671-lbn938381-ran8150-rbn28894.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan288732-lbn914320-ran8891-rbn28153.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan312794-lbn890258-ran9631-rbn27413.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan336855-lbn866197-ran10372-rbn26672.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan360916-lbn842136-ran11113-rbn25931.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan384977-lbn818075-ran11854-rbn25190.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan409038-lbn794014-ran12595-rbn24449.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan433099-lbn769953-ran13336-rbn23708.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan457160-lbn745892-ran14077-rbn22967.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan481221-lbn721831-ran14818-rbn22226.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan505282-lbn697770-ran15558-rbn21486.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan529343-lbn673709-ran16299-rbn20745.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan553404-lbn649648-ran17040-rbn20004.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan577465-lbn625587-ran17781-rbn19263.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan601526-lbn601526-ran18522-rbn18522.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan625587-lbn577465-ran19263-rbn17781.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan649648-lbn553404-ran20004-rbn17040.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan673709-lbn529343-ran20745-rbn16299.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan697770-lbn505282-ran21486-rbn15558.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan721831-lbn481221-ran22226-rbn14818.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan745892-lbn457160-ran22967-rbn14077.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan769953-lbn433099-ran23708-rbn13336.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan794014-lbn409038-ran24449-rbn12595.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan818075-lbn384977-ran25190-rbn11854.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan842136-lbn360916-ran25931-rbn11113.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan866197-lbn336855-ran26672-rbn10372.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan890258-lbn312794-ran27413-rbn9631.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan914320-lbn288732-ran28153-rbn8891.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan938381-lbn264671-ran28894-rbn8150.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan962442-lbn240610-ran29635-rbn7409.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan986503-lbn216549-ran30376-rbn6668.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1010564-lbn192488-ran31117-rbn5927.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1034625-lbn168427-ran31858-rbn5186.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1058686-lbn144366-ran32599-rbn4445.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1082747-lbn120305-ran33340-rbn3704.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1106808-lbn96244-ran34080-rbn2964.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1130869-lbn72183-ran34821-rbn2223.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1154930-lbn48122-ran35562-rbn1482.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L120T1.0/lan1178991-lbn24061-ran36303-rbn741.in &
wait
