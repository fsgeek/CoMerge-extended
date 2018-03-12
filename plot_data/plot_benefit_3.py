import os, sys
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

labels = ('doitgen', 'adi', 'fdtd-2d', 'STREAM')
all_fast = [29.45, 116.86, 49.55, 28.83]
obj1 = [29.68, 136.38, 114.07, 61.19]
obj2 = [29.9, 141.17, 127.91,  75.38]
obj3 = [30.5, 150.47, 138.83,  75.53]
no_obj = [30.69, 168.15, 174.58,  106.55]

#Normalize values to all fast
obj1 = map(truediv, obj1, all_fast)
obj2 = map(truediv, obj2, all_fast)
obj3 = map(truediv, obj3, all_fast)
no_obj = map(truediv, no_obj, all_fast)
all_fast = map(truediv, all_fast, all_fast)

# Number of benchmarks
N = 4

# The x locations for the groups
ind = np.arange(1, N+1) 
width = 0.1      

fig, ax = plt.subplots()
rects1 = ax.bar(ind - 3*width, all_fast, width, color='blue')
rects2 = ax.bar(ind - 2*width, obj1, width, color='lightgreen')
rects3 = ax.bar(ind - width, obj2, width, color='lightseagreen')
rects4 = ax.bar(ind - 0*width, obj3, width, color='darkgreen')
rects5 = ax.bar(ind + 1*width, no_obj, width, color='red')

ax.set_xticks(ind)
ax.set_xticklabels(labels) 
ax.tick_params(labelsize=16)

heads = ('All objects', 'Object 1', 'Object 2', 'Object 3', 'No object')
#heads = ('All fast', 'Equal Split Standalone', 'Proportional Split Standalone', 'Equal Split Collocated', 'Proportional Split Collocated')
ax.legend((rects1[0], rects2[0], rects3[0], rects4[0], rects5[0]), heads, title = 'Objects in DRAM', loc='upper center', ncol=5, fontsize = 14, bbox_to_anchor=(0.5, 1.25))

plt.axvline(x=3.45, ymin=0, linewidth=2, color='k', linestyle='dashed')

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.ylabel('Normalized execution time', fontsize=18)
ax.set_yticks(np.arange(0,5,1))
plt.axes().set_aspect(0.3, 'box')
#plt.axis('tight')
plt.plot()
plt.show()
