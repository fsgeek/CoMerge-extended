import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np

#Lists to hold the data
miss = []
pref = []
ratio = []
new_loads = []
new_ratio = []

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

#Lists to hold the data
loads = []

#Regular expressions
exp_ld = re.compile("\s*(?P<loads>\d+)\s* cpu/mem-loads/pp\s*")

#Read input file
with open(sys.argv[2], 'r') as my_file:
	lines = my_file.readlines()
	for row in lines:
		res_ld  = re.match(exp_ld, row)
		if (res_ld != None):
			loads.append(int(res_ld.group('loads'))/ 1000000)

new_pos = [5, 26, 29, 3, 2, 12, 14, 4, 13, 11, 17, 24, 8, 15, 10, 16, 20, 21, 9, 23, 7, 6, 0, 22, 28, 18, 19, 27, 25, 1]
new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 'atax', 'syrk', 'trmm', 'cholesky', 'trisolv', 
			  'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'durbin', 'symm', 'dynprog', 'correlation', 'covariance', 
			  'mvt', 'reg_detect', 'gemver', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')

### Rearrange results ###
for i in new_pos:
	new_ratio.append(ratio[i])
	new_loads.append(loads[i])

print "Prefetch miss Ratio, "
for e in new_ratio:
	print str(e) + ", ",
print "Memory loads, "
for e in new_loads:
	print str(e) + ", ",


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

### Prefetch ###
ax3 = plt.subplot(122)
rects = ax3.bar(ind, new_ratio, width, color='0.85', edgecolor='k')
ax3.set_ylabel('LLC prefetch miss ratio (%)', fontsize=15)
ax3.set_xticks(ind)
ax3.set_xticklabels(new_labels) 
plt.xticks(rotation=70)
ax3.tick_params(labelsize=14)
ax3.spines['top'].set_visible(False)
ax3.spines['right'].set_visible(False)
ax3.spines['bottom'].set_visible(False)
ax3.spines['left'].set_visible(False)
plt.grid(True)
ax3.set_aspect(0.05, 'box')
plt.plot()

### Mem-loads ###
ax4 = plt.subplot(121)
rects = ax4.bar(ind, new_loads, width, color='0.55', edgecolor='k')
ax4.set_ylabel('Memory loads (Million)', fontsize=15)
ax4.set_xticks(ind)
ax4.set_xticklabels(new_labels) 
plt.xticks(rotation=70)
ax4.tick_params(labelsize=14)
ax4.spines['top'].set_visible(False)
ax4.spines['right'].set_visible(False)
ax4.spines['bottom'].set_visible(False)
ax4.spines['left'].set_visible(False)
plt.grid(True)
ax4.set_aspect(0.003, 'box')
plt.plot()


plt.show()
