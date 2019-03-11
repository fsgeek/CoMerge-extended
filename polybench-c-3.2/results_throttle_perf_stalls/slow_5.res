./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,600,319,315      instructions              #    1.12  insn per cycle         
    51,463,422,173      cycles                                                      
         9,798,955      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    30,659,560,712      ref-cycles                                                  

      13.974372178 seconds time elapsed

      13.876917000 seconds user
       0.068762000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

     4,998,400,601      instructions              #    0.84  insn per cycle         
     5,985,338,265      cycles                                                      
        30,564,597      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,602,771,040      ref-cycles                                                  

       1.642840895 seconds time elapsed

       0.626785000 seconds user
       1.013526000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,679,577,162      instructions              #    0.78  insn per cycle         
     4,729,732,145      cycles                                                      
        23,665,370      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,856,123,952      ref-cycles                                                  

       1.302468840 seconds time elapsed

       0.588194000 seconds user
       0.712217000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,110,309,691      instructions              #    1.01  insn per cycle         
    71,283,243,943      cycles                                                      
        12,522,589      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,451,634,720      ref-cycles                                                  

      19.347926358 seconds time elapsed

      18.511066000 seconds user
       0.810934000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,046,174      instructions              #    0.64  insn per cycle         
     4,969,872,140      cycles                                                      
        16,422,451      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,000,569,440      ref-cycles                                                  

       1.368258743 seconds time elapsed

       0.361304000 seconds user
       1.004872000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,554,557,204      instructions              #    1.38  insn per cycle         
   185,728,173,951      cycles                                                      
     3,120,176,313      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   110,527,712,680      ref-cycles                                                  

      50.373757840 seconds time elapsed

      50.131645000 seconds user
       0.148563000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,545,004,951,128      instructions              #    0.26  insn per cycle         
 6,030,517,060,670      cycles                                                      
    77,625,328,921      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,587,277,644,808      ref-cycles                                                  

    1634.630566717 seconds time elapsed

    1631.358772000 seconds user
       0.220618000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

    23,559,200,157      instructions              #    0.31  insn per cycle         
    75,958,542,680      cycles                                                      
         8,905,397      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,224,630,176      ref-cycles                                                  

      20.608501779 seconds time elapsed

      20.515283000 seconds user
       0.051800000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

   124,076,323,341      instructions              #    0.62  insn per cycle         
   199,449,376,818      cycles                                                      
     4,826,603,403      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,723,914,848      ref-cycles                                                  

      54.105671532 seconds time elapsed

      53.144104000 seconds user
       0.853161000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   111,146,191,613      instructions              #    0.66  insn per cycle         
   169,478,674,830      cycles                                                      
     5,612,498,013      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,874,859,888      ref-cycles                                                  

      45.967168874 seconds time elapsed

      45.035475000 seconds user
       0.832135000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,389,266,056      instructions              #    0.83  insn per cycle         
    74,778,500,009      cycles                                                      
     3,179,485,924      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,519,449,480      ref-cycles                                                  

      20.288385489 seconds time elapsed

      19.838611000 seconds user
       0.405366000 seconds sys


