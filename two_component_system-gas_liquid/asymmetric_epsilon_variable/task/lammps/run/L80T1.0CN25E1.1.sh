#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan14580-lbn349920-ran439-rbn10537.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan29160-lbn335340-ran878-rbn10098.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan43740-lbn320760-ran1317-rbn9659.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan58320-lbn306180-ran1756-rbn9220.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan72900-lbn291600-ran2195-rbn8781.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan87480-lbn277020-ran2634-rbn8342.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan102060-lbn262440-ran3073-rbn7903.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan116640-lbn247860-ran3512-rbn7464.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan131220-lbn233280-ran3951-rbn7025.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan145800-lbn218700-ran4390-rbn6586.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan160380-lbn204120-ran4829-rbn6147.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan174960-lbn189540-ran5268-rbn5708.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan189540-lbn174960-ran5708-rbn5268.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan204120-lbn160380-ran6147-rbn4829.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan218700-lbn145800-ran6586-rbn4390.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan233280-lbn131220-ran7025-rbn3951.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan247860-lbn116640-ran7464-rbn3512.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan262440-lbn102060-ran7903-rbn3073.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan277020-lbn87480-ran8342-rbn2634.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan291600-lbn72900-ran8781-rbn2195.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan306180-lbn58320-ran9220-rbn1756.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan320760-lbn43740-ran9659-rbn1317.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan335340-lbn29160-ran10098-rbn878.in
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.1/lan349920-lbn14580-ran10537-rbn439.in
wait
