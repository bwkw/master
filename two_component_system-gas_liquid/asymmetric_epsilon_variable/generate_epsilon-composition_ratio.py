import os
import re
from uncertainties import ufloat


def loadfile(filename, composition_ratios, y_averages, y_uncertainties):
    with open(filename) as f:
        for line in f:
            line = line.split()
            composition_ratios.append(float(line[0]))
            y_averages.append(float(line[1]))
            y_uncertainties.append(float(line[2]))

def makefile(filename, epsilon, composition_ratio_average, composition_ratio_uncertainity):
     with open(filename, "a") as f:
        f.write('{} {} {}\n'.format(epsilon, 1-composition_ratio_average, composition_ratio_uncertainity))

path = "./azeotrope/azeotrope/"
files = os.listdir(path)

for file in files:
    number_list = re.findall("\d+\.\d+", file)
    epsilon = number_list[1]
    composition_ratios = []
    y_averages = []
    y_uncertainties = []
    loadfile(path+file, composition_ratios, y_averages, y_uncertainties)
    for i in range(len(composition_ratios)-1):
        x1 = composition_ratios[i]
        x2 = composition_ratios[i+1]
        y1_average = y_averages[i]
        y2_average = y_averages[i+1]
        if ((y1_average > 0) and (y2_average < 0)):
            y1_uncertainity = y_uncertainties[i]
            y2_uncertainity = y_uncertainties[i+1]
            y1 = ufloat(y1_average, y1_uncertainity)
            y2 = ufloat(y2_average, y2_uncertainity)
            composition_ratio_range = (x1 * y2 - x2 * y1)/(y2-y1)
            composition_ratio_average = composition_ratio_range.n
            composition_ratio_uncertainity = composition_ratio_range.s
            # uncertainity_1 = uncertainties[i]
            # uncertainity_2 = uncertainties[i+1]
            # max_x_1 = average_x_1 + uncertainity_1
            # min_x_1 = average_x_1 - uncertainity_1
            # max_x_2 = average_x_2 + uncertainity_2
            # min_x_2 = average_x_2 - uncertainity_2
            # composition_ratio_1 = composition_ratios[i]
            # composition_ratio_2 = composition_ratios[i+1]
            # min_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-max_x_1)/(max_x_2-max_x_1)
            # average_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-average_x_1)/(average_x_2-average_x_1)
            # max_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-min_x_1)/(min_x_2-min_x_1)
            makefile('epsilon-composition_ratio.dat', epsilon, composition_ratio_average, composition_ratio_uncertainity)
            break
