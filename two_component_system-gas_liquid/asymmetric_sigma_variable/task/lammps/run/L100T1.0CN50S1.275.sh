#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan14049-lbn688415-ran393-rbn19259.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan28099-lbn674365-ran786-rbn18866.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan42148-lbn660316-ran1179-rbn18473.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan56197-lbn646267-ran1572-rbn18080.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan70246-lbn632218-ran1965-rbn17687.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan84296-lbn618168-ran2358-rbn17294.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan98345-lbn604119-ran2751-rbn16901.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan112394-lbn590070-ran3144-rbn16508.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan126444-lbn576020-ran3537-rbn16115.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan140493-lbn561971-ran3930-rbn15722.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan154542-lbn547922-ran4323-rbn15329.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan168591-lbn533873-ran4716-rbn14936.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan182641-lbn519823-ran5110-rbn14542.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan196690-lbn505774-ran5503-rbn14149.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan210739-lbn491725-ran5896-rbn13756.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan224788-lbn477676-ran6289-rbn13363.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan238838-lbn463626-ran6682-rbn12970.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan252887-lbn449577-ran7075-rbn12577.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan266936-lbn435528-ran7468-rbn12184.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan280986-lbn421478-ran7861-rbn11791.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan295035-lbn407429-ran8254-rbn11398.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan309084-lbn393380-ran8647-rbn11005.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan323133-lbn379331-ran9040-rbn10612.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan337183-lbn365281-ran9433-rbn10219.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan351232-lbn351232-ran9826-rbn9826.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan365281-lbn337183-ran10219-rbn9433.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan379331-lbn323133-ran10612-rbn9040.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan393380-lbn309084-ran11005-rbn8647.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan407429-lbn295035-ran11398-rbn8254.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan421478-lbn280986-ran11791-rbn7861.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan435528-lbn266936-ran12184-rbn7468.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan449577-lbn252887-ran12577-rbn7075.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan463626-lbn238838-ran12970-rbn6682.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan477676-lbn224788-ran13363-rbn6289.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan491725-lbn210739-ran13756-rbn5896.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan505774-lbn196690-ran14149-rbn5503.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan519823-lbn182641-ran14542-rbn5110.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan533873-lbn168591-ran14936-rbn4716.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan547922-lbn154542-ran15329-rbn4323.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan561971-lbn140493-ran15722-rbn3930.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan576020-lbn126444-ran16115-rbn3537.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan590070-lbn112394-ran16508-rbn3144.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan604119-lbn98345-ran16901-rbn2751.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan618168-lbn84296-ran17294-rbn2358.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan632218-lbn70246-ran17687-rbn1965.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan646267-lbn56197-ran18080-rbn1572.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan660316-lbn42148-ran18473-rbn1179.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan674365-lbn28099-ran18866-rbn786.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0S1.275/lan688415-lbn14049-ran19259-rbn393.in &
wait
