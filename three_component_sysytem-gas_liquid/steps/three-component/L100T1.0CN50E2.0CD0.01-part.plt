set term pdf
set out 'L100T1.0CN50E2.0CD0.01-part.pdf
set xlabel '{/Arial-Italic 液相密度}'
set ylabel '{/Arial-Italic 気相密度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.000:0.65]
set tics font 'Arial,10'
set key font 'Arial,16'

plot 'L100T1.0CN50E2.0CD0.01-part.dat' u 3:1:($3-$4):($3+$4):($1-$2):($1+$2) with xyerrorbars pt 0 ps 0 notitle, x notitle
