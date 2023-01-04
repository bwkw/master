set term pdf
set out 'density/density_fitting_img/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.pdf
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.2:0.8]
set tics font 'Arial,10'
set key font 'Arial,16'
set fit logfile 'density/density_fitting/L100T1.0CN50E2.0CD0.01.log'

da(x) = (dal+dag)/2 - ((dal-dag)/2)*tanh((x-a)/(2*b))
db(x) = (dbl+dbg)/2 - ((dbl-dbg)/2)*tanh((x-c)/(2*d))
dc(x) = (dcl+dcg)/2 - ((dcl-dcg)/2)*tanh((x-e)/(2*f))
a=0.5
b=0.006
c=0.5
d=0.006
dal=0.3
dag=0.03
dbl=0.3
dbg=0.03
dcl=0.005
dcg=0.001
fit da(x) 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:2 via a, b, dal, dag
fit db(x) 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:3 via c, d, dbl, dbg
fit dc(x) 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:4 via e, f, dcl, dcg
plot 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:2 title 'A-density' with points pt 1, 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:3 title 'B-density' with points pt 1, 'density/density/L100T1.0E2.0CD0.01/lan403355-lbn292084-lcn7025-ran11284-rbn8171-rcn197.density' u 1:4 title 'C-density' with points pt 1, da(x) title 'A-density-fit' with line lt 1 lc rgb hsv2rgb(0, 1, 1), db(x) title 'B-density-fit' with line lt 1 lc rgb hsv2rgb(1, 1, 0), dc(x) title 'C-density-fit' with line lt 1 lc rgb hsv2rgb(1, 0, 1)