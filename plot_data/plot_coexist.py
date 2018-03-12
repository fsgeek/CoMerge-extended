import os, sys
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

#jacobi and fdtd
labels = ('jacobi-2d', 'fdtd-2d')
all_fast 	= [28.67, 49.55]
fair_stand 	= [59.64, 114.07]
fair_coloc	= [92.54, 223.19]
blind_stand	= [28.67, 174.58]
blind_coloc	= [73.46, 179.01]
'''
labels = ('jacobi-2d', 'adi')
all_fast 	= [28.67, 116.86]
fair_stand 	= [59.64, 136.38]
fair_coloc	= [85.35, 213.78]
blind_stand	= [59.64, 168.15]
blind_coloc	= [, 203.05]
'''
#Normalize values to all fast
fair_stand = map(truediv, fair_stand, all_fast)
fair_coloc = map(truediv, fair_coloc, all_fast)
blind_stand = map(truediv, blind_stand, all_fast)
blind_coloc = map(truediv, blind_coloc, all_fast)
all_fast = map(truediv, all_fast, all_fast)


# Number of benchmarks
N = 2

# The x locations for the groups
ind = np.arange(1, N+1) 
width = 0.1

fig, ax = plt.subplots()
rects1 = ax.bar(ind - 3*width, all_fast, width, color='black')
rects2 = ax.bar(ind - 2*width, fair_stand, width, color='#605a5a')
rects3 = ax.bar(ind - 1*width, blind_stand, width, color='darkgray')
rects4 = ax.bar(ind - 0*width, fair_coloc, width, color='silver', hatch='\\')
rects5 = ax.bar(ind + 1*width, blind_coloc, width, color='lightgray', hatch='//')

ax.set_xticks(ind)
ax.set_xticklabels(labels) 
#plt.xticks(rotation=70)
ax.tick_params(labelsize=16)

heads = ('All Fast', 'Fair Standalone', 'Blind Standalone', 'Fair Collocated', 'Blind Collocated')
ax.legend((rects1, rects2, rects3, rects4, rects5), heads, loc='upper center', ncol=3, fontsize = 11, bbox_to_anchor=(0.5, 1.35))

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.ylabel('Normalized execution time')
ax.set_yticks(np.arange(0,5,1))
plt.axes().set_aspect(0.1, 'box')
#plt.axis('tight')
plt.plot()
plt.show()
