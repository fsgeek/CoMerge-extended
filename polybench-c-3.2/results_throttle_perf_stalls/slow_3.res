./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,598,997,400      instructions              #    1.15  insn per cycle         
    50,211,124,350      cycles                                                      
         6,264,779      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    29,918,146,280      ref-cycles                                                  

      13.636674986 seconds time elapsed

      13.542703000 seconds user
       0.064775000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

     4,998,535,968      instructions              #    0.84  insn per cycle         
     5,983,162,428      cycles                                                      
        30,566,777      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,602,161,816      ref-cycles                                                  

       1.642372336 seconds time elapsed

       0.644482000 seconds user
       0.995566000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,679,622,750      instructions              #    0.78  insn per cycle         
     4,728,011,593      cycles                                                      
        23,922,063      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,858,658,440      ref-cycles                                                  

       1.303765934 seconds time elapsed

       0.592334000 seconds user
       0.709163000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,112,106,075      instructions              #    1.01  insn per cycle         
    71,516,878,901      cycles                                                      
        11,158,346      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,588,763,800      ref-cycles                                                  

      19.410949345 seconds time elapsed

      18.550629000 seconds user
       0.833984000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,055,682      instructions              #    0.64  insn per cycle         
     4,994,415,254      cycles                                                      
        16,424,422      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,011,589,416      ref-cycles                                                  

       1.373139168 seconds time elapsed

       0.379905000 seconds user
       0.991128000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,555,147,911      instructions              #    1.38  insn per cycle         
   185,754,668,339      cycles                                                      
     3,118,630,457      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   110,543,187,216      ref-cycles                                                  

      50.380377183 seconds time elapsed

      50.134662000 seconds user
       0.153582000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,545,127,761,679      instructions              #    0.25  insn per cycle         
 6,123,513,939,770      cycles                                                      
    79,621,696,054      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,642,711,854,496      ref-cycles                                                  

    1659.894525316 seconds time elapsed

    1656.658375000 seconds user
       0.220614000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

    23,559,211,225      instructions              #    0.31  insn per cycle         
    76,007,780,009      cycles                                                      
        10,117,914      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,257,021,920      ref-cycles                                                  

      20.623255971 seconds time elapsed

      20.532668000 seconds user
       0.049805000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

   124,076,146,627      instructions              #    0.62  insn per cycle         
   199,553,231,389      cycles                                                      
     4,827,336,090      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,742,255,280      ref-cycles                                                  

      54.112983849 seconds time elapsed

      53.180910000 seconds user
       0.820145000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   111,145,732,551      instructions              #    0.66  insn per cycle         
   169,066,985,449      cycles                                                      
     5,606,740,600      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,644,582,544      ref-cycles                                                  

      45.862460576 seconds time elapsed

      44.929310000 seconds user
       0.835138000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,389,632,542      instructions              #    0.83  insn per cycle         
    74,780,491,643      cycles                                                      
     3,180,720,223      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,522,687,528      ref-cycles                                                  

      20.290707842 seconds time elapsed

      19.835936000 seconds user
       0.409317000 seconds sys


