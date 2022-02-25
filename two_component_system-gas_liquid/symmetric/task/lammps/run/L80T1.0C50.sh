#!/bin/sh

#SBATCH -p F72cpu
#SBATCH -N 72
#SBATCH -n 9216
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan7290-lbn357210-ran220-rbn10756.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan14580-lbn349920-ran439-rbn10537.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan21870-lbn342630-ran659-rbn10317.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan29160-lbn335340-ran878-rbn10098.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan36450-lbn328050-ran1098-rbn9878.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan43740-lbn320760-ran1317-rbn9659.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan51030-lbn313470-ran1537-rbn9439.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan58320-lbn306180-ran1756-rbn9220.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan65610-lbn298890-ran1976-rbn9000.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan72900-lbn291600-ran2195-rbn8781.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan80190-lbn284310-ran2415-rbn8561.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan87480-lbn277020-ran2634-rbn8342.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan94770-lbn269730-ran2854-rbn8122.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan102060-lbn262440-ran3073-rbn7903.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan109350-lbn255150-ran3293-rbn7683.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan116640-lbn247860-ran3512-rbn7464.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan123930-lbn240570-ran3732-rbn7244.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan131220-lbn233280-ran3951-rbn7025.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan138510-lbn225990-ran4171-rbn6805.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan145800-lbn218700-ran4390-rbn6586.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan153090-lbn211410-ran4610-rbn6366.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan160380-lbn204120-ran4829-rbn6147.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan167670-lbn196830-ran5049-rbn5927.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan174960-lbn189540-ran5268-rbn5708.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan182250-lbn182250-ran5488-rbn5488.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan189540-lbn174960-ran5708-rbn5268.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan196830-lbn167670-ran5927-rbn5049.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan204120-lbn160380-ran6147-rbn4829.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan211410-lbn153090-ran6366-rbn4610.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan218700-lbn145800-ran6586-rbn4390.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan225990-lbn138510-ran6805-rbn4171.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan233280-lbn131220-ran7025-rbn3951.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan240570-lbn123930-ran7244-rbn3732.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan247860-lbn116640-ran7464-rbn3512.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan255150-lbn109350-ran7683-rbn3293.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan262440-lbn102060-ran7903-rbn3073.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan269730-lbn94770-ran8122-rbn2854.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan277020-lbn87480-ran8342-rbn2634.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan284310-lbn80190-ran8561-rbn2415.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan291600-lbn72900-ran8781-rbn2195.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan298890-lbn65610-ran9000-rbn1976.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan306180-lbn58320-ran9220-rbn1756.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan313470-lbn51030-ran9439-rbn1537.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan320760-lbn43740-ran9659-rbn1317.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan328050-lbn36450-ran9878-rbn1098.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan335340-lbn29160-ran10098-rbn878.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan342630-lbn21870-ran10317-rbn659.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan349920-lbn14580-ran10537-rbn439.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 lammps < data/in.melt/L80T1.0/lan357210-lbn7290-ran10756-rbn220.in &
wait
