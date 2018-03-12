import os, sys
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

labels 		= ('jacobi-2d', 'fdtd-2d', 'doitgen', 'fdtd-2d')
all_fast 	= [28.67, 49.55, 29.45, 49.55]
equal_alone = [28.67, 80.43, 29.45, 80.43]
equal_coloc = [41.76, 123.04, 30.68, 83.73]
prop_alone 	= [59.64, 80.43, 30.5, 80.43]
prop_coloc 	= [73.46, 165.72, 30.87, 83.77]

#Normalize values to all fast
equal_coloc = map(truediv, equal_coloc, all_fast)
equal_alone = map(truediv, equal_alone, all_fast)
prop_coloc	= map(truediv, prop_coloc, all_fast)
prop_alone 	= map(truediv, prop_alone, all_fast)
all_fast 	= map(truediv, all_fast, all_fast)

# Number of benchmarks
N = 4

# The x locations for the groups
ind = np.arange(1, N+1) 
width = 0.1      

fig, ax = plt.subplots()
rects3 = ax.bar(ind - 1*width, equal_coloc, width, color='lightgreen')
rects2 = ax.bar(ind - 1*width, equal_alone, width, color='lightgreen', hatch='//')
rects5 = ax.bar(ind + 0*width, prop_coloc, width, color='green')
rects4 = ax.bar(ind - 0*width, prop_alone, width, color='green', hatch='\\')

plt.axvline(x=2.45, ymin=0, linewidth=2, color='k', linestyle='dashed')
hor = plt.axhline(y=1, xmin=0, linewidth=2, color = 'blue')

ax.set_xticks(ind)
ax.set_xticklabels(labels) 
ax.tick_params(labelsize=16)

heads = ('All-in-DRAM', 'Equal Split Standalone', 'Equal Split Collocated', 'Proportional Split Standalone', 'Proportional Split Collocated')
ax.legend((hor, rects2[0], rects3[0], rects4[0], rects5[0]), heads, loc='upper center', ncol=3, fontsize = 18, bbox_to_anchor=(0.5, 1.25))

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.ylabel('Normalized execution time', fontsize=20)
ax.set_yticks(np.arange(0,5,1))
plt.axes().set_aspect(0.25, 'box')
#plt.axis('tight')
plt.plot()
plt.show()
