# dumpファイルからdensityファイルを作成する

import math
import os
import re

count = 0
with open("data/dump.melt/lan13909-lbn681530-lcn7025-ran389-rbn19066-rcn197.dump") as f:
    ### aは出力する範囲を特定する変数
    a = 0
    ### bはdumpを吐いている数(最大6)
    b = 0
    for line in f:
        if re.match("ITEM: ATOMS id type xs ys zs", line):
            a = 1
            b += 1
            continue
        elif re.match("ITEM: TIMESTEP", line):
            a = 0
        if ((a == 1) and (b == 1)):
            split_line = line.split()
            type = split_line[1]
            x = split_line[2]
            y = split_line[3]
            z = split_line[4]
            if type=="3":
                with open("extract_c_from_dump-last.dump", "a") as f:
                    f.write("{} 1 {} {} {}\n".format(count, x, y, z))
