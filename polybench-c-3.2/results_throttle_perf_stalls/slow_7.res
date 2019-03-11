./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,599,029,171      instructions              #    1.14  insn per cycle         
    50,389,577,742      cycles                                                      
         6,709,110      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    30,018,006,216      ref-cycles                                                  

      13.681844397 seconds time elapsed

      13.590196000 seconds user
       0.063777000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

     4,998,508,253      instructions              #    0.84  insn per cycle         
     5,962,847,572      cycles                                                      
        30,623,761      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,593,496,896      ref-cycles                                                  

       1.638725037 seconds time elapsed

       0.642733000 seconds user
       0.993538000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,679,581,044      instructions              #    0.78  insn per cycle         
     4,732,626,712      cycles                                                      
        23,804,990      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,862,882,968      ref-cycles                                                  

       1.305451102 seconds time elapsed

       0.578696000 seconds user
       0.724572000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,111,488,364      instructions              #    1.01  insn per cycle         
    71,178,468,907      cycles                                                      
        11,957,441      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,385,127,840      ref-cycles                                                  

      19.317839142 seconds time elapsed

      18.431188000 seconds user
       0.860855000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,048,144      instructions              #    0.64  insn per cycle         
     4,987,017,113      cycles                                                      
        16,408,790      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,007,189,152      ref-cycles                                                  

       1.371238620 seconds time elapsed

       0.348217000 seconds user
       1.020869000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,553,279,312      instructions              #    1.39  insn per cycle         
   184,750,810,175      cycles                                                      
     3,122,821,049      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   109,951,055,456      ref-cycles                                                  

      50.110842442 seconds time elapsed

      49.867454000 seconds user
       0.150575000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,544,996,598,694      instructions              #    0.26  insn per cycle         
 6,023,347,349,960      cycles                                                      
    77,273,835,839      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,583,056,435,464      ref-cycles                                                  

    1632.713541863 seconds time elapsed

    1629.501816000 seconds user
       0.207627000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

    23,559,054,325      instructions              #    0.31  insn per cycle         
    75,872,257,076      cycles                                                      
         7,760,271      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,168,138,400      ref-cycles                                                  

      20.582741118 seconds time elapsed

      20.491938000 seconds user
       0.048825000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

   124,075,784,196      instructions              #    0.62  insn per cycle         
   199,160,498,400      cycles                                                      
     4,826,347,044      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,564,624,112      ref-cycles                                                  

      54.033049531 seconds time elapsed

      53.077438000 seconds user
       0.848074000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   111,146,126,141      instructions              #    0.66  insn per cycle         
   169,371,318,077      cycles                                                      
     5,610,613,162      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,791,066,904      ref-cycles                                                  

      45.935489726 seconds time elapsed

      44.985797000 seconds user
       0.849084000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,388,588,701      instructions              #    0.84  insn per cycle         
    74,306,605,067      cycles                                                      
     3,179,669,575      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,246,292,024      ref-cycles                                                  

      20.165601603 seconds time elapsed

      19.706949000 seconds user
       0.415316000 seconds sys


