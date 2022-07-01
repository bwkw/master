#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan13979-lbn684973-lcn3512-ran391-rbn19163-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan27958-lbn670994-lcn3512-ran782-rbn18772-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan41937-lbn657015-lcn3512-ran1173-rbn18381-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan55916-lbn643036-lcn3512-ran1564-rbn17990-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan69895-lbn629057-lcn3512-ran1955-rbn17599-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan83874-lbn615078-lcn3512-ran2346-rbn17208-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan97853-lbn601099-lcn3512-ran2738-rbn16816-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan111832-lbn587120-lcn3512-ran3129-rbn16425-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan125811-lbn573141-lcn3512-ran3520-rbn16034-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan139790-lbn559162-lcn3512-ran3911-rbn15643-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan153769-lbn545183-lcn3512-ran4302-rbn15252-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan167748-lbn531204-lcn3512-ran4693-rbn14861-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan181728-lbn517224-lcn3512-ran5084-rbn14470-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan195707-lbn503245-lcn3512-ran5475-rbn14079-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan209686-lbn489266-lcn3512-ran5866-rbn13688-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan223665-lbn475287-lcn3512-ran6257-rbn13297-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan237644-lbn461308-lcn3512-ran6648-rbn12906-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan251623-lbn447329-lcn3512-ran7039-rbn12515-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan265602-lbn433350-lcn3512-ran7431-rbn12123-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan279581-lbn419371-lcn3512-ran7822-rbn11732-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan293560-lbn405392-lcn3512-ran8213-rbn11341-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan307539-lbn391413-lcn3512-ran8604-rbn10950-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan321518-lbn377434-lcn3512-ran8995-rbn10559-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan335497-lbn363455-lcn3512-ran9386-rbn10168-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan349476-lbn349476-lcn3512-ran9777-rbn9777-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan363455-lbn335497-lcn3512-ran10168-rbn9386-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan377434-lbn321518-lcn3512-ran10559-rbn8995-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan391413-lbn307539-lcn3512-ran10950-rbn8604-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan405392-lbn293560-lcn3512-ran11341-rbn8213-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan419371-lbn279581-lcn3512-ran11732-rbn7822-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan433350-lbn265602-lcn3512-ran12123-rbn7431-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan447329-lbn251623-lcn3512-ran12515-rbn7039-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan461308-lbn237644-lcn3512-ran12906-rbn6648-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan475287-lbn223665-lcn3512-ran13297-rbn6257-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan489266-lbn209686-lcn3512-ran13688-rbn5866-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan503245-lbn195707-lcn3512-ran14079-rbn5475-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan517224-lbn181728-lcn3512-ran14470-rbn5084-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan531204-lbn167748-lcn3512-ran14861-rbn4693-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan545183-lbn153769-lcn3512-ran15252-rbn4302-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan559162-lbn139790-lcn3512-ran15643-rbn3911-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan573141-lbn125811-lcn3512-ran16034-rbn3520-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan587120-lbn111832-lcn3512-ran16425-rbn3129-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan601099-lbn97853-lcn3512-ran16816-rbn2738-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan615078-lbn83874-lcn3512-ran17208-rbn2346-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan629057-lbn69895-lcn3512-ran17599-rbn1955-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan643036-lbn55916-lcn3512-ran17990-rbn1564-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan657015-lbn41937-lcn3512-ran18381-rbn1173-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan670994-lbn27958-lcn3512-ran18772-rbn782-rcn98.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.005/lan684973-lbn13979-lcn3512-ran19163-rbn391-rcn98.in &
wait
