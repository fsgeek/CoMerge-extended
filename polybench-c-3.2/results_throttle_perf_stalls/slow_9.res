./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,600,331,632      instructions              #    1.12  insn per cycle         
    51,423,502,648      cycles                                                      
        10,176,849      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    30,638,075,336      ref-cycles                                                  

      13.964120244 seconds time elapsed

      13.871114000 seconds user
       0.064760000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

     4,998,489,857      instructions              #    0.84  insn per cycle         
     5,960,449,433      cycles                                                      
        30,577,697      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,589,362,744      ref-cycles                                                  

       1.636425490 seconds time elapsed

       0.677657000 seconds user
       0.956337000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,679,573,814      instructions              #    0.78  insn per cycle         
     4,714,044,075      cycles                                                      
        24,140,065      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,845,497,688      ref-cycles                                                  

       1.297533597 seconds time elapsed

       0.582151000 seconds user
       0.713198000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,111,571,466      instructions              #    1.01  insn per cycle         
    71,254,881,713      cycles                                                      
         9,787,896      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,428,618,408      ref-cycles                                                  

      19.337504643 seconds time elapsed

      18.473129000 seconds user
       0.838872000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,078,736      instructions              #    0.64  insn per cycle         
     4,984,044,158      cycles                                                      
        16,411,129      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,010,917,888      ref-cycles                                                  

       1.372867596 seconds time elapsed

       0.366131000 seconds user
       1.004510000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,553,624,435      instructions              #    1.39  insn per cycle         
   185,022,295,330      cycles                                                      
     3,128,258,666      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   110,101,523,664      ref-cycles                                                  

      50.175761720 seconds time elapsed

      49.927513000 seconds user
       0.152558000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,545,150,405,682      instructions              #    0.25  insn per cycle         
 6,154,061,808,794      cycles                                                      
    77,472,936,008      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,660,701,850,520      ref-cycles                                                  

    1668.081359238 seconds time elapsed

    1664.795156000 seconds user
       0.215574000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

    23,559,266,312      instructions              #    0.31  insn per cycle         
    76,013,900,863      cycles                                                      
        10,759,541      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,257,999,600      ref-cycles                                                  

      20.623318066 seconds time elapsed

      20.534653000 seconds user
       0.048806000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

   124,075,972,556      instructions              #    0.62  insn per cycle         
   199,325,532,527      cycles                                                      
     4,827,582,530      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,649,305,808      ref-cycles                                                  

      54.070301455 seconds time elapsed

      53.130036000 seconds user
       0.832147000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   111,145,699,490      instructions              #    0.66  insn per cycle         
   169,056,355,508      cycles                                                      
     5,603,933,751      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,615,399,808      ref-cycles                                                  

      45.855802171 seconds time elapsed

      44.916442000 seconds user
       0.841168000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,389,174,876      instructions              #    0.84  insn per cycle         
    74,341,947,536      cycles                                                      
     3,180,115,984      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,265,934,504      ref-cycles                                                  

      20.174611120 seconds time elapsed

      19.709566000 seconds user
       0.422264000 seconds sys


