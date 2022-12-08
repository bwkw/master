#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan13881-lbn680153-lcn8430-ran388-rbn19028-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan27761-lbn666273-lcn8430-ran777-rbn18639-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan41642-lbn652392-lcn8430-ran1165-rbn18251-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan55523-lbn638511-lcn8430-ran1553-rbn17863-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan69403-lbn624631-lcn8430-ran1942-rbn17474-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan83284-lbn610750-lcn8430-ran2330-rbn17086-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan97165-lbn596869-lcn8430-ran2718-rbn16698-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan111045-lbn582989-lcn8430-ran3107-rbn16309-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan124926-lbn569108-lcn8430-ran3495-rbn15921-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan138807-lbn555227-lcn8430-ran3883-rbn15533-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan152687-lbn541347-lcn8430-ran4272-rbn15144-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan166568-lbn527466-lcn8430-ran4660-rbn14756-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan180449-lbn513585-lcn8430-ran5048-rbn14368-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan194330-lbn499704-lcn8430-ran5436-rbn13980-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan208210-lbn485824-lcn8430-ran5825-rbn13591-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan222091-lbn471943-lcn8430-ran6213-rbn13203-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan235972-lbn458062-lcn8430-ran6601-rbn12815-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan249852-lbn444182-lcn8430-ran6990-rbn12426-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan263733-lbn430301-lcn8430-ran7378-rbn12038-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan277614-lbn416420-lcn8430-ran7766-rbn11650-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan291494-lbn402540-lcn8430-ran8155-rbn11261-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan305375-lbn388659-lcn8430-ran8543-rbn10873-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan319256-lbn374778-lcn8430-ran8931-rbn10485-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan333136-lbn360898-lcn8430-ran9320-rbn10096-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan347017-lbn347017-lcn8430-ran9708-rbn9708-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan360898-lbn333136-lcn8430-ran10096-rbn9320-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan374778-lbn319256-lcn8430-ran10485-rbn8931-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan388659-lbn305375-lcn8430-ran10873-rbn8543-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan402540-lbn291494-lcn8430-ran11261-rbn8155-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan416420-lbn277614-lcn8430-ran11650-rbn7766-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan430301-lbn263733-lcn8430-ran12038-rbn7378-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan444182-lbn249852-lcn8430-ran12426-rbn6990-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan458062-lbn235972-lcn8430-ran12815-rbn6601-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan471943-lbn222091-lcn8430-ran13203-rbn6213-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan485824-lbn208210-lcn8430-ran13591-rbn5825-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan499704-lbn194330-lcn8430-ran13980-rbn5436-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan513585-lbn180449-lcn8430-ran14368-rbn5048-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan527466-lbn166568-lcn8430-ran14756-rbn4660-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan541347-lbn152687-lcn8430-ran15144-rbn4272-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan555227-lbn138807-lcn8430-ran15533-rbn3883-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan569108-lbn124926-lcn8430-ran15921-rbn3495-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan582989-lbn111045-lcn8430-ran16309-rbn3107-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan596869-lbn97165-lcn8430-ran16698-rbn2718-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan610750-lbn83284-lcn8430-ran17086-rbn2330-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan624631-lbn69403-lcn8430-ran17474-rbn1942-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan638511-lbn55523-lcn8430-ran17863-rbn1553-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan652392-lbn41642-lcn8430-ran18251-rbn1165-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan666273-lbn27761-lcn8430-ran18639-rbn777-rcn236.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.012/lan680153-lbn13881-lcn8430-ran19028-rbn388-rcn236.in &
wait
