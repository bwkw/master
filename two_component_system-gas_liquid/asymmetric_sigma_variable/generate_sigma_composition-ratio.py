import os
import re


def loadfile(filename, composition_ratios, averages_x, uncertainties):
    with open(filename) as f:
        for line in f:
            line = line.split()
            composition_ratios.append(float(line[0]))
            averages_x.append(float(line[1]))
            uncertainties.append(float(line[2]))

def makefile(filename, sigma, average_composition_ratio, min_composition_ratio, max_composition_ratio):
     with open(filename, "a") as f:
        f.write('{} {} {} {}\n'.format(sigma, average_composition_ratio, min_composition_ratio, max_composition_ratio))

path = "./azeotrope/azeotrope/"
files = os.listdir(path)

for file in files:
    number_list = re.findall("\d+\.\d+", file)
    sigma = number_list[1]
    composition_ratios = []
    averages_x = []
    uncertainties = []
    loadfile(path+file, composition_ratios, averages_x, uncertainties)
    for i in range(len(composition_ratios)-1):
        average_x_1 = averages_x[i]
        average_x_2 = averages_x[i+1]
        if ((average_x_1 < 0) and (average_x_2 > 0)):
            uncertainity_1 = uncertainties[i]
            uncertainity_2 = uncertainties[i+1]
            max_x_1 = average_x_1 + uncertainity_1
            min_x_1 = average_x_1 - uncertainity_1
            max_x_2 = average_x_2 + uncertainity_2
            min_x_2 = average_x_2 - uncertainity_2
            composition_ratio_1 = composition_ratios[i]
            composition_ratio_2 = composition_ratios[i+1]
            min_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-max_x_1)/(max_x_2-max_x_1)
            average_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-average_x_1)/(average_x_2-average_x_1)
            max_composition_ratio = composition_ratio_1 + (composition_ratio_2-composition_ratio_1)*(0-min_x_1)/(min_x_2-min_x_1)
            makefile('sigma_composition-ratio.dat', sigma, average_composition_ratio, min_composition_ratio, max_composition_ratio)
            break
