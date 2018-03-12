import sys, csv, os, collections
import matplotlib.pyplot as plt
import numpy as np

input_file = sys.argv[1]
pinatrace = sys.argv[2]

address_dict = {}
size_dict = {}
read_struct_dict = collections.defaultdict(list)
write_struct_dict = collections.defaultdict(list)
read_dict = {}
write_dict = {}

### Read data structure file ###
reader = csv.reader(open(input_file, 'r'), delimiter = ',')
for row in reader:
    address_dict[row[0]] = int(row[1],16)
    size_dict[row[0]] = int(row[2])
    read_dict[row[0]] = 0
    write_dict[row[0]] = 0

### Read pinatrace.out file ###
with open(pinatrace) as f:
    rows = f.readlines()
line = 0;
for row in rows:
    line = line + 1
    first = row.split('\n')[0]
    first = first.split(' ')
    # Parse the operation and the address
    if len(first) > 1:
        op = first[1]
        addr = int(first[2], 16)

        # Check if the parsed address is part of any data structure range
        for s in address_dict:
            base_addr = address_dict[s]
            range_size = size_dict[s]
            if (addr > base_addr and addr < base_addr + range_size):
                if (op == 'R'):
                    read_struct_dict[s].append((line, addr))
                    read_dict[s] += 1
                elif (op == 'W'):
                    write_struct_dict[s].append((line, addr))
                    write_dict[s] += 1

read = []
write = []
struct = []
### Plot number of accesses ###
for s in read_dict:
    read.append(read_dict[s])
    write.append(write_dict[s])
#    struct.append(s.split(':')[2])
    struct.append(s)
    print(s, "->reads: ", read_dict[s], " writes: ", write_dict[s])


N = len(read_dict)
ind = np.arange(N)
width = 0.5
fig, ax = plt.subplots()
rects1 = plt.bar(ind-width, read, width, color='r')
rects2 = plt.bar(ind, write, width, color='g')
plt.title('Memory accesses')
plt.grid(True)
plt.xticks(ind + width)
plt.ylabel("Number of accesses")
box = ax.get_position()
ax.set_position([box.x0, box.y0 + box.height * 0.1, box.width, box.height * 0.9])
plt.xticks(ind, rotation = 90)
ax.set_xticklabels(struct, rotation = 45)
plt.legend((rects1[0], rects2[0]), ('read', 'write'), loc='upper right', ncol=2)
plt.savefig("access_num.png", figsize=(10,6), dpi=100)
plt.show()


### Plot access pattern ###
for s in address_dict:
    xr = []
    yr = []
    for tup in read_struct_dict[s]:
        xr.append(tup[0])
        yr.append(tup[1])
    xw = []
    yw = []
    for tup in write_struct_dict[s]:
        xw.append(tup[0])
        yw.append(tup[1])

    fig, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True)
    
    # Only reads
    pl1, = ax1.plot(xr, yr, '-o', color='r', label = "read")
    ax1.set_title('Access pattern for ' + s)
    ax1.grid(True)
    # Only writes
    pl2, = ax2.plot(xw, yw, '-o', color='g', label = "write")
    ax2.set_ylabel('Address range')
    ax2.grid(True)
    # Both
    ax3.plot(xr, yr, '-o', color='r')
    ax3.plot(xw, yw, '-o', color='g')
    ax3.set_xlabel('Time steps')
    ax3.grid(True)
    
    fig.legend([pl1, pl2], ['Reads', 'Writes'], loc = 'center right')
    fig.savefig("access_pattern-"+ s + ".png", dpi=100)
    plt.show()
