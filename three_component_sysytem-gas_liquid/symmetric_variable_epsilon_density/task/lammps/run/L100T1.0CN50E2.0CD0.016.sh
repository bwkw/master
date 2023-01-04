#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan13824-lbn677401-lcn11239-ran387-rbn18951-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan27649-lbn663576-lcn11239-ran774-rbn18564-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan41474-lbn649751-lcn11239-ran1160-rbn18178-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan55298-lbn635927-lcn11239-ran1547-rbn17791-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan69122-lbn622103-lcn11239-ran1934-rbn17404-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan82947-lbn608278-lcn11239-ran2321-rbn17017-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan96772-lbn594453-lcn11239-ran2707-rbn16631-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan110596-lbn580629-lcn11239-ran3094-rbn16244-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan124420-lbn566805-lcn11239-ran3481-rbn15857-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan138245-lbn552980-lcn11239-ran3868-rbn15470-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan152070-lbn539155-lcn11239-ran4254-rbn15084-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan165894-lbn525331-lcn11239-ran4641-rbn14697-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan179718-lbn511507-lcn11239-ran5028-rbn14310-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan193543-lbn497682-lcn11239-ran5415-rbn13923-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan207368-lbn483857-lcn11239-ran5801-rbn13537-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan221192-lbn470033-lcn11239-ran6188-rbn13150-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan235017-lbn456208-lcn11239-ran6575-rbn12763-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan248841-lbn442384-lcn11239-ran6962-rbn12376-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan262666-lbn428559-lcn11239-ran7348-rbn11990-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan276490-lbn414735-lcn11239-ran7735-rbn11603-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan290314-lbn400911-lcn11239-ran8122-rbn11216-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan304139-lbn387086-lcn11239-ran8509-rbn10829-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan317964-lbn373261-lcn11239-ran8895-rbn10443-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan331788-lbn359437-lcn11239-ran9282-rbn10056-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan345612-lbn345613-lcn11239-ran9669-rbn9669-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan359437-lbn331788-lcn11239-ran10056-rbn9282-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan373262-lbn317963-lcn11239-ran10443-rbn8895-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan387086-lbn304139-lcn11239-ran10829-rbn8509-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan400910-lbn290315-lcn11239-ran11216-rbn8122-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan414735-lbn276490-lcn11239-ran11603-rbn7735-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan428560-lbn262665-lcn11239-ran11990-rbn7348-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan442384-lbn248841-lcn11239-ran12376-rbn6962-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan456208-lbn235017-lcn11239-ran12763-rbn6575-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan470033-lbn221192-lcn11239-ran13150-rbn6188-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan483857-lbn207368-lcn11239-ran13537-rbn5801-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan497682-lbn193543-lcn11239-ran13923-rbn5415-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan511506-lbn179719-lcn11239-ran14310-rbn5028-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan525331-lbn165894-lcn11239-ran14697-rbn4641-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan539156-lbn152069-lcn11239-ran15084-rbn4254-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan552980-lbn138245-lcn11239-ran15470-rbn3868-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan566804-lbn124421-lcn11239-ran15857-rbn3481-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan580629-lbn110596-lcn11239-ran16244-rbn3094-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan594454-lbn96771-lcn11239-ran16631-rbn2707-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan608278-lbn82947-lcn11239-ran17017-rbn2321-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan622102-lbn69123-lcn11239-ran17404-rbn1934-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan635927-lbn55298-lcn11239-ran17791-rbn1547-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan649752-lbn41473-lcn11239-ran18178-rbn1160-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan663576-lbn27649-lcn11239-ran18564-rbn774-rcn314.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.016/lan677400-lbn13825-lcn11239-ran18951-rbn387-rcn314.in &
wait
