# atomsファイルを作成

import math
import random

class Atom:
    def __init__(self, x, y, z, xvel, yvel, zvel, type):
        self.x = x
        self.y = y
        self.z = z
        self.vx = xvel
        self.vy = yvel
        self.vz = zvel
        self.type = type


def add_ball(atoms, left_num, left_num_a, length):
    left_n = round((left_num/4)**(1/3))
    left_s = length/left_n
    left_h = left_s/2

    xvel_list = [0] * (left_num)
    yvel_list = [0] * (left_num)
    zvel_list = [0] * (left_num)
    for i in range(len(xvel_list)):
        random_x = random.uniform(-1, 1)
        xvel_list[i] = random_x
    for i in range(len(yvel_list)):
        random_y = random.uniform(-1, 1) 
        yvel_list[i] = random_y
    for i in range(len(zvel_list)):
        random_z = random.uniform(-1, 1)
        zvel_list[i] = random_z
    xvel_list_av = sum(xvel_list)/len(xvel_list)
    yvel_list_av = sum(yvel_list)/len(yvel_list)
    zvel_list_av = sum(zvel_list)/len(zvel_list)  
    xvel_list = list(map(lambda x: x - xvel_list_av, xvel_list))
    yvel_list = list(map(lambda y: y - yvel_list_av, yvel_list))
    zvel_list = list(map(lambda z: z - zvel_list_av, zvel_list))

    type_list = [2] * (left_num)
    for i in range(left_num_a):
        type_list[i] = 1
    random.shuffle(type_list)

    num=0
<<<<<<< HEAD
    for ix in range(0, left_n_a):
        for iy in range(0, left_n_a):
            for iz in range(0, left_n_a):
                x = 0.5+ix*left_s_a
                y = 0.5+iy*left_s_a
                z = 0.5+iz*left_s_a
                atoms.append(Atom(x, y, z, a_xvel_list[num], a_yvel_list[num], a_zvel_list[num], 1))
                atoms.append(Atom(x+left_h_a, y+left_h_a, z, a_xvel_list[num+1], a_yvel_list[num+1], a_zvel_list[num+1], 1))
                atoms.append(Atom(x+left_h_a, y, z+left_h_a, a_xvel_list[num+2], a_yvel_list[num+2], a_zvel_list[num+2], 1))
                atoms.append(Atom(x, y+left_h_a, z+left_h_a, a_xvel_list[num+3], a_yvel_list[num+3], a_zvel_list[num+3], 1))
                num+=4
    num=0
    for ix in range(0, left_n_b):
        for iy in range(0, left_n_b):
            for iz in range(0, left_n_b):
                x = 1.0+ix*left_s_b
                y = 1.0+iy*left_s_b
                z = 1.0+iz*left_s_b
                atoms.append(Atom(x, y, z, b_xvel_list[num], b_yvel_list[num], b_zvel_list[num], 2))
                atoms.append(Atom(x+left_h_b, y+left_h_b, z, b_xvel_list[num+1], b_yvel_list[num+1], b_zvel_list[num+1], 2))
                atoms.append(Atom(x+left_h_b, y, z+left_h_b, b_xvel_list[num+2], b_yvel_list[num+2], b_zvel_list[num+2], 2))
                atoms.append(Atom(x, y+left_h_b, z+left_h_b, b_xvel_list[num+3], b_yvel_list[num+3], b_zvel_list[num+3], 2))
=======
    for ix in range(left_n):
        for iy in range(left_n):
            for iz in range(left_n):
                x = ix*left_s
                y = iy*left_s
                z = iz*left_s
                atoms.append(Atom(x, y, z, xvel_list[num], yvel_list[num], zvel_list[num], type_list[num]))
                atoms.append(Atom(x+left_h, y+left_h, z, xvel_list[num+1], yvel_list[num+1], zvel_list[num+1], type_list[num+1]))
                atoms.append(Atom(x+left_h, y, z+left_h, xvel_list[num+2], yvel_list[num+2], zvel_list[num+2], type_list[num+2]))
                atoms.append(Atom(x, y+left_h, z+left_h, xvel_list[num+3], yvel_list[num+3], zvel_list[num+3], type_list[num+3]))
>>>>>>> 47e319b1b260fa894c0302e4019abafa513d70a9
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


atoms = []
half_volume = 40*40*40
left_num = 28*28*28*4
left_num_a_ratio = 0.5
left_num_a = round(left_num * left_num_a_ratio)
left_num_b = left_num - left_num_a
right_num = 0
left_density_a = left_num_a/half_volume
left_density_b = left_num_b/half_volume
length = round(math.pow(half_volume, 1/3))
add_ball(atoms, left_num, left_num_a, length)
make_file("atoms/lna{}-lnb{}-lda{}-ldb{}.atoms".format(left_num_a, left_num_b, left_density_a, left_density_b), atoms, length)

# 分子の速度平均が≒0になっていることの確認
sum_a_vx = 0
sum_a_vy = 0
sum_a_vz = 0
num_a = 0
for i, a in enumerate(atoms):
    num_a += 1
    sum_a_vx += a.vx
    sum_a_vy += a.vy
    sum_a_vz += a.vz

av_sum_a_vx = sum_a_vx/num_a
av_sum_a_vy = sum_a_vy/num_a
av_sum_a_vz = sum_a_vz/num_a

print(av_sum_a_vx)
print(av_sum_a_vy)
print(av_sum_a_vz)

a_num = 0
for i, a in enumerate(atoms):
    if a.type == 1:
        a_num += 1
print(a_num)
