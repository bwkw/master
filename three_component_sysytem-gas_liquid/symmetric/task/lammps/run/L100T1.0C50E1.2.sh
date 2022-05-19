#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan14035-lbn687729-ran393-rbn19239.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan28071-lbn673693-ran785-rbn18847.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan42106-lbn659658-ran1178-rbn18454.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan56141-lbn645623-ran1571-rbn18061.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan70176-lbn631588-ran1963-rbn17669.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan84212-lbn617552-ran2356-rbn17276.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan98247-lbn603517-ran2748-rbn16884.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan112282-lbn589482-ran3141-rbn16491.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan126318-lbn575446-ran3534-rbn16098.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan140353-lbn561411-ran3926-rbn15706.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan154388-lbn547376-ran4319-rbn15313.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan168423-lbn533341-ran4712-rbn14920.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan182459-lbn519305-ran5104-rbn14528.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan196494-lbn505270-ran5497-rbn14135.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan210529-lbn491235-ran5890-rbn13742.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan224564-lbn477200-ran6282-rbn13350.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan238600-lbn463164-ran6675-rbn12957.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan252635-lbn449129-ran7068-rbn12564.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan266670-lbn435094-ran7460-rbn12172.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan280706-lbn421058-ran7853-rbn11779.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan294741-lbn407023-ran8245-rbn11387.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan308776-lbn392988-ran8638-rbn10994.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan322811-lbn378953-ran9031-rbn10601.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan336847-lbn364917-ran9423-rbn10209.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan350882-lbn350882-ran9816-rbn9816.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan364917-lbn336847-ran10209-rbn9423.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan378953-lbn322811-ran10601-rbn9031.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan392988-lbn308776-ran10994-rbn8638.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan407023-lbn294741-ran11387-rbn8245.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan421058-lbn280706-ran11779-rbn7853.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan435094-lbn266670-ran12172-rbn7460.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan449129-lbn252635-ran12564-rbn7068.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan463164-lbn238600-ran12957-rbn6675.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan477200-lbn224564-ran13350-rbn6282.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan491235-lbn210529-ran13742-rbn5890.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan505270-lbn196494-ran14135-rbn5497.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan519305-lbn182459-ran14528-rbn5104.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan533341-lbn168423-ran14920-rbn4712.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan547376-lbn154388-ran15313-rbn4319.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan561411-lbn140353-ran15706-rbn3926.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan575446-lbn126318-ran16098-rbn3534.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan589482-lbn112282-ran16491-rbn3141.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan603517-lbn98247-ran16884-rbn2748.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan617552-lbn84212-ran17276-rbn2356.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan631588-lbn70176-ran17669-rbn1963.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan645623-lbn56141-ran18061-rbn1571.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan659658-lbn42106-ran18454-rbn1178.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan673693-lbn28071-ran18847-rbn785.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.2/lan687729-lbn14035-ran19239-rbn393.in &
wait
