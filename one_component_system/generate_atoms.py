# atomsファイルを作成

import math
import random

class Atom:
    def __init__(self, x, y, z, xvel, yvel, zvel):
        self.x = x
        self.y = y
        self.z = z
        self.type = 1
        self.vx = xvel
        self.vy = yvel
        self.vz = zvel


def add_ball(atoms, left_num, right_num, length):
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

    num=0
    for ix in range(0,left_n):
        for iy in range(0,left_n):
            for iz in range(0,left_n):
                x = ix*left_s
                y = iy*left_s
                z = iz*left_s
                atoms.append(Atom(x, y, z, left_xvel_list[num], left_yvel_list[num], left_zvel_list[num]))
                atoms.append(Atom(x+left_h, y+left_h, z, left_xvel_list[num+1], left_yvel_list[num+1], left_zvel_list[num+1]))
                atoms.append(Atom(x+left_h, y, z+left_h, left_xvel_list[num+2], left_yvel_list[num+2], left_zvel_list[num+2]))
                atoms.append(Atom(x, y+left_h, z+left_h, left_xvel_list[num+3], left_yvel_list[num+3], left_zvel_list[num+3]))
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

    num=0
    for ix in range(0,right_n):
        for iy in range(0,right_n):
            for iz in range(0,right_n):
                x = length + ix*right_s
                y = iy*right_s
                z = iz*right_s
                atoms.append(Atom(x, y, z, right_xvel_list[num], right_yvel_list[num], right_zvel_list[num]))
                atoms.append(Atom(x+right_h, y+right_h, z, right_xvel_list[num+1], right_yvel_list[num+1], right_zvel_list[num+1]))
                atoms.append(Atom(x+right_h, y, z+right_h, right_xvel_list[num+2], right_yvel_list[num+2], right_zvel_list[num+2]))
                atoms.append(Atom(x, y+right_h, z+right_h, right_xvel_list[num+3], right_yvel_list[num+3], right_zvel_list[num+3]))
                num+=4

def make_file(filename, atoms, length):
    with open(filename, "w") as f:
        f.write("Position Data\n\n")
        f.write("{} atoms\n".format(len(atoms)))
        f.write("1 atom types\n\n")
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
length = 50
half_volume = length**3
left_s = round(math.pow((half_volume*0.6/4), 1/3))
right_s = round(math.pow((half_volume*0.08/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
left_density = left_num/half_volume
right_density = right_num/half_volume

add_ball(atoms, left_num, right_num, length)
make_file("atoms/ln{}-rn{}-ld{}-rd{}.atoms".format(left_num, right_num, left_density, right_density), atoms, length)

#速度平均が≒0になっていることの確認
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
