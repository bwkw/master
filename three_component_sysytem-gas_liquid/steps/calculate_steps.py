# 液相・気相密度から段数を計算するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、シグマを入れる

import os
import re
import sys

def three_component_curve1(x):
    # C0.005
    y = 2.16174*x - 6.28497*x**2 + 15.5079*x**3 - 19.7859*x**4 + 10.0914*x**5
    return y

def three_component_curve2(x):
    # C0.01
    y = 2.16174*x - 6.28497*x**2 + 15.5079*x**3 - 19.7859*x**4 + 10.0914*x**5
    return y

def three_component_curve3(x):
    # C0.015
    y = 2.16174*x - 6.28497*x**2 + 15.5079*x**3 - 19.7859*x**4 + 10.0914*x**5
    return y

def three_component_curve4(x):
    # C0.02
    y = 2.21562*x - 5.00596*x**2 + 8.63721*x**3 - -7.53551*x**4 + 2.72652*x**5
    return y

def two_component_curve(x):
    # C0.01
    y = 1.82211*x - 4.55978*x**2 + 11.699*x**3 - 16.9661*x**4 + 10.5281*x**5
    return y


three_b_liquid_concentration1 = 0.1
three_b_liquid_concentration2 = 0.1
three_b_liquid_concentration3 = 0.1
three_b_liquid_concentration4 = 0.1
two_b_liquid_concentration = 0.1
distillation_number = 3

for i in range(distillation_number):
    three_b_gas_concentration1 = three_component_curve1(three_b_liquid_concentration1)
    three_b_liquid_concentration1 = three_b_gas_concentration1

for i in range(distillation_number):
    three_b_gas_concentration2 = three_component_curve2(three_b_liquid_concentration2)
    three_b_liquid_concentration2 = three_b_gas_concentration2

for i in range(distillation_number):
    three_b_gas_concentration3 = three_component_curve3(three_b_liquid_concentration3)
    three_b_liquid_concentration3 = three_b_gas_concentration3

for i in range(distillation_number):
    three_b_gas_concentration4 = three_component_curve4(three_b_liquid_concentration4)
    three_b_liquid_concentration4 = three_b_gas_concentration4

for i in range(distillation_number):
    two_b_gas_concentration = two_component_curve(two_b_liquid_concentration)
    two_b_liquid_concentration = two_b_gas_concentration

print("二体:{}".format(two_b_liquid_concentration))
print("三体:{}".format(three_b_liquid_concentration1))
print("三体:{}".format(three_b_liquid_concentration2))
print("三体:{}".format(three_b_liquid_concentration3))
print("三体:{}".format(three_b_liquid_concentration4))

# 三体:0.3170073858009207
# 二体:0.2508900579511511
