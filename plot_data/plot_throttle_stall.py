import os, sys, re
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

# List that holds all measurements in order
mes = []
mes_b = []
mes_f = []
new_mes = []
new_mes_b = []
new_mes_f = []
# List that holds all measurements per group
mes_group = []

exp_cyc   = re.compile("\s*(?P<cycles>\d+)\s* cycles\s*")
exp_instr = re.compile("\s*(?P<instr>\d+)\s* instructions\s*")
exp_cyc_b   = re.compile("\s*(?P<cycles_b>\d+)\s* stalled-cycles-backend\s*")
exp_cyc_f   = re.compile("\s*(?P<cycles_f>\d+)\s* stalled-cycles-frontend\s*")


#Read all files in the given directory - expecting 6 files
file_list = [sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6]]
num_files = 0
cpi = 0.0
mpki = 0.0
miss_ratio = 0.0
for filename in file_list:
	mes.append([])
	mes_b.append([])
	mes_f.append([])
	new_mes.append([])
	new_mes_b.append([])
	new_mes_f.append([])
	with open(filename, 'r') as my_file:
		lines = my_file.readlines()
		for row in lines:
			res_cyc = re.match(exp_cyc, row)
			res_cyc_b = re.match(exp_cyc_b, row)
			res_cyc_f = re.match(exp_cyc_f, row)
			res_instr = re.match(exp_instr, row)
			if (res_instr != None):
				instr = float(res_instr.group('instr'))
			if (res_cyc != None):
				cyc = float(res_cyc.group('cycles'))
			if (res_cyc_b != None):
				cyc_b = float(res_cyc_b.group('cycles_b'))
			if (res_cyc_f != None):
				cyc_f = float(res_cyc_f.group('cycles_f'))
				### Now compute all stats ###
				cpi = cyc / instr
				cpi_b = cyc_b / instr
				cpi_f = cyc_f / instr

				mes[num_files].append(cpi)
				mes_b[num_files].append(cpi_b)
				mes_f[num_files].append(cpi_f)

	num_files = num_files + 1

#Normalize values to all fast
#for i in range(1, num_files):
#	mes[i] = map(truediv, mes[i], mes[0])
#mes[0] = map(truediv, mes[0], mes[0])
#print(mes)

# Number of benchmarks
N = 30

'''
new_pos = [5, 26, 29, 3, 2, 12, 14, 4, 13, 11, 17, 24, 8, 15, 10, 16, 20, 21, 9, 23, 7, 6, 0, 22, 28, 18, 19, 27, 25, 1]
new_labels = ('doitgen', 'fdtd-apml', 'seidel-2d', 'bicg', 'atax', 'syrk', 'trmm', 'cholesky', 'trisolv', 
			  'syr2k', 'gramschmidt', 'adi', 'gemsumv', 'durbin', 'symm', 'dynprog', 'correlation', 'covariance', 
			  'mvt', 'reg_detect', 'gemver', 'gemm', '2mm',  'floyd-warshall', 'jacobi-2d', 'lu', 'ludcmp', 'jacobi-1d', 'fdtd-2d', '3mm')
'''

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

### Rearrange results ###
for i in new_pos:
	new_mes[0].append(mes[0][i])
	new_mes_b[0].append(mes_b[0][i])
	new_mes_f[0].append(mes_f[0][i])
	new_mes[1].append(mes[1][i])
	new_mes_b[1].append(mes_b[1][i])
	new_mes_f[1].append(mes_f[1][i])
	new_mes[2].append(mes[2][i])
	new_mes_b[2].append(mes_b[2][i])
	new_mes_f[2].append(mes_f[2][i])
	new_mes[3].append(mes[3][i])
	new_mes_b[3].append(mes_b[3][i])
	new_mes_f[3].append(mes_f[3][i])
	new_mes[4].append(mes[4][i])
	new_mes_b[4].append(mes_b[4][i])
	new_mes_f[4].append(mes_f[4][i])
	new_mes[5].append(mes[5][i])
	new_mes_b[5].append(mes_b[5][i])
	new_mes_f[5].append(mes_f[5][i])


# The x locations for the groups
ind = np.arange(1, N+1) 
width = 0.1      

x = []
for i in np.arange(N):
	x.append([ind[i]-3*width, ind[i]-2*width, ind[i]-width, ind[i], ind[i]+width, ind[i]+2*width])

#Scale down y axis
#for i in range(0, num_files):
#	mes[i][:] = [x / 4.0 for x in mes[i]]


fig, ax = plt.subplots()

rects1a = ax.bar(ind - 3*width, new_mes[0], width, color='blue')
rects11 = ax.bar(ind - 3*width, new_mes_f[0], width, color='gray')
rects111 = ax.bar(ind - 3*width, new_mes_b[0], width, color='lightblue')
rects2 = ax.bar(ind - 2*width, new_mes[1], width, color='blue', edgecolor='k')
rects1 = ax.bar(ind - 2*width, new_mes_f[1], width, color='gray')
rects1 = ax.bar(ind - 2*width, new_mes_b[1], width, color='lightblue')
rects3 = ax.bar(ind - 1*width, new_mes[2], width, color='blue', edgecolor='k')
rects1 = ax.bar(ind - 1*width, new_mes_f[2], width, color='gray')
rects1 = ax.bar(ind - 1*width, new_mes_b[2], width, color='lightblue')
rects4 = ax.bar(ind + 0*width, new_mes[3], width, color='blue', edgecolor='k')
rects1 = ax.bar(ind + 0*width, new_mes_f[3], width, color='gray')
rects1 = ax.bar(ind + 0*width, new_mes_b[3], width, color='lightblue')
rects5 = ax.bar(ind + 1*width, new_mes[4], width, color='blue', edgecolor='k')
rects1 = ax.bar(ind + 1*width, new_mes_f[4], width, color='gray')
rects1 = ax.bar(ind + 1*width, new_mes_b[4], width, color='lightblue')
rects6 = ax.bar(ind + 2*width, new_mes[5], width, color='blue', edgecolor='k')
rects1 = ax.bar(ind + 2*width, new_mes_f[5], width, color='gray')
rects1 = ax.bar(ind + 2*width, new_mes_b[5], width, color='lightblue')

ax.set_ylabel('CPI', fontsize=16)
ax.set_xticks(ind)

ax.set_xticklabels(new_labels) 
#ax.set_xticklabels(('2mm', '3mm', 'atax', 'bicg', 'cholesky', 'doitgen', 'gemm', 'gemver', 'gesummv', 'mvt', 'symm', 'syr2k', 'syrk', 
#					'trisolv', 'trmm', 'durbin', 'dynprog', 'gramschmidt', 'lu', 'ludcmp', 'correlation', 'covariance', 
#					'floyd-warshall', 'reg_detect', 'adi', 'fdtd-2d', 'fdtd-apml', 'jacobi-1d', 'jacobi-2d', 'seidel-2d'))
plt.xticks(rotation=70)
ax.tick_params(labelsize=14)
ax.legend((rects1a, rects11, rects111), ('Overall CPI', 'frontend stalls', 'backend stals'), 
							loc='upper center', ncol=6, fontsize = 'large', bbox_to_anchor=(0.5, 1.15))

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
plt.grid(True)

#ax.set_yticks(np.arange(0,5,1))
plt.axes().set_aspect(1, 'box')

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
