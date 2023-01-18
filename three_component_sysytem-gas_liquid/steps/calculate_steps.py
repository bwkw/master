# 液相・気相密度から段数を計算するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、シグマを入れる

from uncertainties import ufloat


def three_component_curve1(x):
    # C0.005
    a = ufloat(1.94731, 0.02315)
    b = ufloat(-4.43414, 0.1972)
    c = ufloat(8.4616, 0.5791)
    d = ufloat(-8.14931, 0.7003)
    e = ufloat(3.17887, 0.2984)
    # y = 2.07149*x - 6.30785*x**2 + 17.4749*x**3 - 25.4164*x**4 + 14.641*x**5
    y = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
    return y


def three_component_curve2(x):
    # C0.01
    a = ufloat(2.05021, 0.02349)
    b = ufloat(-4.77948, 0.1988)
    c = ufloat(8.98244, 0.5799)
    d = ufloat(-8.4276, 0.6967)
    e = ufloat(3.18034, 0.2949)
    # y = 2.16174*x - 6.28497*x**2 + 15.5079*x**3 - 19.7859*x**4 + 10.0914*x**5
    y = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
    return y


def three_component_curve3(x):
    # C0.015
    a = ufloat(2.1126, 0.03629)
    b = ufloat(-4.76997, 0.313)
    c = ufloat(8.57174, 0.9305)
    d = ufloat(-7.78683, 1.139)
    e = ufloat(2.89484, 0.491)
    # y = 2.18368*x - 5.62138*x**2 + 11.799*x**3 - 12.6284*x**4 + 5.39815*x**5
    y = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
    return y


def three_component_curve4(x):
    # C0.02
    a = ufloat(2.21562, 0.04708)
    b = ufloat(-5.00596, 0.4095)
    c = ufloat(8.63721, 1.228)
    d = ufloat(-7.53551, 1.518)
    e = ufloat(2.72652, 0.6607)
    # y = 2.21562*x - 5.00596*x**2 + 8.63721*x**3 - 7.53551*x**4 + 2.72652*x**5
    y = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
    return y


def two_component_curve(x):
    a = ufloat(1.76254, 0.01558)
    b = ufloat(-3.63129, 0.1302)
    c = ufloat(6.90383, 0.3754)
    d = ufloat(-6.72308, 0.446)
    e = ufloat(2.68621, 0.1867)
    # y = 1.82211*x - 4.55978*x**2 + 11.699*x**3 - 16.9661*x**4 + 10.5281*x**5
    y = a*x + b*x**2 + c*x**3 + d*x**4 + e*x**5
    return y


three_b_liquid_concentration1 = 0.1
three_b_liquid_concentration2 = 0.1
three_b_liquid_concentration3 = 0.1
three_b_liquid_concentration4 = 0.1
two_b_liquid_concentration = 0.1
distillation_number = 3

for i in range(distillation_number):
    three_b_gas_concentration1 = three_component_curve1(
        three_b_liquid_concentration1)
    three_b_liquid_concentration1 = three_b_gas_concentration1

for i in range(distillation_number):
    three_b_gas_concentration2 = three_component_curve2(
        three_b_liquid_concentration2)
    three_b_liquid_concentration2 = three_b_gas_concentration2

for i in range(distillation_number):
    three_b_gas_concentration3 = three_component_curve3(
        three_b_liquid_concentration3)
    three_b_liquid_concentration3 = three_b_gas_concentration3

for i in range(distillation_number):
    three_b_gas_concentration4 = three_component_curve4(
        three_b_liquid_concentration4)
    three_b_liquid_concentration4 = three_b_gas_concentration4

for i in range(distillation_number):
    two_b_gas_concentration = two_component_curve(two_b_liquid_concentration)
    two_b_liquid_concentration = two_b_gas_concentration

print("二体:{}".format(two_b_liquid_concentration))
print("三体C0.005:{}".format(three_b_liquid_concentration1))
print("三体C0.01:{}".format(three_b_liquid_concentration2))
print("三体C0.015:{}".format(three_b_liquid_concentration3))
print("三体C0.02:{}".format(three_b_liquid_concentration4))

# 二体:0.2508900579511511
# 三体C0.005:0.2895980924066095
# 三体C0.01:0.3170073858009207
# 三体C0.015:0.3437287393675235
# 三体C0.02:0.3749792963728017

# 二体:0.251+/-0.008
# 三体C0.005:0.292+/-0.015
# 三体C0.01:0.318+/-0.017
# 三体C0.015:0.344+/-0.031
# 三体C0.02:0.37+/-0.05
