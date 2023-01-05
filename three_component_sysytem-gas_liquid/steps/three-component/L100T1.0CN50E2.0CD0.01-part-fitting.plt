set term pdf
set out 'L100T1.0CN50E2.0CD0.01-part-fitting.pdf
set xlabel '{/Arial-Italic 液相密度}'
set ylabel '{/Arial-Italic 気相密度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
set key right bottom

f(x) = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
fit f(x) 'L100T1.0CN50E2.0CD0.01-part.dat' u 2:1 via a, b, c,d, e

plot f(x) with line lt 1 lc rgb hsv2rgb(0, 1, 1) title 'fitting', 'L100T1.0CN50E2.0CD0.01-part.dat' u 2:1 with points pt 1 title 'original', x
