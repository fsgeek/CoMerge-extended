import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np

#Lists to hold the data
miss = []
pref = []
ratio = []

#Regular expressions
exp_mis   = re.compile("\s*(?P<misses>\d+)\s* LLC-prefetch-misses\s*")
exp_pref = re.compile("\s*(?P<pref>\d+)\s* LLC-prefetches\s*")

#Read input file
with open(sys.argv[1], 'r') as my_file:
	lines = my_file.readlines()
	for row in lines:
		res_mis   = re.match(exp_mis, row)
		res_pref  = re.match(exp_pref, row)
		if (res_mis != None):
			miss.append(int(res_mis.group('misses')))
		if (res_pref != None):
			pref.append(int(res_pref.group('pref')))

### Calculate miss ratio ###
ratio = map(truediv, miss, pref)
ratio = [x*100 for x in ratio]

### Plot ###

N = 30
ind = np.arange(1, N+1) 
width = 0.8      
x = []
for i in np.arange(N):
	x.append([ind[i]-3*width, ind[i]-2*width, ind[i]-width, ind[i], ind[i]+width, ind[i]+2*width])
labels = ('2mm', '3mm', 'atax', 'bicg', 'cholesky', 'doitgen', 'gemm', 'gemver', 'gesummv', 'mvt', 'symm', 'syr2k', 'syrk',
					'trisolv', 'trmm', 'durbin', 'dynprog', 'gramschmidt', 'lu', 'ludcmp', 'correlation', 'covariance', 
					'floyd-warshall', 'reg_detect', 'adi', 'fdtd-2d', 'fdtd-apml', 'jacobi-1d', 'jacobi-2d', 'seidel-2d')

fig, ax = plt.subplots()
rects = ax.bar(ind, ratio, width, color='0.85', edgecolor='k')
ax.set_ylabel('LLC prefetch miss ratio (%)', fontsize=15)
ax.set_xticks(ind)
ax.set_xticklabels(labels) 
plt.xticks(rotation=70)
ax.tick_params(labelsize=14)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.axes().set_aspect(0.05, 'box')
plt.plot()
plt.show()
