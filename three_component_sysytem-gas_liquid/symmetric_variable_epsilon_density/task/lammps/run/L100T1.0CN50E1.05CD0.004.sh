#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan13993-lbn685661-lcn2810-ran391-rbn19182-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan27986-lbn671668-lcn2810-ran783-rbn18790-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan41979-lbn657675-lcn2810-ran1174-rbn18399-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan55972-lbn643682-lcn2810-ran1566-rbn18007-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan69965-lbn629689-lcn2810-ran1957-rbn17616-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan83958-lbn615696-lcn2810-ran2349-rbn17224-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan97952-lbn601702-lcn2810-ran2740-rbn16833-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan111945-lbn587709-lcn2810-ran3132-rbn16441-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan125938-lbn573716-lcn2810-ran3523-rbn16050-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan139931-lbn559723-lcn2810-ran3915-rbn15658-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan153924-lbn545730-lcn2810-ran4306-rbn15267-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan167917-lbn531737-lcn2810-ran4698-rbn14875-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan181910-lbn517744-lcn2810-ran5089-rbn14484-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan195903-lbn503751-lcn2810-ran5480-rbn14093-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan209896-lbn489758-lcn2810-ran5872-rbn13701-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan223889-lbn475765-lcn2810-ran6263-rbn13310-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan237882-lbn461772-lcn2810-ran6655-rbn12918-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan251875-lbn447779-lcn2810-ran7046-rbn12527-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan265869-lbn433785-lcn2810-ran7438-rbn12135-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan279862-lbn419792-lcn2810-ran7829-rbn11744-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan293855-lbn405799-lcn2810-ran8221-rbn11352-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan307848-lbn391806-lcn2810-ran8612-rbn10961-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan321841-lbn377813-lcn2810-ran9004-rbn10569-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan335834-lbn363820-lcn2810-ran9395-rbn10178-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan349827-lbn349827-lcn2810-ran9786-rbn9787-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan363820-lbn335834-lcn2810-ran10178-rbn9395-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan377813-lbn321841-lcn2810-ran10569-rbn9004-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan391806-lbn307848-lcn2810-ran10961-rbn8612-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan405799-lbn293855-lcn2810-ran11352-rbn8221-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan419792-lbn279862-lcn2810-ran11744-rbn7829-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan433785-lbn265869-lcn2810-ran12135-rbn7438-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan447779-lbn251875-lcn2810-ran12527-rbn7046-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan461772-lbn237882-lcn2810-ran12918-rbn6655-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan475765-lbn223889-lcn2810-ran13310-rbn6263-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan489758-lbn209896-lcn2810-ran13701-rbn5872-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan503751-lbn195903-lcn2810-ran14093-rbn5480-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan517744-lbn181910-lcn2810-ran14484-rbn5089-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan531737-lbn167917-lcn2810-ran14875-rbn4698-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan545730-lbn153924-lcn2810-ran15267-rbn4306-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan559723-lbn139931-lcn2810-ran15658-rbn3915-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan573716-lbn125938-lcn2810-ran16050-rbn3523-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan587709-lbn111945-lcn2810-ran16441-rbn3132-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan601702-lbn97952-lcn2810-ran16833-rbn2740-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan615696-lbn83958-lcn2810-ran17224-rbn2349-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan629689-lbn69965-lcn2810-ran17616-rbn1957-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan643682-lbn55972-lcn2810-ran18007-rbn1566-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan657675-lbn41979-lcn2810-ran18399-rbn1174-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan671668-lbn27986-lcn2810-ran18790-rbn783-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 4 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan685661-lbn13993-lcn2810-ran19182-rbn391-rcn79.in &
wait
