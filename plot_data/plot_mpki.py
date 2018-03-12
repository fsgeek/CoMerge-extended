import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np

#Lists to hold the data
miss = []
instr = []
refs = []
miss_ratio = []
kilo_instr = []
mpki = []
new_miss_ratio = []
new_mpki = []

#Regular expressions
exp_mis   = re.compile("\s*(?P<misses>\d+)\s* cache-misses\s*")
exp_instr = re.compile("\s*(?P<instr>\d+)\s* instructions\s*")
exp_refs  = re.compile("\s*(?P<refs>\d+)\s* cache-references\s*")

#Read input file
with open(sys.argv[1], 'r') as my_file:
	lines = my_file.readlines()
	for row in lines:
		res_mis   = re.match(exp_mis, row)
		res_instr = re.match(exp_instr, row)
		res_refs  = re.match(exp_refs, row)
		if (res_mis != None):
			miss.append(int(res_mis.group('misses')))
		if (res_instr != None):
			instr.append(int(res_instr.group('instr')))
		if (res_refs != None):
			refs.append(int(res_refs.group('refs')))

### Calculate miss ratio ###
miss_ratio = map(truediv, miss, refs)
miss_ratio = [x*100 for x in miss_ratio]

### Calculate MPKI ###
kilo_instr = [x / 1000 for x in instr]
mpki = map(truediv, miss, kilo_instr)


new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 
			  'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'atax', 'durbin', 
			  'syrk', 'trmm',  
			  'symm', 'dynprog', 
				'correlation', 'covariance', 
			  'mvt', 'reg_detect', 'gemver', 'cholesky', 'trisolv', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')



### Plot ###

N = 30
ind = np.arange(1, N+1) 
width = 0.8      
x = []
for i in np.arange(N):
	x.append([ind[i]-2*width, ind[i]-2*width, ind[i]-width, ind[i], ind[i]+width, ind[i]+2*width])

'''
### MPKI ###
ax1 = plt.subplot(121)
rects = ax1.bar(ind, new_mpki, width, color='0.75', edgecolor='k')
ax1.set_ylabel('MPKI', fontsize=20)
ax1.set_xticks(ind)
plt.xticks(rotation=70)
ax1.set_xticklabels(new_labels) 
ax1.tick_params(labelsize=12)
plt.grid(True)
ax1.spines['top'].set_visible(False)
ax1.spines['right'].set_visible(False)
ax1.spines['bottom'].set_visible(False)
ax1.spines['left'].set_visible(False)
ax1.set_aspect(0.2, 'box')
plt.plot()
### Miss ratio ###
ax2 = plt.subplot(122)
rects = ax2.bar(ind, new_miss_ratio, width, color='0.95', edgecolor='k')
ax2.set_ylabel('LLC miss ratio (%)', fontsize=16)
ax2.set_xticks(ind)
ax2.set_xticklabels(new_labels) 
plt.xticks(rotation=70)
ax2.tick_params(labelsize=12)
ax2.spines['top'].set_visible(False)
ax2.spines['right'].set_visible(False)
ax2.spines['bottom'].set_visible(False)
ax2.spines['left'].set_visible(False)
plt.grid(True)
plt.plot()
ax2.set_aspect(0.05, 'box')
plt.show()

'''
### MPKI ###
fig, ax = plt.subplots()
rects = ax.bar(ind, miss_ratio, width, color='sienna', edgecolor='k')
ax.set_ylabel('LLC miss ratio (%)', fontsize=16)
#rects = ax.bar(ind, mpki, width, color='darkgreen', edgecolor='k')
#ax.set_ylabel('MPKI', fontsize=20)
ax.set_xticks(ind)
ax.set_xticklabels(new_labels) 
plt.xticks(rotation=70)
ax.tick_params(labelsize=14)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.axes().set_aspect(0.1, 'box')
plt.plot()
plt.show()
