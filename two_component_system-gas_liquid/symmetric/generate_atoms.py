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


def add_ball(atoms, left_num_a, left_num_b, length):
    left_n_a = round((left_num_a/4)**(1/3))
    left_n_b = round((left_num_b/4)**(1/3))
    left_s_a = (length-1)/left_n_a
    left_s_b = (length-1)/left_n_b
    left_h_a = left_s_a/2
    left_h_b = left_s_b/2

    # 粒子Aの速度平均を0にする
    a_xvel_list = [0] * (4*(left_n_a**3))
    a_yvel_list = [0] * (4*(left_n_a**3))
    a_zvel_list = [0] * (4*(left_n_a**3))
    for i in range(len(a_xvel_list)):
        random_x = random.uniform(-1, 1)
        a_xvel_list[i] = random_x
    for i in range(len(a_yvel_list)):
        random_y = random.uniform(-1, 1) 
        a_yvel_list[i] = random_y
    for i in range(len(a_zvel_list)):
        random_z = random.uniform(-1, 1)
        a_zvel_list[i] = random_z
    a_xvel_list_av = sum(a_xvel_list)/len(a_xvel_list)
    a_yvel_list_av = sum(a_yvel_list)/len(a_yvel_list)
    a_zvel_list_av = sum(a_zvel_list)/len(a_zvel_list)  
    a_xvel_list = list(map(lambda x: x - a_xvel_list_av, a_xvel_list))
    a_yvel_list = list(map(lambda y: y - a_yvel_list_av, a_yvel_list))
    a_zvel_list = list(map(lambda z: z - a_zvel_list_av, a_zvel_list))

    # 粒子Bの速度平均を0にする
    b_xvel_list = [0] * (4*(left_n_b**3))
    b_yvel_list = [0] * (4*(left_n_b**3))
    b_zvel_list = [0] * (4*(left_n_b**3))
    for i in range(len(b_xvel_list)):
        random_x = random.uniform(-1, 1)
        b_xvel_list[i] = random_x
    for i in range(len(b_yvel_list)):
        random_y = random.uniform(-1, 1) 
        b_yvel_list[i] = random_y
    for i in range(len(b_zvel_list)):
        random_z = random.uniform(-1, 1)
        b_zvel_list[i] = random_z
    b_xvel_list_av = sum(b_xvel_list)/len(b_xvel_list)
    b_yvel_list_av = sum(b_yvel_list)/len(b_yvel_list)
    b_zvel_list_av = sum(b_zvel_list)/len(b_zvel_list)  
    b_xvel_list = list(map(lambda x: x - b_xvel_list_av, b_xvel_list))
    b_yvel_list = list(map(lambda y: y - b_yvel_list_av, b_yvel_list))
    b_zvel_list = list(map(lambda z: z - b_zvel_list_av, b_zvel_list))

    num=0
    for ix in range(1, left_n_a+1):
        for iy in range(1, left_n_a+1):
            for iz in range(1, left_n_a+1):
                x = ix*left_s_a
                y = iy*left_s_a
                z = iz*left_s_a
                atoms.append(Atom(x, y, z, a_xvel_list[num], a_yvel_list[num], a_zvel_list[num], 1))
                atoms.append(Atom(x+left_h_a, y+left_h_a, z, a_xvel_list[num+1], a_yvel_list[num+1], a_zvel_list[num+1], 1))
                atoms.append(Atom(x+left_h_a, y, z+left_h_a, a_xvel_list[num+2], a_yvel_list[num+2], a_zvel_list[num+2], 1))
                atoms.append(Atom(x, y+left_h_a, z+left_h_a, a_xvel_list[num+3], a_yvel_list[num+3], a_zvel_list[num+3], 1))
                num+=4
    num=0
    for ix in range(1, left_n_b+1):
        for iy in range(1, left_n_b+1):
            for iz in range(1, left_n_b+1):
                x = ix*left_s_b
                y = iy*left_s_b
                z = iz*left_s_b
                atoms.append(Atom(x, y, z, b_xvel_list[num], b_yvel_list[num], b_zvel_list[num], 2))
                atoms.append(Atom(x+left_h_b, y+left_h_b, z, b_xvel_list[num+1], b_yvel_list[num+1], b_zvel_list[num+1], 2))
                atoms.append(Atom(x+left_h_b, y, z+left_h_b, b_xvel_list[num+2], b_yvel_list[num+2], b_zvel_list[num+2], 2))
                atoms.append(Atom(x, y+left_h_b, z+left_h_b, b_xvel_list[num+3], b_yvel_list[num+3], b_zvel_list[num+3], 2))
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
left_num_a = 23*23*23*4
left_num_b = 21*21*21*4
right_num = 0
left_density_a = left_num_a/half_volume
left_density_b = left_num_b/half_volume
length = round(math.pow(half_volume, 1/3))
add_ball(atoms, left_num_a, left_num_b, length)
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
