set term pdf
set out '3rd-component-addition-ratio-steps.pdf
set xlabel '{/Arial-Italic Cの添加割合(%)}'
set ylabel '{/Arial-Italic 三段で到達する目的物質Bの濃度}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [-0.1:2.1]
set yrange [0.2:0.45]
set tics font 'Arial,10'
set key font 'Arial,16'

plot '3rd-component-addition-ratio-steps.dat' u 1:2:3 with yerrorbars pt 0 notitle
