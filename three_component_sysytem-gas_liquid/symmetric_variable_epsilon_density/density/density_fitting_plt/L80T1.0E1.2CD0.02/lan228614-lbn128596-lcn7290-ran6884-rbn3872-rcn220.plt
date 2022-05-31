set term pdf
set out 'density/density_fitting_img/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.pdf
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.2:0.8]
set tics font 'Arial,10'
set key font 'Arial,16'
set fit logfile 'density/density_fitting/L80T1.0CN50E1.2CD0.02.log'

da(x) = (dal+dag)/2 + ((dal-dag)/2)*tanh((x-a)/(2*b))
db(x) = (dbl+dbg)/2 + ((dbl-dbg)/2)*tanh((x-c)/(2*d))
fit da(x) 'density/density/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.density' u 1:2 via a, b, dal, dag
fit db(x) 'density/density/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.density' u 1:3 via c, d, dbl, dbg

plot 'density/density/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.density' u 1:2 title 'density_a' with points pt 1, da(x) title 'density_a-fit' with line lt 1 lc rgb hsv2rgb(0, 1, 1)
replot 'density/density/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.density' u 1:3 title 'density_b' with points pt 1, db(x) title 'density_b-fit' with line lt 1 lc rgb hsv2rgb(1, 1, 0)
