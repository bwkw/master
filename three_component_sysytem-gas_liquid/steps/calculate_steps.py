# 液相・気相密度から段数を計算するファイル
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、シグマを入れる

import os
import re
import sys
from uncertainties import ufloat

