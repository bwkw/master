set term pdf
set out 'density_img/lna35123-lnb52685-lda0.548796875-ldb0.823203125-T0.905.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna35123-lnb52685-lda0.548796875-ldb0.823203125-T0.905.density' u 1:2 title '粒子A', 'density/lna35123-lnb52685-lda0.548796875-ldb0.823203125-T0.905.density' u 1:3 title '粒子B',
