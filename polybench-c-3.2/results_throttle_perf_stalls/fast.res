./linear-algebra/kernels/2mm/2mm_time
tmp, 0x604130, 18000000
A, 0x1737660, 18000000
B, 0x286ab90, 18000000
C, 0x399e0c0, 18000000
D, 0x4ad15f0, 18000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/2mm/2mm_time':

    57,598,313,994      instructions              #    1.16  insn per cycle         
    49,647,459,901      cycles                                                      
         8,521,294      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    29,583,283,400      ref-cycles                                                  

      13.483170182 seconds time elapsed

      13.402919000 seconds user
       0.050821000 seconds sys


./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/3mm/3mm_time':

    81,309,389,575      instructions              #    1.20  insn per cycle         
    67,749,304,896      cycles                                                      
        42,789,651      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    40,365,029,760      ref-cycles                                                  

      18.397731267 seconds time elapsed

      18.267239000 seconds user
       0.088770000 seconds sys


./linear-algebra/kernels/atax/atax_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
y, 0x7fff89ba3000, 120000
tmp, 0x7fff89b85000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/atax/atax_time':

     4,998,391,312      instructions              #    0.84  insn per cycle         
     5,951,786,819      cycles                                                      
        30,627,355      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,582,361,552      ref-cycles                                                  

       1.633547067 seconds time elapsed

       0.628082000 seconds user
       1.002937000 seconds sys


./linear-algebra/kernels/bicg/bicg_time
A, 0x604130, 1352000000
s, 0x50fae600, 104000
q, 0x50fc7c50, 104000
p, 0x50fe12a0, 104000
r, 0x50ffa8f0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/bicg/bicg_time':

     3,669,408,392      instructions              #    0.95  insn per cycle         
     3,868,112,393      cycles                                                      
        24,124,348      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,348,860,712      ref-cycles                                                  

       1.071071853 seconds time elapsed

       0.581924000 seconds user
       0.487175000 seconds sys


./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/cholesky/cholesky_time':

    48,366,300,664      instructions              #    1.07  insn per cycle         
    45,080,478,304      cycles                                                      
       190,358,469      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    26,867,131,808      ref-cycles                                                  

      12.245684568 seconds time elapsed

      12.142327000 seconds user
       0.072784000 seconds sys


./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x7ffff7ff6000, 524288
A, 0x7ffff7ef0000, 269486080
sum, 0x7fffd77fd000, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/doitgen/doitgen_time':

    72,113,744,900      instructions              #    1.01  insn per cycle         
    71,539,959,806      cycles                                                      
        10,111,310      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    42,604,904,232      ref-cycles                                                  

      19.416215198 seconds time elapsed

      18.575286000 seconds user
       0.814883000 seconds sys


./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gemm/gemm_time':

    72,331,951,427      instructions              #    0.65  insn per cycle         
   111,600,255,209      cycles                                                      
       129,008,553      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    66,432,903,064      ref-cycles                                                  

      30.276957236 seconds time elapsed

      30.157989000 seconds user
       0.056819000 seconds sys


./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gemver/gemver_time':

     7,359,707,293      instructions              #    0.48  insn per cycle         
    15,416,912,758      cycles                                                      
       107,713,556      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     9,218,027,720      ref-cycles                                                  

       4.201780744 seconds time elapsed

       3.521871000 seconds user
       0.670931000 seconds sys


./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gesummv/gesummv_time':

     2,857,007,077      instructions              #    0.82  insn per cycle         
     3,485,613,352      cycles                                                      
        27,740,876      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     2,123,593,032      ref-cycles                                                  

       0.968446583 seconds time elapsed

       0.376386000 seconds user
       0.590349000 seconds sys


./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/mvt/mvt_time':

     5,664,612,066      instructions              #    0.37  insn per cycle         
    15,360,917,645      cycles                                                      
        73,083,371      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     9,179,481,960      ref-cycles                                                  

       4.183924716 seconds time elapsed

       3.518938000 seconds user
       0.656054000 seconds sys


./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/symm/symm_time':

    40,557,731,420      instructions              #    0.21  insn per cycle         
   190,353,954,597      cycles                                                      
       207,252,472      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   113,280,230,008      ref-cycles                                                  

      51.627767634 seconds time elapsed

      51.459658000 seconds user
       0.056840000 seconds sys


./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/syr2k/syr2k_time':

   104,273,610,402      instructions              #    1.53  insn per cycle         
    68,155,976,638      cycles                                                      
     1,124,299,239      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    40,601,055,616      ref-cycles                                                  

      18.505212657 seconds time elapsed

      18.408017000 seconds user
       0.058803000 seconds sys


./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/syrk/syrk_time':

    64,201,073,510      instructions              #    1.86  insn per cycle         
    34,534,135,179      cycles                                                      
       213,218,639      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    20,585,192,232      ref-cycles                                                  

       9.382553979 seconds time elapsed

       9.313793000 seconds user
       0.049834000 seconds sys


./linear-algebra/kernels/trisolv/trisolv_time
A, 0x7ffff7fbb000, 1800000000
x, 0x7fff89bc1000, 120000
c, 0x7fff89ba3000, 120000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/trisolv/trisolv_time':

     3,197,097,534      instructions              #    0.64  insn per cycle         
     4,994,999,309      cycles                                                      
        16,451,578      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     3,014,140,448      ref-cycles                                                  

       1.374541288 seconds time elapsed

       0.359327000 seconds user
       1.012995000 seconds sys


./linear-algebra/kernels/trmm/trmm_time
A, 0x604130, 128000000
B, 0x802d840, 128000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/trmm/trmm_time':

   256,521,245,206      instructions              #    1.62  insn per cycle         
   158,627,227,296      cycles                                                      
     3,139,220,233      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    94,403,963,280      ref-cycles                                                  

      43.023868432 seconds time elapsed

      42.821280000 seconds user
       0.118620000 seconds sys


./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/durbin/durbin_time':

     2,613,411,010      instructions              #    0.30  insn per cycle         
     8,617,514,927      cycles                                                      
        22,979,477      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     5,173,064,512      ref-cycles                                                  

       2.358270077 seconds time elapsed

       1.757075000 seconds user
       0.596043000 seconds sys


./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/dynprog/dynprog_time':

    76,228,303,129      instructions              #    1.79  insn per cycle         
    42,617,973,551      cycles                                                      
       736,865,382      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    25,391,917,056      ref-cycles                                                  

      11.571067770 seconds time elapsed

      11.471115000 seconds user
       0.072811000 seconds sys


./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

    52,535,296,708      instructions              #    0.20  insn per cycle         
   259,692,672,100      cycles                                                      
       115,476,730      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   154,605,731,192      ref-cycles                                                  

      70.458353319 seconds time elapsed

      70.293213000 seconds user
       0.056821000 seconds sys


./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/lu/lu_time':

    85,779,867,116      instructions              #    1.34  insn per cycle         
    64,089,627,457      cycles                                                      
     1,858,334,939      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    38,187,454,712      ref-cycles                                                  

      17.403305616 seconds time elapsed

      17.293692000 seconds user
       0.068811000 seconds sys


./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7ffff7fe7000, 512128008
b, 0x7fffd85bb000, 64008
x, 0x7fffd85ab000, 64008
y, 0x7fffd859b000, 64008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/ludcmp/ludcmp_time':

 1,544,994,129,879      instructions              #    0.26  insn per cycle         
 6,019,821,813,945      cycles                                                      
    79,748,498,906      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
 3,581,585,927,128      ref-cycles                                                  

    1632.085375724 seconds time elapsed

    1628.879078000 seconds user
       0.208636000 seconds sys


./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./datamining/correlation/correlation_time':

    95,341,757,245      instructions              #    0.24  insn per cycle         
   396,040,100,382      cycles                                                      
       616,132,491      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   235,610,086,448      ref-cycles                                                  

     107.367715538 seconds time elapsed

     107.032152000 seconds user
       0.090761000 seconds sys


./datamining/covariance/covariance_time
data, 0x604130, 25920000
symmat, 0x1ec6c00, 25920000
mean, 0x37896d0, 14400

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./datamining/covariance/covariance_time':

    23,558,644,572      instructions              #    0.31  insn per cycle         
    75,506,374,723      cycles                                                      
         7,773,614      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,952,022,896      ref-cycles                                                  

      20.484001913 seconds time elapsed

      20.405486000 seconds user
       0.038848000 seconds sys


./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./medley/floyd-warshall/floyd-warshall_time':

   448,773,866,455      instructions              #    1.82  insn per cycle         
   246,757,338,189      cycles                                                      
     6,319,181,723      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   146,833,352,688      ref-cycles                                                  

      66.913660609 seconds time elapsed

      66.712155000 seconds user
       0.058846000 seconds sys


./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./medley/reg_detect/reg_detect_time':

   151,962,613,701      instructions              #    1.41  insn per cycle         
   108,067,804,825      cycles                                                      
     3,976,482,151      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    64,325,469,736      ref-cycles                                                  

      29.312013629 seconds time elapsed

      29.154375000 seconds user
       0.086713000 seconds sys


./stencils/adi/adi_time
X, 0x7ffff7fe7000, 512000000
A, 0x7fffd85cb000, 512000000
B, 0x7fffb91bb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/adi/adi_time':

   124,075,461,574      instructions              #    0.62  insn per cycle         
   198,919,574,950      cycles                                                      
     4,827,011,351      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   118,364,931,872      ref-cycles                                                  

      53.938745666 seconds time elapsed

      52.990583000 seconds user
       0.841116000 seconds sys


./stencils/fdtd-2d/fdtd-2d_time
ex, 0x7ffff7fe7000, 512000000
ey, 0x7fffd85cb000, 512000000
hz, 0x7fffb91bb000, 512000000
_fict_, 0x605540, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/fdtd-2d/fdtd-2d_time':

   111,145,672,508      instructions              #    0.66  insn per cycle         
   168,907,743,778      cycles                                                      
     5,606,142,746      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
   100,518,081,928      ref-cycles                                                  

      45.811780489 seconds time elapsed

      44.869042000 seconds user
       0.843106000 seconds sys


./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/fdtd-apml/fdtd-apml_time':

     1,970,900,096      instructions              #    1.14  insn per cycle         
     1,726,326,618      cycles                                                      
         8,528,376      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
     1,069,818,640      ref-cycles                                                  

       0.488229523 seconds time elapsed

       0.264893000 seconds user
       0.222022000 seconds sys


./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

    75,347,601,547      instructions              #    0.76  insn per cycle         
    98,773,572,385      cycles                                                      
     4,178,721,843      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    58,833,470,696      ref-cycles                                                  

      26.815008109 seconds time elapsed

      26.669405000 seconds user
       0.085775000 seconds sys


./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x7ffff7fe7000, 512000000
B, 0x7fffd85cb000, 512000000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

    62,388,932,187      instructions              #    0.84  insn per cycle         
    74,625,173,680      cycles                                                      
     3,177,194,975      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    44,440,979,440      ref-cycles                                                  

      20.254539794 seconds time elapsed

      19.790985000 seconds user
       0.420315000 seconds sys


./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/seidel-2d/seidel-2d_time':

    40,406,099,971      instructions              #    0.42  insn per cycle         
    95,528,961,630      cycles                                                      
       292,461,125      cache-misses                                                
   <not supported>      stalled-cycles-backend                                      
   <not supported>      stalled-cycles-frontend                                     
    56,882,553,288      ref-cycles                                                  

      25.925241863 seconds time elapsed

      25.806730000 seconds user
       0.090819000 seconds sys


