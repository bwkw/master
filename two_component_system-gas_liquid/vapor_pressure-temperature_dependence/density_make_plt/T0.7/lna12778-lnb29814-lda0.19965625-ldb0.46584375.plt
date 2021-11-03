set term pdf
set out 'density_img/T0.7/lna12778-lnb29814-lda0.19965625-ldb0.46584375.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density_dat/T0.7/lna12778-lnb29814-lda0.19965625-ldb0.46584375.dat' u 1:2 title '粒子A', 'density_dat/T0.7/lna12778-lnb29814-lda0.19965625-ldb0.46584375.dat' u 1:3 title '粒子B',
