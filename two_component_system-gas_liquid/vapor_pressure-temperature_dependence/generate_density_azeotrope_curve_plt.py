# コマンドライン引数一つ目で温度を指定

import sys

def make_file(filename, temperature):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density_azeotrope_curve_img/T{}.pdf'\n".format(temperature))
        f.write("set xlabel '{/Arial-Italic a-composition-ratio}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set xrange [0.0:1.0]\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,10'\n")
        f.write("set key right outside\n")
        f.write("set key spacing 1.4\n")
        f.write("plot 'density_azeotrope_curve_dat/T{0}.dat' u 1:2 title '粒子A', 'density_azeotrope_curve_dat/T{0}.dat' u 1:3 title '粒子B',\n".format(temperature))
        

temperature = float(sys.argv[1])
make_file("density_azeotrope_curve_make_plt/T{}.plt".format(temperature), temperature)
