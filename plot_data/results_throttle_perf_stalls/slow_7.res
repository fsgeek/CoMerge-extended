./linear-algebra/kernels/2mm/2mm_time
tmp, 0x2318200, 18012000
A, 0x344b730, 18012000
B, 0x457ec60, 18012000
C, 0x56b2190, 18012000
D, 0x67e56c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

       57618409820      instructions              #    0.16  insns per cycle        
                                                  #    5.89  stalled cycles per insn
      366687856062      cycles                                                      
         722239306      cache-misses                                                
      127812746815      stalled-cycles-backend    #   34.86% backend  cycles idle   
      339289857846      stalled-cycles-frontend   #   92.53% frontend cycles idle   
      322356879340      ref-cycles                                                  

     121.219322624 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/3mm/3mm_time':

       81233132094      instructions              #    0.23  insns per cycle        
                                                  #    3.96  stalled cycles per insn
      352914974393      cycles                                                      
        1121015680      cache-misses                                                
       46213881046      stalled-cycles-backend    #   13.09% backend  cycles idle   
      321756705231      stalled-cycles-frontend   #   91.17% frontend cycles idle   
      307584108520      ref-cycles                                                  

     115.645966140 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

         321112194      instructions              #    0.50  insns per cycle        
                                                  #    1.51  stalled cycles per insn
         642753044      cycles                                                      
           3109973      cache-misses                                                
         355799734      stalled-cycles-backend    #   55.36% backend  cycles idle   
         483674636      stalled-cycles-frontend   #   75.25% frontend cycles idle   
         642912680      ref-cycles                                                  

       0.242580779 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0x1304200, 1352104000
s, 0x51cae6d0, 104000
q, 0x51cc7d20, 104000
p, 0x51ce1370, 104000
r, 0x51cfa9c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

        3454454790      instructions              #    0.54  insns per cycle        
                                                  #    1.34  stalled cycles per insn
        6409981562      cycles                                                      
          24637435      cache-misses                                                
        3424776705      stalled-cycles-backend    #   53.43% backend  cycles idle   
        4640483100      stalled-cycles-frontend   #   72.39% frontend cycles idle   
        6272187260      ref-cycles                                                  

       2.359230976 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/cholesky/cholesky_time':

       64217824625      instructions              #    0.51  insns per cycle        
                                                  #    1.45  stalled cycles per insn
      125467181264      cycles                                                      
         400651686      cache-misses                                                
       29982749721      stalled-cycles-backend    #   23.90% backend  cycles idle   
       93178036527      stalled-cycles-frontend   #   74.26% frontend cycles idle   
      109801021420      ref-cycles                                                  

      41.282144754 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x1fb9200, 526336
A, 0x203aa10, 269486080
sum, 0x1233c220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

       69696390279      instructions              #    1.43  insns per cycle        
                                                  #    0.20  stalled cycles per insn
       48832691570      cycles                                                      
          15834600      cache-misses                                                
        5775537584      stalled-cycles-backend    #   11.83% backend  cycles idle   
       13825341419      stalled-cycles-frontend   #   28.31% frontend cycles idle   
       43161857040      ref-cycles                                                  

      16.228175908 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemm/gemm_time':

       72173829072      instructions              #    0.36  insns per cycle        
                                                  #    2.25  stalled cycles per insn
      202123624929      cycles                                                      
        1004301859      cache-misses                                                
       25533109295      stalled-cycles-backend    #   12.63% backend  cycles idle   
      162095279005      stalled-cycles-frontend   #   80.20% frontend cycles idle   
      177158242100      ref-cycles                                                  

      66.608512566 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemver/gemver_time':

       12389717921      instructions              #    0.39  insns per cycle        
                                                  #    2.12  stalled cycles per insn
       31657339429      cycles                                                      
         127750392      cache-misses                                                
       14279321831      stalled-cycles-backend    #   45.11% backend  cycles idle   
       26315773749      stalled-cycles-frontend   #   83.13% frontend cycles idle   
       28227561760      ref-cycles                                                  

      10.613612578 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gesummv/gesummv_time':

        1693570494      instructions              #    0.35  insns per cycle        
                                                  #    2.28  stalled cycles per insn
        4774668668      cycles                                                      
          28057678      cache-misses                                                
        2519695520      stalled-cycles-backend    #   52.77% backend  cycles idle   
        3863141557      stalled-cycles-frontend   #   80.91% frontend cycles idle   
        4774856140      ref-cycles                                                  

       1.796106382 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/mvt/mvt_time':

        7777683072      instructions              #    0.33  insns per cycle        
                                                  #    2.60  stalled cycles per insn
       23397979821      cycles                                                      
         115608575      cache-misses                                                
        9759921930      stalled-cycles-backend    #   41.71% backend  cycles idle   
       20211646065      stalled-cycles-frontend   #   86.38% frontend cycles idle   
       21045054260      ref-cycles                                                  

       7.913498502 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/symm/symm_time':

       52163093069      instructions              #    0.24  insns per cycle        
                                                  #    3.76  stalled cycles per insn
      220352308086      cycles                                                      
        1005955741      cache-misses                                                
       74059613918      stalled-cycles-backend    #   33.61% backend  cycles idle   
      196188801092      stalled-cycles-frontend   #   89.03% frontend cycles idle   
      193709023800      ref-cycles                                                  

      72.833022263 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syr2k/syr2k_time':

      104164434809      instructions              #    0.61  insns per cycle        
                                                  #    1.16  stalled cycles per insn
      170920450600      cycles                                                      
         150074657      cache-misses                                                
       66056046361      stalled-cycles-backend    #   38.65% backend  cycles idle   
      121326666762      stalled-cycles-frontend   #   70.98% frontend cycles idle   
      149326094820      ref-cycles                                                  

      56.142600802 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syrk/syrk_time':

       64129756921      instructions              #    0.68  insns per cycle        
                                                  #    0.97  stalled cycles per insn
       94925423704      cycles                                                      
         180924289      cache-misses                                                
       22939504340      stalled-cycles-backend    #   24.17% backend  cycles idle   
       62342440011      stalled-cycles-frontend   #   65.68% frontend cycles idle   
       83242656300      ref-cycles                                                  

      31.297225171 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

        3172082640      instructions              #    0.29  insns per cycle        
                                                  #    3.03  stalled cycles per insn
       10878940573      cycles                                                      
          56451752      cache-misses                                                
        6651914910      stalled-cycles-backend    #   61.14% backend  cycles idle   
        9603446968      stalled-cycles-frontend   #   88.28% frontend cycles idle   
       10158359060      ref-cycles                                                  

       3.820303227 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0x17af200, 128032000
B, 0x91d8910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

      256430902982      instructions              #    0.62  insns per cycle        
                                                  #    1.10  stalled cycles per insn
      411527732875      cycles                                                      
         825030225      cache-misses                                                
      104752273567      stalled-cycles-backend    #   25.45% backend  cycles idle   
      280995305647      stalled-cycles-frontend   #   68.28% frontend cycles idle   
      358552509320      ref-cycles                                                  

     134.805103045 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/durbin/durbin_time':

        1544522516      instructions              #    0.22  insns per cycle        
                                                  #    4.10  stalled cycles per insn
        6961414378      cycles                                                      
          38611707      cache-misses                                                
        3289203868      stalled-cycles-backend    #   47.25% backend  cycles idle   
        6326418089      stalled-cycles-frontend   #   90.88% frontend cycles idle   
        6751728640      ref-cycles                                                  

       2.539516594 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/dynprog/dynprog_time':

      139745216110      instructions              #    0.52  insns per cycle        
                                                  #    1.54  stalled cycles per insn
      269424842546      cycles                                                      
         513670737      cache-misses                                                
       69827544625      stalled-cycles-backend    #   25.92% backend  cycles idle   
      215225101542      stalled-cycles-frontend   #   79.88% frontend cycles idle   
      234983314380      ref-cycles                                                  

      88.347976968 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60170528233      instructions              #    0.37  insns per cycle        
                                                  #    2.27  stalled cycles per insn
      162301931650      cycles                                                      
         405234069      cache-misses                                                
       36400990762      stalled-cycles-backend    #   22.43% backend  cycles idle   
      136370235058      stalled-cycles-frontend   #   84.02% frontend cycles idle   
      143229005380      ref-cycles                                                  

      53.854601436 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/lu/lu_time':

      149689168383      instructions              #    0.41  insns per cycle        
                                                  #    2.02  stalled cycles per insn
      366531412000      cycles                                                      
         538708834      cache-misses                                                
      244024628551      stalled-cycles-backend    #   66.58% backend  cycles idle   
      302271153744      stalled-cycles-frontend   #   82.47% frontend cycles idle   
      319424658480      ref-cycles                                                  

     120.095362989 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7f531fd54000, 128064008
b, 0x7f5317a4c000, 32008
x, 0x7f5317a44000, 32008
y, 0x7f5317a3c000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149982714088      instructions              #    0.20  insns per cycle        
                                                  #    4.29  stalled cycles per insn
      739375319530      cycles                                                      
       19730459455      cache-misses                                                
      252432617438      stalled-cycles-backend    #   34.14% backend  cycles idle   
      643815704001      stalled-cycles-frontend   #   87.08% frontend cycles idle   
      643638221620      ref-cycles                                                  

     241.985965922 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/correlation/correlation_time':

       94923318410      instructions              #    0.19  insns per cycle        
                                                  #    4.78  stalled cycles per insn
      494911984661      cycles                                                      
        1628626400      cache-misses                                                
       84521436830      stalled-cycles-backend    #   17.08% backend  cycles idle   
      454160115955      stalled-cycles-frontend   #   91.77% frontend cycles idle   
      430364288060      ref-cycles                                                  

     161.813868897 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

       23511279353      instructions              #    0.13  insns per cycle        
                                                  #    7.15  stalled cycles per insn
      179988661129      cycles                                                      
         253646693      cache-misses                                                
      102318677148      stalled-cycles-backend    #   56.85% backend  cycles idle   
      168064110365      stalled-cycles-frontend   #   93.37% frontend cycles idle   
      157210924100      ref-cycles                                                  

      59.109263134 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/floyd-warshall/floyd-warshall_time':

      512656552049      instructions              #    0.48  insns per cycle        
                                                  #    1.72  stalled cycles per insn
     1078547141233      cycles                                                      
        1608609428      cache-misses                                                
      803788230959      stalled-cycles-backend    #   74.53% backend  cycles idle   
      883236070004      stalled-cycles-frontend   #   81.89% frontend cycles idle   
      938575569440      ref-cycles                                                  

     352.879346652 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/reg_detect/reg_detect_time':

      189678863112      instructions              #    0.38  insns per cycle        
                                                  #    2.15  stalled cycles per insn
      497525319847      cycles                                                      
        1336083981      cache-misses                                                
      383443367880      stalled-cycles-backend    #   77.07% backend  cycles idle   
      408544640863      stalled-cycles-frontend   #   82.12% frontend cycles idle   
      433332837180      ref-cycles                                                  

     162.921196977 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

       74734200119      instructions              #    0.29  insns per cycle        
                                                  #    2.96  stalled cycles per insn
      256476521607      cycles                                                      
         296322787      cache-misses                                                
      171940663314      stalled-cycles-backend    #   67.04% backend  cycles idle   
      221303609364      stalled-cycles-frontend   #   86.29% frontend cycles idle   
      223724225480      ref-cycles                                                  

      84.114729341 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x115b200, 512064000
ey, 0x1f9d2010, 512064000
hz, 0x3e248e20, 512064000
_fict_, 0x5cabfc30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

      155458937368      instructions              #    0.30  insns per cycle        
                                                  #    2.89  stalled cycles per insn
      516292949183      cycles                                                      
         956628941      cache-misses                                                
      380404374767      stalled-cycles-backend    #   73.68% backend  cycles idle   
      448601250479      stalled-cycles-frontend   #   86.89% frontend cycles idle   
      451049567460      ref-cycles                                                  

     169.583616058 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-apml/fdtd-apml_time':

        1530622268      instructions              #    0.33  insns per cycle        
                                                  #    2.55  stalled cycles per insn
        4667901013      cycles                                                      
           9639253      cache-misses                                                
        3466275298      stalled-cycles-backend    #   74.26% backend  cycles idle   
        3906331972      stalled-cycles-frontend   #   83.68% frontend cycles idle   
        4668075580      ref-cycles                                                  

       1.755940461 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120239805997      instructions              #    0.25  insns per cycle        
                                                  #    3.59  stalled cycles per insn
      483272869273      cycles                                                      
        1989847162      cache-misses                                                
      375796747099      stalled-cycles-backend    #   77.76% backend  cycles idle   
      432213080866      stalled-cycles-frontend   #   89.43% frontend cycles idle   
      420940399180      ref-cycles                                                  

     158.262079858 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0xf32200, 512064000
B, 0x1f7a9010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97309813664      instructions              #    0.33  insns per cycle        
                                                  #    2.62  stalled cycles per insn
      295200808020      cycles                                                      
        1099678465      cache-misses                                                
      220908114217      stalled-cycles-backend    #   74.83% backend  cycles idle   
      255329744631      stalled-cycles-frontend   #   86.49% frontend cycles idle   
      257397430560      ref-cycles                                                  

      96.774917414 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/seidel-2d/seidel-2d_time':

       48905134569      instructions              #    0.46  insns per cycle        
                                                  #    1.75  stalled cycles per insn
      107111539762      cycles                                                      
          20291996      cache-misses                                                
       61057867336      stalled-cycles-backend    #   57.00% backend  cycles idle   
       85814242810      stalled-cycles-frontend   #   80.12% frontend cycles idle   
       93842350460      ref-cycles                                                  

      35.283338596 seconds time elapsed

