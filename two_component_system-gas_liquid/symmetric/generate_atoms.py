# atomsファイルを作成
# コマンドライン引数は、
# 1. 組成比を何分割するか？

import math
import os
import random
import sys

class Atom:
    def __init__(self, x, y, z, xvel, yvel, zvel, type):
        self.x = x
        self.y = y
        self.z = z
        self.vx = xvel
        self.vy = yvel
        self.vz = zvel
        self.type = type


def add_ball(atoms, left_num, left_num_a, right_num, right_num_a, length):
    left_n = round((left_num/4)**(1/3))
    left_s = length/left_n
    left_h = left_s/2

    left_xvel_list = [0] * (left_num)
    left_yvel_list = [0] * (left_num)
    left_zvel_list = [0] * (left_num)
    for i in range(len(left_xvel_list)):
        random_x = random.uniform(-1, 1)
        left_xvel_list[i] = random_x
    for i in range(len(left_yvel_list)):
        random_y = random.uniform(-1, 1) 
        left_yvel_list[i] = random_y
    for i in range(len(left_zvel_list)):
        random_z = random.uniform(-1, 1)
        left_zvel_list[i] = random_z
    left_xvel_list_av = sum(left_xvel_list)/len(left_xvel_list)
    left_yvel_list_av = sum(left_yvel_list)/len(left_yvel_list)
    left_zvel_list_av = sum(left_zvel_list)/len(left_zvel_list)  
    left_xvel_list = list(map(lambda x: x - left_xvel_list_av, left_xvel_list))
    left_yvel_list = list(map(lambda y: y - left_yvel_list_av, left_yvel_list))
    left_zvel_list = list(map(lambda z: z - left_zvel_list_av, left_zvel_list))

    left_type_list = [2] * (left_num)
    for i in range(left_num_a):
        left_type_list[i] = 1
    random.shuffle(left_type_list)

    num=0
    for ix in range(left_n):
        for iy in range(left_n):
            for iz in range(left_n):
                x = ix*left_s
                y = iy*left_s
                z = iz*left_s
                atoms.append(Atom(x, y, z, left_xvel_list[num], left_yvel_list[num], left_zvel_list[num], left_type_list[num]))
                atoms.append(Atom(x+left_h, y+left_h, z, left_xvel_list[num+1], left_yvel_list[num+1], left_zvel_list[num+1], left_type_list[num+1]))
                atoms.append(Atom(x+left_h, y, z+left_h, left_xvel_list[num+2], left_yvel_list[num+2], left_zvel_list[num+2], left_type_list[num+2]))
                atoms.append(Atom(x, y+left_h, z+left_h, left_xvel_list[num+3], left_yvel_list[num+3], left_zvel_list[num+3], left_type_list[num+3]))
                num+=4
    
    right_n = round((right_num/4)**(1/3))
    right_s = length/right_n
    right_h = right_s/2
    
    right_xvel_list = [0] * (right_num)
    right_yvel_list = [0] * (right_num)
    right_zvel_list = [0] * (right_num)
    for i in range(len(right_xvel_list)):
        random_x = random.uniform(-1, 1)
        right_xvel_list[i] = random_x
    for i in range(len(right_yvel_list)):
        random_y = random.uniform(-1, 1) 
        right_yvel_list[i] = random_y
    for i in range(len(right_zvel_list)):
        random_z = random.uniform(-1, 1)
        right_zvel_list[i] = random_z
    right_xvel_list_av = sum(right_xvel_list)/len(right_xvel_list)
    right_yvel_list_av = sum(right_yvel_list)/len(right_yvel_list)
    right_zvel_list_av = sum(right_zvel_list)/len(right_zvel_list)  
    right_xvel_list = list(map(lambda x: x - right_xvel_list_av, right_xvel_list))
    right_yvel_list = list(map(lambda y: y - right_yvel_list_av, right_yvel_list))
    right_zvel_list = list(map(lambda z: z - right_zvel_list_av, right_zvel_list))

    right_type_list = [2] * (right_num)
    for i in range(right_num_a):
        right_type_list[i] = 1
    random.shuffle(right_type_list)

    num=0
    for ix in range(right_n):
        for iy in range(right_n):
            for iz in range(right_n):
                x = ix*right_s
                y = iy*right_s
                z = iz*right_s
                atoms.append(Atom(x, y, z, right_xvel_list[num], right_yvel_list[num], right_zvel_list[num], right_type_list[num]))
                atoms.append(Atom(x+right_h, y+right_h, z, right_xvel_list[num+1], right_yvel_list[num+1], right_zvel_list[num+1], right_type_list[num+1]))
                atoms.append(Atom(x+right_h, y, z+right_h, right_xvel_list[num+2], right_yvel_list[num+2], right_zvel_list[num+2], right_type_list[num+2]))
                atoms.append(Atom(x, y+right_h, z+right_h, right_xvel_list[num+3], right_yvel_list[num+3], right_zvel_list[num+3], right_type_list[num+3]))
                num+=4


def make_file(filename, atoms, length):
    with open(filename, "w") as f:
        f.write("Position Data\n\n")
        f.write("{} atoms\n".format(len(atoms)))
        f.write("2 atom types\n\n")
        f.write("0.0 {} xlo xhi\n".format(length*2))
        f.write("0.0 {} ylo yhi\n".format(length))
        f.write("0.0 {} zlo zhi\n".format(length))
        f.write("\n")
        f.write("Atoms\n\n")
        for i, a in enumerate(atoms):
            f.write("{} {} {} {} {}\n".format(i+1, a.type, a.x, a.y, a.z))
        f.write("\n")
        f.write("Velocities\n\n")
        for i, a in enumerate(atoms):
            f.write("{} {} {} {}\n".format(i+1, a.vx, a.vy, a.vz))

half_volume = 40*40*40
left_num = 22*22*22*4
right_num = 8*8*8*4
total_num = left_num + right_num
for i in range(1, int(sys.argv[1])):
    atoms = []
    a_ratio = (1/int(sys.argv[1])) * int(i)
    left_num_a = round(left_num * a_ratio)
    left_num_b = left_num - left_num_a
    right_num_a = round(right_num * a_ratio)
    right_num_b = right_num - right_num_a
    left_density_a = left_num_a/half_volume
    left_density_b = left_num_b/half_volume
    right_density_a = right_num_a/half_volume
    right_density_b = right_num_b/half_volume
    length = round(math.pow(half_volume, 1/3))
    add_ball(atoms, left_num, left_num_a, right_num, right_num_a, length)
    if not os.path.exists('atoms/N{}'.format(total_num)):
        os.mkdir(('atoms/N{}'.format(total_num)))
    make_file("atoms/N{}/lna{}-lnb{}-lda{}-ldb{}-rna{}-rnb{}-rda{}-rdb{}.atoms"
    .format(total_num, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b), atoms, length)

# # 分子の速度平均が≒0になっていることの確認
# sum_a_vx = 0
# sum_a_vy = 0
# sum_a_vz = 0
# num_a = 0
# for i, a in enumerate(atoms):
#     num_a += 1
#     sum_a_vx += a.vx
#     sum_a_vy += a.vy
#     sum_a_vz += a.vz

# av_sum_a_vx = sum_a_vx/num_a
# av_sum_a_vy = sum_a_vy/num_a
# av_sum_a_vz = sum_a_vz/num_a

# print(av_sum_a_vx)
# print(av_sum_a_vy)
# print(av_sum_a_vz)

# a_num = 0
# for i, a in enumerate(atoms):
#     if a.type == 1:
#         a_num += 1
# print(a_num)
