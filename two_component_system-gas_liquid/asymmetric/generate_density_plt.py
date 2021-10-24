def make_file(filename, left_num_a, left_num_b, left_density_a, left_density_b, temperature):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density_img/lna{}-lnb{}-lda{}-ldb{}-T{}.pdf'\n".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature))
        f.write("set xlabel '{/Arial-Italic x}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,16'\n")
        f.write("plot 'density/lna{0}-lnb{1}-lda{2}-ldb{3}-T{4}.density' u 1:2 title '粒子A', 'density/lna{0}-lnb{1}-lda{2}-ldb{3}-T{4}.density' u 1:3 title '粒子B',\n".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature))
        
half_volume = 40*40*40
left_num = 22*22*22*4
left_num_a_ratio = 0.6
left_num_a = round(left_num * left_num_a_ratio)
left_num_b = left_num - left_num_a
right_num = 0
left_density_a = left_num_a/half_volume
left_density_b = left_num_b/half_volume
temperature = 0.9

make_file("make_plt/lna{}-lnb{}-lda{}-ldb{}-T{}.plt".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature), left_num_a, left_num_b, left_density_a, left_density_b, temperature)
