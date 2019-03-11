./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,599,406,213      instructions              #    1.14  insn per cycle         
    50,641,882,460      cycles                                                      
         7,511,188      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    30,180,806,656      ref-cycles                                                  

      13.756125869 seconds time elapsed

      13.663966000 seconds user
       0.063768000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

     4,998,460,584      instructions              #    0.85  insn per cycle         
     5,909,484,110      cycles                                                      
        30,606,186      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,622,198,536      ref-cycles                                                  

       1.651804294 seconds time elapsed

       0.635837000 seconds user
       1.013564000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,679,615,538      instructions              #    0.78  insn per cycle         
     4,730,383,735      cycles                                                      
        23,811,684      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,861,548,360      ref-cycles                                                  

       1.304961414 seconds time elapsed

       0.582912000 seconds user
       0.719872000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,111,866,433      instructions              #    1.01  insn per cycle         
    71,441,346,330      cycles                                                      
        10,959,269      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,544,596,688      ref-cycles                                                  

      19.390898296 seconds time elapsed

      18.506846000 seconds user
       0.857877000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,079,667      instructions              #    0.64  insn per cycle         
     4,996,980,913      cycles                                                      
        16,402,043      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,015,136,872      ref-cycles                                                  

       1.374842567 seconds time elapsed

       0.381445000 seconds user
       0.991307000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,553,869,924      instructions              #    1.38  insn per cycle         
   185,239,165,415      cycles                                                      
     3,122,522,460      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   110,234,036,792      ref-cycles                                                  

      50.240032466 seconds time elapsed

      49.999658000 seconds user
       0.152592000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,544,887,701,580      instructions              #    0.26  insn per cycle         
 5,924,320,106,376      cycles                                                      
    76,100,443,331      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,524,153,987,288      ref-cycles                                                  

    1605.860325794 seconds time elapsed

    1602.635542000 seconds user
       0.227595000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

    23,559,409,346      instructions              #    0.31  insn per cycle         
    75,882,790,167      cycles                                                      
         8,064,157      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,183,279,152      ref-cycles                                                  

      20.589777547 seconds time elapsed

      20.509735000 seconds user
       0.038832000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

   124,076,445,212      instructions              #    0.62  insn per cycle         
   199,171,095,890      cycles                                                      
     4,826,742,491      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,509,881,776      ref-cycles                                                  

      54.004407817 seconds time elapsed

      53.059019000 seconds user
       0.839183000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   111,146,563,628      instructions              #    0.66  insn per cycle         
   169,426,786,982      cycles                                                      
     5,610,683,051      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,832,005,824      ref-cycles                                                  

      45.954769619 seconds time elapsed

      45.031181000 seconds user
       0.822127000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,389,230,806      instructions              #    0.84  insn per cycle         
    74,312,399,556      cycles                                                      
     3,179,895,627      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,247,662,008      ref-cycles                                                  

      20.165992153 seconds time elapsed

      19.717016000 seconds user
       0.406328000 seconds sys


