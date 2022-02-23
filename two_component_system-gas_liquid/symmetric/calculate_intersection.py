from uncertainties import ufloat

a = ufloat(-0.0621192, 0.02319)
b = ufloat(0.0654622, 0.02322)
c = ufloat(-0.00367948, 0.005741)
d = ufloat(-0.0616139, 0.02458)
e = ufloat(0.0575198, 0.02462)
f = ufloat(0.000137825, 0.006087)

f = a*x**2 + b*x + c
g = d*x**2 + e*x + f