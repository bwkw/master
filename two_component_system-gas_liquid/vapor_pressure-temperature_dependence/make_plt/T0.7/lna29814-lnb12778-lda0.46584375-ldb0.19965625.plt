set term pdf
set out 'density_img/T0.7/lna29814-lnb12778-lda0.46584375-ldb0.19965625.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/T0.7/lna29814-lnb12778-lda0.46584375-ldb0.19965625.density' u 1:2 title '粒子A', 'density/T0.7/lna29814-lnb12778-lda0.46584375-ldb0.19965625.density' u 1:3 title '粒子B',
