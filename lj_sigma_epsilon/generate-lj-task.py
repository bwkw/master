filename = "task-lj.sh"

for i in range(201):
    r = format((0.5 + 0.01*i),'.3f')
    with open(filename, "a") as f:
        f.write("lmp_serial < lj-input/lj{}.input > lj-dat/lj{}.dat\n".format(r, r))
