./linear-algebra/kernels/2mm/2mm_time
tmp, 0x1180200, 18012000
A, 0x22b3730, 18012000
B, 0x33e6c60, 18012000
C, 0x451a190, 18012000
D, 0x564d6c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/2mm/2mm_time':

       57574519264      instructions              #    0.33  insns per cycle        
                                                  #    2.58  stalled cycles per insn
      176300690263      cycles                                                      
         737353659      cache-misses                                                
       79672656585      stalled-cycles-backend    #   45.19% backend  cycles idle   
      148764014496      stalled-cycles-frontend   #   84.38% frontend cycles idle   
      154004849860      ref-cycles                                                  

      57.900807327 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/3mm/3mm_time':

       81154760630      instructions              #    0.95  insns per cycle        
                                                  #    0.67  stalled cycles per insn
       85291509249      cycles                                                      
        1107018542      cache-misses                                                
       15059648347      stalled-cycles-backend    #   17.66% backend  cycles idle   
       54154967602      stalled-cycles-frontend   #   63.49% frontend cycles idle   
       74865620420      ref-cycles                                                  

      28.147887381 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/atax/atax_time':

         320959017      instructions              #    0.83  insns per cycle        
                                                  #    0.72  stalled cycles per insn
         388470409      cycles                                                      
           2727093      cache-misses                                                
         183142231      stalled-cycles-backend    #   47.14% backend  cycles idle   
         229636299      stalled-cycles-frontend   #   59.11% frontend cycles idle   
         388626560      ref-cycles                                                  

       0.146846035 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0x2313200, 1352104000
s, 0x52cbd6d0, 104000
q, 0x52cd6d20, 104000
p, 0x52cf0370, 104000
r, 0x52d099c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/bicg/bicg_time':

        3439089072      instructions              #    0.70  insns per cycle        
                                                  #    0.91  stalled cycles per insn
        4893048714      cycles                                                      
          22285555      cache-misses                                                
        2020238737      stalled-cycles-backend    #   41.29% backend  cycles idle   
        3132319581      stalled-cycles-frontend   #   64.02% frontend cycles idle   
        4893209060      ref-cycles                                                  

       1.840408905 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/cholesky/cholesky_time':

       64192243946      instructions              #    1.70  insns per cycle        
                                                  #    0.12  stalled cycles per insn
       37685470928      cycles                                                      
         151844611      cache-misses                                                
        7402639752      stalled-cycles-backend    #   19.64% backend  cycles idle   
        5581349897      stalled-cycles-frontend   #   14.81% frontend cycles idle   
       33467684080      ref-cycles                                                  

      12.582873000 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x1d50200, 526336
A, 0x1dd1a10, 269486080
sum, 0x120d3220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/doitgen/doitgen_time':

       69680351645      instructions              #    1.55  insns per cycle        
                                                  #    0.14  stalled cycles per insn
       44939713309      cycles                                                      
          15714225      cache-misses                                                
        4237489835      stalled-cycles-backend    #    9.43% backend  cycles idle   
        9907615155      stalled-cycles-frontend   #   22.05% frontend cycles idle   
       39776672160      ref-cycles                                                  

      14.954650687 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gemm/gemm_time':

       72134606508      instructions              #    1.07  insns per cycle        
                                                  #    0.38  stalled cycles per insn
       67727510389      cycles                                                      
        1004582132      cache-misses                                                
       13424402878      stalled-cycles-backend    #   19.82% backend  cycles idle   
       27691630726      stalled-cycles-frontend   #   40.89% frontend cycles idle   
       60290422820      ref-cycles                                                  

      22.667990840 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gemver/gemver_time':

       12312636956      instructions              #    0.86  insns per cycle        
                                                  #    0.73  stalled cycles per insn
       14293160643      cycles                                                      
         110454304      cache-misses                                                
        5481244116      stalled-cycles-backend    #   38.35% backend  cycles idle   
        9023565347      stalled-cycles-frontend   #   63.13% frontend cycles idle   
       13126705840      ref-cycles                                                  

       4.935862310 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/gesummv/gesummv_time':

        1692756314      instructions              #    0.59  insns per cycle        
                                                  #    1.15  stalled cycles per insn
        2859471402      cycles                                                      
          26558512      cache-misses                                                
         966265430      stalled-cycles-backend    #   33.79% backend  cycles idle   
        1947595812      stalled-cycles-frontend   #   68.11% frontend cycles idle   
        2859580600      ref-cycles                                                  

       1.075750537 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/mvt/mvt_time':

        7710297620      instructions              #    0.67  insns per cycle        
                                                  #    1.08  stalled cycles per insn
       11456045391      cycles                                                      
         107506493      cache-misses                                                
        5133431043      stalled-cycles-backend    #   44.81% backend  cycles idle   
        8304891252      stalled-cycles-frontend   #   72.49% frontend cycles idle   
       10660450540      ref-cycles                                                  

       4.008685574 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/symm/symm_time':

       52125028516      instructions              #    0.56  insns per cycle        
                                                  #    1.33  stalled cycles per insn
       93393240687      cycles                                                      
        1006001798      cache-misses                                                
       24098484549      stalled-cycles-backend    #   25.80% backend  cycles idle   
       69394644506      stalled-cycles-frontend   #   74.30% frontend cycles idle   
       82609749680      ref-cycles                                                  

      31.059378249 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/syr2k/syr2k_time':

      104146226190      instructions              #    0.97  insns per cycle        
                                                  #    0.56  stalled cycles per insn
      107422241267      cycles                                                      
          71002813      cache-misses                                                
       20964844964      stalled-cycles-backend    #   19.52% backend  cycles idle   
       58689409143      stalled-cycles-frontend   #   54.63% frontend cycles idle   
       94110126800      ref-cycles                                                  

      35.382007944 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/syrk/syrk_time':

       64113535679      instructions              #    1.82  insns per cycle        
                                                  #    0.05  stalled cycles per insn
       35300397631      cycles                                                      
          62266607      cache-misses                                                
        2133552295      stalled-cycles-backend    #    6.04% backend  cycles idle   
        3211884535      stalled-cycles-frontend   #    9.10% frontend cycles idle   
       31394917160      ref-cycles                                                  

      11.803766959 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/trisolv/trisolv_time':

        3108496758      instructions              #    0.48  insns per cycle        
                                                  #    1.67  stalled cycles per insn
        6534906599      cycles                                                      
          53129439      cache-misses                                                
        3854225466      stalled-cycles-backend    #   58.98% backend  cycles idle   
        5189563869      stalled-cycles-frontend   #   79.41% frontend cycles idle   
        6381016580      ref-cycles                                                  

       2.399772871 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0xde4200, 128032000
B, 0x880d910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/kernels/trmm/trmm_time':

      256343157066      instructions              #    1.77  insns per cycle        
                                                  #    0.07  stalled cycles per insn
      145119935689      cycles                                                      
         302714496      cache-misses                                                
        4399988846      stalled-cycles-backend    #    3.03% backend  cycles idle   
       16705917024      stalled-cycles-frontend   #   11.51% frontend cycles idle   
      126890781160      ref-cycles                                                  

      47.705691330 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/durbin/durbin_time':

        1543241939      instructions              #    0.43  insns per cycle        
                                                  #    1.92  stalled cycles per insn
        3595003849      cycles                                                      
          38347620      cache-misses                                                
        1679559949      stalled-cycles-backend    #   46.72% backend  cycles idle   
        2960015305      stalled-cycles-frontend   #   82.34% frontend cycles idle   
        3595101500      ref-cycles                                                  

       1.352273365 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/dynprog/dynprog_time':

      139693613309      instructions              #    1.50  insns per cycle        
                                                  #    0.28  stalled cycles per insn
       93229813148      cycles                                                      
         425545742      cache-misses                                                
        6503453328      stalled-cycles-backend    #    6.98% backend  cycles idle   
       39194280966      stalled-cycles-frontend   #   42.04% frontend cycles idle   
       81768659640      ref-cycles                                                  

      30.742203683 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60149869092      instructions              #    0.60  insns per cycle        
                                                  #    1.23  stalled cycles per insn
      100195707754      cycles                                                      
         404984570      cache-misses                                                
       26626474715      stalled-cycles-backend    #   26.57% backend  cycles idle   
       74259711488      stalled-cycles-frontend   #   74.11% frontend cycles idle   
       87825354500      ref-cycles                                                  

      33.019001914 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/lu/lu_time':

      149609348377      instructions              #    1.60  insns per cycle        
                                                  #    0.19  stalled cycles per insn
       93234795208      cycles                                                      
         257977273      cache-misses                                                
       24319125580      stalled-cycles-backend    #   26.08% backend  cycles idle   
       29024073394      stalled-cycles-frontend   #   31.13% frontend cycles idle   
       81074781400      ref-cycles                                                  

      30.481242251 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7f0e8e7c8000, 128064008
b, 0x7f0e864c0000, 32008
x, 0x7f0e864b8000, 32008
y, 0x7f0e864b0000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149982206773      instructions              #    0.20  insns per cycle        
                                                  #    4.29  stalled cycles per insn
      738203506526      cycles                                                      
       19566543247      cache-misses                                                
      192198355421      stalled-cycles-backend    #   26.04% backend  cycles idle   
      643021054362      stalled-cycles-frontend   #   87.11% frontend cycles idle   
      642620651880      ref-cycles                                                  

     241.597566885 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./datamining/correlation/correlation_time':

       94834873562      instructions              #    0.49  insns per cycle        
                                                  #    1.59  stalled cycles per insn
      191900978841      cycles                                                      
        1627320117      cache-misses                                                
       44869595512      stalled-cycles-backend    #   23.38% backend  cycles idle   
      151179009108      stalled-cycles-frontend   #   78.78% frontend cycles idle   
      166872210420      ref-cycles                                                  

      62.739385143 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./datamining/covariance/covariance_time':

       23472340747      instructions              #    0.36  insns per cycle        
                                                  #    2.25  stalled cycles per insn
       64823807090      cycles                                                      
         251436426      cache-misses                                                
       31617173700      stalled-cycles-backend    #   48.77% backend  cycles idle   
       52899914622      stalled-cycles-frontend   #   81.61% frontend cycles idle   
       57766614680      ref-cycles                                                  

      21.729350792 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./medley/floyd-warshall/floyd-warshall_time':

      512424460132      instructions              #    1.79  insns per cycle        
                                                  #    0.18  stalled cycles per insn
      286151486611      cycles                                                      
         710366141      cache-misses                                                
       67966042944      stalled-cycles-backend    #   23.75% backend  cycles idle   
       92142929859      stalled-cycles-frontend   #   32.20% frontend cycles idle   
      249527928040      ref-cycles                                                  

      93.812287394 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./medley/reg_detect/reg_detect_time':

      189594023671      instructions              #    0.93  insns per cycle        
                                                  #    0.61  stalled cycles per insn
      203686186802      cycles                                                      
        1179757809      cache-misses                                                
       93780222688      stalled-cycles-backend    #   46.04% backend  cycles idle   
      114869376354      stalled-cycles-frontend   #   56.40% frontend cycles idle   
      177818118200      ref-cycles                                                  

      66.852658203 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/adi/adi_time':

       74704966776      instructions              #    0.47  insns per cycle        
                                                  #    1.64  stalled cycles per insn
      158202378242      cycles                                                      
         141470964      cache-misses                                                
       95435524901      stalled-cycles-backend    #   60.32% backend  cycles idle   
      122820378237      stalled-cycles-frontend   #   77.63% frontend cycles idle   
      138266792400      ref-cycles                                                  

      51.982977802 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x1246200, 512064000
ey, 0x1fabd010, 512064000
hz, 0x3e333e20, 512064000
_fict_, 0x5cbaac30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/fdtd-2d/fdtd-2d_time':

      155359541930      instructions              #    1.21  insns per cycle        
                                                  #    0.40  stalled cycles per insn
      128220084564      cycles                                                      
         424113005      cache-misses                                                
       42302412013      stalled-cycles-backend    #   32.99% backend  cycles idle   
       61833750499      stalled-cycles-frontend   #   48.22% frontend cycles idle   
      112194845580      ref-cycles                                                  

      42.181215635 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/fdtd-apml/fdtd-apml_time':

        1530426560      instructions              #    0.36  insns per cycle        
                                                  #    2.26  stalled cycles per insn
        4215588936      cycles                                                      
           9430291      cache-misses                                                
        2899208386      stalled-cycles-backend    #   68.77% backend  cycles idle   
        3453584439      stalled-cycles-frontend   #   81.92% frontend cycles idle   
        4215759740      ref-cycles                                                  

       1.585703062 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120132951347      instructions              #    1.02  insns per cycle        
                                                  #    0.56  stalled cycles per insn
      117798213888      cycles                                                      
        1655640053      cache-misses                                                
       52198659808      stalled-cycles-backend    #   44.31% backend  cycles idle   
       67183339089      stalled-cycles-frontend   #   57.03% frontend cycles idle   
      103133055740      ref-cycles                                                  

      38.774300943 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x1df4200, 512064000
B, 0x2066b010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97233111436      instructions              #    1.22  insns per cycle        
                                                  #    0.41  stalled cycles per insn
       79374679239      cycles                                                      
         792350484      cache-misses                                                
       26990594798      stalled-cycles-backend    #   34.00% backend  cycles idle   
       40158362907      stalled-cycles-frontend   #   50.59% frontend cycles idle   
       69720322340      ref-cycles                                                  

      26.212725506 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=0 ./stencils/seidel-2d/seidel-2d_time':

       48903366116      instructions              #    0.48  insns per cycle        
                                                  #    1.65  stalled cycles per insn
      101948256435      cycles                                                      
          15877755      cache-misses                                                
       54856306164      stalled-cycles-backend    #   53.81% backend  cycles idle   
       80662425241      stalled-cycles-frontend   #   79.12% frontend cycles idle   
       89350890380      ref-cycles                                                  

      33.593043520 seconds time elapsed

