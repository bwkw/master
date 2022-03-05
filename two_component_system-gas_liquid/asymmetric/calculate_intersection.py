from uncertainties import ufloat, umath


a = ufloat(-0.0549019, 0.0006286)
b = ufloat(0.0555037, 0.0006483)
c = ufloat(-0.000602438, 0.0001405)
d = ufloat(-0.0547626, 0.0005634)
e = ufloat(0.0545152, 0.0005811)
f = ufloat(-0.00012187, 0.000126)

inter_section1 = (-(b-e)-umath.sqrt(((b-e)**2-4*(a-d)*(c-f))))/(2*(a-d))
inter_section2 = (-(b-e)+umath.sqrt(((b-e)**2-4*(a-d)*(c-f))))/(2*(a-d))

print(inter_section1)
print(inter_section2)
