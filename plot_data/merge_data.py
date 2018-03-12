import os, sys, re, csv
from operator import truediv
import matplotlib.pyplot as plt
import numpy as np
from scipy.cluster.hierarchy import dendrogram, linkage
from scipy.cluster.vq import *

### Read input ###
data = []
f = open(sys.argv[1], 'r')
r = csv.reader(f ,delimiter=',')
for row in r:
    data.append(row) 

### Convert input to 2D array ###
labels = data[0]
data_array = np.array(data[1:])
features = np.transpose(data_array)[0]
data_2d = np.transpose(data_array)[1:]
data_2d = data_2d.astype(np.float)

### Print ###
print(labels)
print(features)
print(data_2d)

### Cluster ###
Z = linkage(data_2d, 'ward')
#dendrogram(Z, labels=labels, orientation='right')
dendrogram(Z, labels=labels, leaf_font_size=14, color_threshold=60)
plt.axes().set_aspect(0.5, 'box')
plt.show()

'''
res, idx = kmeans2(data_2d, 3)
colors = ([([0.4,1,0.4],[1,0.4,0.4],[0.1,0.8,1])[i] for i in idx])
plt.scatter(data_2d[:,0],data_2d[:,1], c=colors, s=100)
plt.scatter(res[:,0],res[:,1], marker='o', s = 500, linewidths=2, c='none')
plt.scatter(res[:,0],res[:,1], marker='x', s = 500, linewidths=2)
plt.show()
'''
