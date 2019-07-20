./linear-algebra/kernels/2mm/2mm_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

    57,597,518,918      instructions              #    1.16  insn per cycle         
    49,521,018,129      cycles                                                      
         6,055,991      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    29,542,766,704      ref-cycles                                                  

      14.871612875 seconds time elapsed

      13.381805000 seconds user
       0.052833000 seconds sys


./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/atax/atax_time':

    23,667,625,951      instructions              #    0.58  insn per cycle         
    41,132,976,563      cycles                                                      
        62,045,588      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    24,525,272,728      ref-cycles                                                  

      11.177643471 seconds time elapsed

       1.525583000 seconds user
       9.636350000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604260, 1352000000
s, 0x50fae730, 104000
q, 0x50fc7d80, 104000
p, 0x50fe13d0, 104000
r, 0x50ffaa20, 104000

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

     3,660,834,016      instructions              #    0.94  insn per cycle         
     3,912,771,087      cycles                                                      
        24,132,620      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,375,713,296      ref-cycles                                                  

       1.083368791 seconds time elapsed

       0.570986000 seconds user
       0.510028000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

     9,449,629,167      instructions              #    0.87  insn per cycle         
    10,835,356,449      cycles                                                      
        10,009,012      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     6,772,634,264      ref-cycles                                                  

       3.255145588 seconds time elapsed

       0.076747000 seconds user
       3.019046000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

    21,863,992,981      instructions              #    0.55  insn per cycle         
    39,681,086,440      cycles                                                      
        47,417,684      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    23,758,386,080      ref-cycles                                                  

      10.855087360 seconds time elapsed

       1.106226000 seconds user
       9.707685000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604260, 128000000
B, 0x802d970, 128000000

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

   256,525,798,441      instructions              #    1.61  insn per cycle         
   159,825,085,200      cycles                                                      
     3,128,612,322      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    95,087,858,976      ref-cycles                                                  

      43.326665894 seconds time elapsed

      43.105136000 seconds user
       0.118608000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,583,638,345,133      instructions              #    0.05  insn per cycle         
29,981,251,707,277      cycles                                                      
   173,022,179,580      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
17,830,549,259,424      ref-cycles                                                  

    8124.278394155 seconds time elapsed

    8110.696370000 seconds user
       4.735825000 seconds sys


./datamining/covariance/covariance_time
data, 0x604260, 25920000
symmat, 0x1ec6d30, 25920000
mean, 0x3789800, 14400

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./datamining/covariance/covariance_time':

    23,559,610,335      instructions              #    0.31  insn per cycle         
    75,748,175,321      cycles                                                      
         8,427,512      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    45,094,951,616      ref-cycles                                                  

      20.547894665 seconds time elapsed

      20.460352000 seconds user
       0.045798000 seconds sys


./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./stencils/adi/adi_time':

   152,277,919,279      instructions              #    0.28  insn per cycle         
   553,398,690,904      cycles                                                      
     4,907,088,495      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   329,126,869,280      ref-cycles                                                  

     149.963516513 seconds time elapsed

     135.448624000 seconds user
      14.233992000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

   139,215,175,961      instructions              #    0.31  insn per cycle         
   442,157,631,675      cycles                                                      
     5,687,105,882      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   262,983,382,816      ref-cycles                                                  

     119.824901729 seconds time elapsed

     105.424881000 seconds user
      14.178967000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time

 Performance counter stats for 'numactl --cpunodebind=1 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    81,063,801,422      instructions              #    0.29  insn per cycle         
   280,310,302,972      cycles                                                      
     3,253,220,139      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   166,739,131,240      ref-cycles                                                  

      75.973173631 seconds time elapsed

      66.444283000 seconds user
       9.392625000 seconds sys

