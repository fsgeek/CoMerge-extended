import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np

#Lists to hold the data
cycles = []
instr = []
mem_stalls = []
stalls = []
new_cpi = []
new_ipc = []
new_mem_stalls_per_instr = []
new_stalls_per_instr = []


#Regular expressions
exp_cyc   = re.compile("\s*(?P<cycles>\d+)\s* cycles\s*")
exp_instr = re.compile("\s*(?P<instr>\d+)\s* instructions\s*")
exp_mem_stalls = re.compile("\s*(?P<mem_stalls>\d+)\s* r67306a3\s*")
exp_stalls = re.compile("\s*(?P<stalls>\d+)\s* r47304a3\s*")

#Read input file
with open(sys.argv[1], 'r') as my_file:
    lines = my_file.readlines()
    for row in lines:
        ###regex find###
        res_cyc = re.match(exp_cyc, row)
        res_instr = re.match(exp_instr, row)
        res_mem_stalls = re.match(exp_mem_stalls, row)
        res_stalls = re.match(exp_stalls, row)
        ###regex if-then-else###
        if (res_cyc != None):
            cycles.append(int(res_cyc.group('cycles')))
        if (res_instr != None):
            instr.append(int(res_instr.group('instr')))
        if (res_mem_stalls != None):
            mem_stalls.append(int(res_mem_stalls.group('mem_stalls')))
        if (res_stalls != None):
            stalls.append(int(res_stalls.group('stalls')))

cpi = map(truediv, cycles, instr)
stalls_per_instr = map(truediv, stalls, instr)
mem_stalls_per_instr = map(truediv, mem_stalls, instr)


new_pos = [5, 26, 29, 3, 11, 17, 24, 8, 2, 15, 12, 14, 10, 16, 20, 21, 9, 23, 7, 4, 13, 6, 0, 22, 28, 18, 19, 27, 25, 1]
new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'atax', 'durbin', 'syrk', 'trmm', 'symm', 'dynprog', 'correlation', 'covariance', 'mvt', 'reg_detect', 'gemver', 'cholesky', 'trisolv', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')

### Rearrange results ###
for i in new_pos:
    new_cpi.append(cpi[i])
    new_mem_stalls_per_instr.append(mem_stalls_per_instr[i])
    new_stalls_per_instr.append(stalls_per_instr[i])

print "label, "
for e in new_labels:
    print str(e) + ", ",
print "CPI, "
for e in new_cpi:
    print str(e) + ", ",
print "Mem Stalls per Instr, "
for e in new_mem_stalls_per_instr:
	print str(e) + ", ",
print "Stalls per Instr, "
for e in new_stalls_per_instr:
	print str(e) + ", ",

### Plot ###

N = 30
ind = np.arange(1, N+1) 
width = 0.8      
x = []
for i in np.arange(N):
	x.append([ind[i]-2*width, ind[i]-2*width, ind[i]-width, ind[i], ind[i]+width, ind[i]+2*width])
labels = ('2mm', '3mm', 'atax', 'bicg', 'cholesky', 'doitgen', 'gemm', 'gemver', 'gesummv', 'mvt', 'symm', 'syr2k', 'syrk',
					'trisolv', 'trmm', 'durbin', 'dynprog', 'gramschmidt', 'lu', 'ludcmp', 'correlation', 'covariance', 
					'floyd-warshall', 'reg_detect', 'adi', 'fdtd-2d', 'fdtd-apml', 'jacobi-1d', 'jacobi-2d', 'seidel-2d')


fig, ax = plt.subplots()
rects1 = ax.bar(ind, new_cpi, width, color='#808080', edgecolor='k')
rects2 = ax.bar(ind, new_stalls_per_instr, width, color='#C0C0C0', edgecolor='k')
rects3 = ax.bar(ind, new_mem_stalls_per_instr, width, color='#C0C0C0', edgecolor='k', hatch='//')

heads = ('Total Cycles', 'Total Stall Cycles', 'Memory Stall Cycles')
ax.legend((rects1[0], rects2[0], rects3[0]), heads, loc='upper center', ncol=3, fontsize = 'large', bbox_to_anchor=(0.5, 1.05))

ax.set_ylabel('Cycles per Instruction', fontsize=16)
ax.set_xticks(ind)
ax.set_xticklabels(new_labels)
plt.xticks(rotation=70)
ax.tick_params(labelsize=14)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)
plt.axes().set_aspect(25, 'box')
plt.plot()
plt.show()
