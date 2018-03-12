import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np

#Lists to hold the data
loads = []

#Regular expressions
exp_ld = re.compile("\s*(?P<loads>\d+)\s* cpu/mem-loads/pp\s*")

#Read input file
with open(sys.argv[1], 'r') as my_file:
	lines = my_file.readlines()
	for row in lines:
		res_ld  = re.match(exp_ld, row)
		if (res_ld != None):
			loads.append(int(res_ld.group('loads'))/ 1000000)

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

print "Mem loads, "
for e in loads:
	print str(e) + ", ",

fig, ax = plt.subplots()
rects = ax.bar(ind, loads, width, color='0.55', edgecolor='k')
ax.set_ylabel('Memory loads (Million)', fontsize=15)
ax.set_xticks(ind)
ax.set_xticklabels(labels) 
plt.xticks(rotation=70)
ax.tick_params(labelsize=14)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.axes().set_aspect(0.003, 'box')
plt.plot()
plt.show()
