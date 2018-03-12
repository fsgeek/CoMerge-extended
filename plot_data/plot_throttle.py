import os, sys
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# List that holds all measurements in order
mes = []
new_mes = []
# List that holds all measurements per group
mes_group = []

#Read all files in the given directory - expecting 6 files
file_list = [sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6]]
num_files = 0
for filename in file_list:
	num_lines = 0
	mes.append([])
	new_mes.append([])
	with open(filename, 'r') as my_file:
		lines = my_file.readlines()
		for row in lines:
			if num_lines % 2:
				mes[num_files].append(float(row))
			num_lines = num_lines + 1
	num_files = num_files + 1
num_lines = num_lines / 2

print(mes)

#Normalize values to all fast
for i in range(1, num_files):
	mes[i] = map(truediv, mes[i], mes[0])
mes[0] = map(truediv, mes[0], mes[0])
print(mes)

# Number of benchmarks
N = num_lines
# Measurements values for curve fitting
for i in range(0, N):
	mes_group.append([])
for i in range(0, N):
	mes_group[i].append(mes[0][i])
	mes_group[i].append(mes[1][i])
	mes_group[i].append(mes[2][i])
	mes_group[i].append(mes[3][i])
	mes_group[i].append(mes[4][i])
	mes_group[i].append(mes[5][i])

#new_pos = [5, 26, 29, 3, 2, 12, 14, 4, 13, 11, 17, 24, 8, 15, 10, 16, 20, 21, 9, 23, 7, 6, 0, 22, 28, 18, 19, 27, 25, 1]

new_pos = [5, 26, 29, 3, 
11, 17, 24, 8, 2, 15, 
12, 14, 
10, 16, 
20, 21, 
9, 23, 7, 4, 13, 6, 0, 22, 28, 18, 19, 27, 25, 1]
new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 
			  'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'atax', 'durbin', 
			  'syrk', 'trmm',  
			  'symm', 'dynprog', 
				'correlation', 'covariance', 
			  'mvt', 'reg_detect', 'gemver', 'cholesky', 'trisolv', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')


#new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 'atax', 'syrk', 'trmm', 'cholesky', 'trisolv', 
#			  'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'durbin', 'symm', 'dynprog', 'correlation', 'covariance', 
#			  'mvt', 'reg_detect', 'gemver', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')

### Rearrange results ###
for i in new_pos:
	new_mes[0].append(mes[0][i])
	new_mes[1].append(mes[1][i])
	new_mes[2].append(mes[2][i])
	new_mes[3].append(mes[3][i])
	new_mes[4].append(mes[4][i])
	new_mes[5].append(mes[5][i])


# The x locations for the groups
ind = np.arange(1, N+1) 
width = 0.125

x = []
for i in np.arange(N):
	x.append([ind[i]-3*width, ind[i]-2*width, ind[i]-width, ind[i], ind[i]+width, ind[i]+2*width])

#Scale down y axis
#for i in range(0, num_files):
#	mes[i][:] = [x / 4.0 for x in mes[i]]


fig, ax = plt.subplots()
'''
rects1 = ax.bar(ind - 3*width, new_mes[0], width, color='#eeeeee')
rects2 = ax.bar(ind - 2*width, new_mes[1], width, color='#bbbbbb', edgecolor='k')
rects3 = ax.bar(ind - 1*width, new_mes[2], width, color='#919191', edgecolor='k')
rects4 = ax.bar(ind + 0*width, new_mes[3], width, color='#727272', edgecolor='k')
rects5 = ax.bar(ind + 1*width, new_mes[4], width, color='#555555', edgecolor='k')
rects6 = ax.bar(ind + 2*width, new_mes[5], width, color='#000000', edgecolor='k')

rects1 = ax.bar(ind - 3*width, new_mes[0], width, color='none', edgecolor='k', hatch="/")
rects2 = ax.bar(ind - 2*width, new_mes[1], width, color='none', edgecolor='k', hatch=".")
rects3 = ax.bar(ind - 1*width, new_mes[2], width, color='none', edgecolor='k', hatch="--")
rects4 = ax.bar(ind + 0*width, new_mes[3], width, color='none', edgecolor='k', hatch="O")
rects5 = ax.bar(ind + 1*width, new_mes[4], width, color='none', edgecolor='k', hatch="//")
rects6 = ax.bar(ind + 2*width, new_mes[5], width, color='none', edgecolor='k', hatch="*")

rects1 = ax.bar(ind - 3*width, new_mes[0], width, color='lightgrey')
rects2 = ax.bar(ind - 2*width, new_mes[1], width, color='coral', edgecolor='k')
rects3 = ax.bar(ind - 1*width, new_mes[2], width, color='royalblue', edgecolor='k')
rects4 = ax.bar(ind + 0*width, new_mes[3], width, color='gold', edgecolor='k')
rects5 = ax.bar(ind + 1*width, new_mes[4], width, color='green', edgecolor='k')
rects6 = ax.bar(ind + 2*width, new_mes[5], width, color='red', edgecolor='k')
'''
rects1 = ax.bar(ind - 3*width, new_mes[0], width, color='#E5E5FF')
rects2 = ax.bar(ind - 2*width, new_mes[1], width, color='#9999FF', edgecolor='k')
rects3 = ax.bar(ind - 1*width, new_mes[2], width, color='#4C4CFF', edgecolor='k')
rects4 = ax.bar(ind + 0*width, new_mes[3], width, color='#0000e5', edgecolor='k')
rects5 = ax.bar(ind + 1*width, new_mes[4], width, color='#000099', edgecolor='k')
rects6 = ax.bar(ind + 2*width, new_mes[5], width, color='#000000', edgecolor='k')

ax.set_ylabel('Normalized execution time', fontsize=18)
ax.set_xticks(ind)

ax.set_xticklabels(new_labels) 
#ax.set_xticklabels(('2mm', '3mm', 'atax', 'bicg', 'cholesky', 'doitgen', 'gemm', 'gemver', 'gesummv', 'mvt', 'symm', 'syr2k', 'syrk', 
#					'trisolv', 'trmm', 'durbin', 'dynprog', 'gramschmidt', 'lu', 'ludcmp', 'correlation', 'covariance', 
#					'floyd-warshall', 'reg_detect', 'adi', 'fdtd-2d', 'fdtd-apml', 'jacobi-1d', 'jacobi-2d', 'seidel-2d'))
plt.xticks(rotation=70)
ax.tick_params(labelsize=16)
heads = ('DRAM', 'NVM B:1 L:2', 'NVM B:0.5 L:3', 'NVM B:0.25 L:2.5', 'NVM B:0.2 L:5','NVM B:0.15 L:5')
ax.legend((rects1[0], rects2[0], rects3[0], rects4[0], rects5[0], rects6[0]), heads, 
							loc='upper center', ncol=6, fontsize = 18, bbox_to_anchor=(0.5, 1.2))

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)

ax.set_yticks(np.arange(0,5,1))
plt.axes().set_aspect(1.5, 'box')

#plt.axis('tight')

# Add Curve fitting lines on top of every group
#for i in np.arange(N):
	#fit = np.polyfit(x[i], mes_group[i], deg=1)
	#fit_fn = np.poly1d(fit) 
	#ax.plot(x[i], fit_fn(x[i]), color='red', lw=2)
	#ax.scatter(x[i], y[i])
#plt.tight_layout()
plt.plot()
plt.show()
