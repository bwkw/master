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


def add_ball(atoms, left_num, right_num, length, volume):
    left_n = round((left_num/4)**(1/3))
    right_n = round((right_num/4)**(1/3))
    left_density = left_num/volume
    right_density = right_num/volume
    left_s = length/left_n
    if right_n != 0:
        right_s = length/right_n
    else:
        right_s = 0
    left_h = left_s/2
    right_h = right_s/2
    xvel_list = [0] * (4*(left_n**3+right_n**3))
    yvel_list = [0] * (4*(left_n**3+right_n**3))
    zvel_list = [0] * (4*(left_n**3+right_n**3))
    print(len(xvel_list))
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
    num=0
    for ix in range(0,left_n):
        for iy in range(0,left_n):
            for iz in range(0,left_n):
                x = ix*left_s
                y = iy*left_s
                z = iz*left_s
                atoms.append(Atom(x, y, z, xvel_list[num], yvel_list[num], zvel_list[num], 1))
                atoms.append(Atom(x+left_h, y+left_h, z, xvel_list[num+1], yvel_list[num+1], zvel_list[num+1], 1))
                atoms.append(Atom(x+left_h, y, z+left_h, xvel_list[num+2], yvel_list[num+2], zvel_list[num+2], 1))
                atoms.append(Atom(x, y+left_h, z+left_h, xvel_list[num+3], yvel_list[num+3], zvel_list[num+3], 1))
                num+=4
    for ix in range(0,right_n):
        for iy in range(0,right_n):
            for iz in range(0,right_n):
                x = length + ix*right_s
                y = iy*right_s
                z = iz*right_s
                atoms.append(Atom(x, y, z, xvel_list[num], yvel_list[num], zvel_list[num], 2))
                atoms.append(Atom(x+right_h, y+right_h, z, xvel_list[num+1], yvel_list[num+1], zvel_list[num+1], 2))
                atoms.append(Atom(x+right_h, y, z+right_h, xvel_list[num+2], yvel_list[num+2], zvel_list[num+2], 2))
                atoms.append(Atom(x, y+right_h, z+right_h, xvel_list[num+3], yvel_list[num+3], zvel_list[num+3], 2))
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
half_volume = 20*20*20
left_num = 10*10*10*4
right_num = 5*5*5*4
left_density = left_num/half_volume
right_density = right_num/half_volume
volume = half_volume*2
length = math.pow(volume, 1/3)
add_ball(atoms, left_num, right_num, length, volume)
make_file("atoms/ln{}-rn{}-ld{}-rd{}.atoms".format(left_num,right_num, left_density, right_density), atoms, length)

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
