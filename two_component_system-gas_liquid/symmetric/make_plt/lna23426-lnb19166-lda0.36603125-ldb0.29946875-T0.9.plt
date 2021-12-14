set term pdf
set out 'density_img/lna23426-lnb19166-lda0.36603125-ldb0.29946875-T0.9.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna23426-lnb19166-lda0.36603125-ldb0.29946875-T0.9.density' u 1:2 title '粒子A', 'density/lna23426-lnb19166-lda0.36603125-ldb0.29946875-T0.9.density' u 1:3 title '粒子B',
