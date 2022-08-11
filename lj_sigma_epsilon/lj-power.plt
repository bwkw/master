set term pdf
set out 'lj-power.pdf'
set xlabel '{/Arial-Italic r}'
set ylabel '{/Arial-Italic power}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.9:1.2]
set tics font 'Arial,10'
set key font 'Arial,16'

f(x) = 4 * (12/(x**13) - 6/(x**7))
g(x) = 4 * 1.2 * (12/(x**13) - 6/(x**7))
h(x) = 4 * (12*(1.2**12)/(x**13) - 6*(1.2**6)/(x**7))

plot f(x), g(x), h(x)
