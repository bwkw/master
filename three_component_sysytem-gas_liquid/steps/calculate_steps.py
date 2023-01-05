# 液相・気相密度から段数を計算するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、シグマを入れる

import os
import re
import sys


def three_component_curve(x) :
    y = 2.16178*x - 6.28502*x**2 + 15.5061*x**3 - 19.7786*x**4 + 10.0838*x**5
    return y

def two_component_curve(x) :
    y = 1.82286*x - 4.5718*x**2 + 11.7697*x**3 - 17.139*x**4 + 10.6755*x**5
    return y


three_b_liquid_concentration = 0.1
two_b_liquid_concentration = 0.1
distillation_number = 3

for i in range(distillation_number):
    three_b_gas_concentration = three_component_curve(three_b_liquid_concentration)
    three_b_liquid_concentration = three_b_gas_concentration

for i in range(distillation_number):
    two_b_gas_concentration = two_component_curve(two_b_liquid_concentration)
    two_b_liquid_concentration = two_b_gas_concentration

print("三体:{}".format(three_b_liquid_concentration))
print("二体:{}".format(two_b_liquid_concentration))
