import sys

def make_file(filename, left_num, right_num, left_density, right_density, temperature):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density_img/ln{}-rn{}-ld{}-rd{}-T{}.pdf'\n".format(left_num, right_num, left_density, right_density, temperature))
        f.write("set xlabel '{/Arial-Italic x}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,16'\n")
        f.write("plot 'density/ln{0}-rn{1}-ld{2}-rd{3}-T{4}.density' u 1:2 title '粒子A', 'density/ln{0}-rn{1}-ld{2}-rd{3}-T{4}.density' u 1:3 title '粒子B',\n".format(left_num, right_num, left_density, right_density, temperature))
        
half_volume = 40*40*40
left_num = 22*22*22*4
right_num = 22*22*22*4
left_density = left_num/half_volume
right_density = right_num/half_volume
temperature = float(sys.argv[1])

make_file("make_plt/ln{}-rn{}-ld{}-rd{}-T{}.plt".format(left_num, right_num, left_density, right_density, temperature), left_num, right_num, left_density, right_density, temperature)
