#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan13839-lbn678088-lcn10537-ran387-rbn18970-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan27677-lbn664250-lcn10537-ran774-rbn18583-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan41516-lbn650411-lcn10537-ran1161-rbn18196-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan55354-lbn636573-lcn10537-ran1549-rbn17808-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan69193-lbn622734-lcn10537-ran1936-rbn17421-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan83031-lbn608896-lcn10537-ran2323-rbn17034-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan96870-lbn595057-lcn10537-ran2710-rbn16647-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan110708-lbn581219-lcn10537-ran3097-rbn16260-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan124547-lbn567380-lcn10537-ran3484-rbn15873-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan138385-lbn553542-lcn10537-ran3871-rbn15486-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan152224-lbn539703-lcn10537-ran4259-rbn15098-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan166062-lbn525865-lcn10537-ran4646-rbn14711-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan179901-lbn512026-lcn10537-ran5033-rbn14324-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan193740-lbn498187-lcn10537-ran5420-rbn13937-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan207578-lbn484349-lcn10537-ran5807-rbn13550-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan221417-lbn470510-lcn10537-ran6194-rbn13163-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan235255-lbn456672-lcn10537-ran6581-rbn12776-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan249094-lbn442833-lcn10537-ran6969-rbn12388-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan262932-lbn428995-lcn10537-ran7356-rbn12001-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan276771-lbn415156-lcn10537-ran7743-rbn11614-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan290609-lbn401318-lcn10537-ran8130-rbn11227-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan304448-lbn387479-lcn10537-ran8517-rbn10840-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan318286-lbn373641-lcn10537-ran8904-rbn10453-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan332125-lbn359802-lcn10537-ran9291-rbn10066-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan345964-lbn345963-lcn10537-ran9678-rbn9679-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan359802-lbn332125-lcn10537-ran10066-rbn9291-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan373641-lbn318286-lcn10537-ran10453-rbn8904-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan387479-lbn304448-lcn10537-ran10840-rbn8517-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan401318-lbn290609-lcn10537-ran11227-rbn8130-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan415156-lbn276771-lcn10537-ran11614-rbn7743-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan428995-lbn262932-lcn10537-ran12001-rbn7356-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan442833-lbn249094-lcn10537-ran12388-rbn6969-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan456672-lbn235255-lcn10537-ran12776-rbn6581-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan470510-lbn221417-lcn10537-ran13163-rbn6194-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan484349-lbn207578-lcn10537-ran13550-rbn5807-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan498187-lbn193740-lcn10537-ran13937-rbn5420-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan512026-lbn179901-lcn10537-ran14324-rbn5033-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan525865-lbn166062-lcn10537-ran14711-rbn4646-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan539703-lbn152224-lcn10537-ran15098-rbn4259-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan553542-lbn138385-lcn10537-ran15486-rbn3871-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan567380-lbn124547-lcn10537-ran15873-rbn3484-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan581219-lbn110708-lcn10537-ran16260-rbn3097-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan595057-lbn96870-lcn10537-ran16647-rbn2710-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan608896-lbn83031-lcn10537-ran17034-rbn2323-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan622734-lbn69193-lcn10537-ran17421-rbn1936-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan636573-lbn55354-lcn10537-ran17808-rbn1549-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan650411-lbn41516-lcn10537-ran18196-rbn1161-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan664250-lbn27677-lcn10537-ran18583-rbn774-rcn295.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.015/lan678088-lbn13839-lcn10537-ran18970-rbn387-rcn295.in &
wait
