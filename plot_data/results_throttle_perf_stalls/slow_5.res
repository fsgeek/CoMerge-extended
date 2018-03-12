./linear-algebra/kernels/2mm/2mm_time
tmp, 0x21ef200, 18012000
A, 0x3322730, 18012000
B, 0x4455c60, 18012000
C, 0x5589190, 18012000
D, 0x66bc6c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

       57631544556      instructions              #    0.15  insns per cycle        
                                                  #    6.36  stalled cycles per insn
      394096368140      cycles                                                      
         692713652      cache-misses                                                
      162138015504      stalled-cycles-backend    #   41.14% backend  cycles idle   
      366709579040      stalled-cycles-frontend   #   93.05% frontend cycles idle   
      344789367100      ref-cycles                                                  

     129.636108520 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/3mm/3mm_time':

       81220116025      instructions              #    0.26  insns per cycle        
                                                  #    3.44  stalled cycles per insn
      310820743725      cycles                                                      
        1128223445      cache-misses                                                
       43442108797      stalled-cycles-backend    #   13.98% backend  cycles idle   
      279647564980      stalled-cycles-frontend   #   89.97% frontend cycles idle   
      270979354000      ref-cycles                                                  

     101.884118029 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

         321095100      instructions              #    0.51  insns per cycle        
                                                  #    1.48  stalled cycles per insn
         633291911      cycles                                                      
           3104996      cache-misses                                                
         326607717      stalled-cycles-backend    #   51.57% backend  cycles idle   
         474230089      stalled-cycles-frontend   #   74.88% frontend cycles idle   
         633473840      ref-cycles                                                  

       0.239049189 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0x2300200, 1352104000
s, 0x52caa6d0, 104000
q, 0x52cc3d20, 104000
p, 0x52cdd370, 104000
r, 0x52cf69c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

        3454447368      instructions              #    0.56  insns per cycle        
                                                  #    1.27  stalled cycles per insn
        6159160536      cycles                                                      
          24715567      cache-misses                                                
        3329106838      stalled-cycles-backend    #   54.05% backend  cycles idle   
        4387753485      stalled-cycles-frontend   #   71.24% frontend cycles idle   
        6055008140      ref-cycles                                                  

       2.277375628 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/cholesky/cholesky_time':

       64219777674      instructions              #    0.49  insns per cycle        
                                                  #    1.56  stalled cycles per insn
      132215263951      cycles                                                      
         399945825      cache-misses                                                
       40852350044      stalled-cycles-backend    #   30.90% backend  cycles idle   
       99919112392      stalled-cycles-frontend   #   75.57% frontend cycles idle   
      115669076860      ref-cycles                                                  

      43.488802949 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x1b87200, 526336
A, 0x1c08a10, 269486080
sum, 0x11f0a220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

       69692737605      instructions              #    1.36  insns per cycle        
                                                  #    0.23  stalled cycles per insn
       51081031214      cycles                                                      
          16259255      cache-misses                                                
        5979677440      stalled-cycles-backend    #   11.71% backend  cycles idle   
       16112729175      stalled-cycles-frontend   #   31.54% frontend cycles idle   
       45116583840      ref-cycles                                                  

      16.962648081 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemm/gemm_time':

       72167551019      instructions              #    0.40  insns per cycle        
                                                  #    1.97  stalled cycles per insn
      182580013309      cycles                                                      
        1004271146      cache-misses                                                
       24477313042      stalled-cycles-backend    #   13.41% backend  cycles idle   
      142524834065      stalled-cycles-frontend   #   78.06% frontend cycles idle   
      159464841100      ref-cycles                                                  

      59.954705058 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemver/gemver_time':

       12370238004      instructions              #    0.42  insns per cycle        
                                                  #    1.96  stalled cycles per insn
       29598123124      cycles                                                      
         127158068      cache-misses                                                
       12979550995      stalled-cycles-backend    #   43.85% backend  cycles idle   
       24265380972      stalled-cycles-frontend   #   81.98% frontend cycles idle   
       26435396080      ref-cycles                                                  

       9.939933924 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gesummv/gesummv_time':

        1693516863      instructions              #    0.36  insns per cycle        
                                                  #    2.23  stalled cycles per insn
        4684714527      cycles                                                      
          27907654      cache-misses                                                
        2457636407      stalled-cycles-backend    #   52.46% backend  cycles idle   
        3773762867      stalled-cycles-frontend   #   80.55% frontend cycles idle   
        4684832240      ref-cycles                                                  

       1.762243790 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/mvt/mvt_time':

        7739414918      instructions              #    0.34  insns per cycle        
                                                  #    2.51  stalled cycles per insn
       22569762377      cycles                                                      
         114890936      cache-misses                                                
       10025539248      stalled-cycles-backend    #   44.42% backend  cycles idle   
       19400130626      stalled-cycles-frontend   #   85.96% frontend cycles idle   
       20324333440      ref-cycles                                                  

       7.642514713 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/symm/symm_time':

       52156192994      instructions              #    0.26  insns per cycle        
                                                  #    3.40  stalled cycles per insn
      201424562696      cycles                                                      
        1006630746      cache-misses                                                
       55032718273      stalled-cycles-backend    #   27.32% backend  cycles idle   
      177265853960      stalled-cycles-frontend   #   88.01% frontend cycles idle   
      175851974820      ref-cycles                                                  

      66.116151590 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syr2k/syr2k_time':

      104166642958      instructions              #    0.59  insns per cycle        
                                                  #    1.22  stalled cycles per insn
      176955400902      cycles                                                      
         138975515      cache-misses                                                
       63281116976      stalled-cycles-backend    #   35.76% backend  cycles idle   
      127583468495      stalled-cycles-frontend   #   72.10% frontend cycles idle   
      154574361620      ref-cycles                                                  

      58.116221310 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syrk/syrk_time':

       64132382680      instructions              #    0.64  insns per cycle        
                                                  #    1.05  stalled cycles per insn
       99663360551      cycles                                                      
         176319905      cache-misses                                                
       24621137359      stalled-cycles-backend    #   24.70% backend  cycles idle   
       67110115926      stalled-cycles-frontend   #   67.34% frontend cycles idle   
       87363143640      ref-cycles                                                  

      32.846733855 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

        3131166195      instructions              #    0.30  insns per cycle        
                                                  #    2.92  stalled cycles per insn
       10477882158      cycles                                                      
          56214014      cache-misses                                                
        6331537151      stalled-cycles-backend    #   60.43% backend  cycles idle   
        9138529748      stalled-cycles-frontend   #   87.22% frontend cycles idle   
        9810183440      ref-cycles                                                  

       3.689350151 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0x1993200, 128032000
B, 0x93bc910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

      256441391638      instructions              #    0.60  insns per cycle        
                                                  #    1.17  stalled cycles per insn
      429485387200      cycles                                                      
         787098320      cache-misses                                                
      171010196949      stalled-cycles-backend    #   39.82% backend  cycles idle   
      299066259088      stalled-cycles-frontend   #   69.63% frontend cycles idle   
      374168088460      ref-cycles                                                  

     140.676778880 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/durbin/durbin_time':

        1544325621      instructions              #    0.24  insns per cycle        
                                                  #    3.73  stalled cycles per insn
        6397759303      cycles                                                      
          38608262      cache-misses                                                
        3181137099      stalled-cycles-backend    #   49.72% backend  cycles idle   
        5762919228      stalled-cycles-frontend   #   90.08% frontend cycles idle   
        6261815040      ref-cycles                                                  

       2.355193044 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/dynprog/dynprog_time':

      139741681206      instructions              #    0.54  insns per cycle        
                                                  #    1.45  stalled cycles per insn
      256731914766      cycles                                                      
         513308334      cache-misses                                                
       66658012013      stalled-cycles-backend    #   25.96% backend  cycles idle   
      202543966951      stalled-cycles-frontend   #   78.89% frontend cycles idle   
      223946162100      ref-cycles                                                  

      84.198336588 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60166310966      instructions              #    0.40  insns per cycle        
                                                  #    2.08  stalled cycles per insn
      150771545982      cycles                                                      
         405353653      cache-misses                                                
       38839202178      stalled-cycles-backend    #   25.76% backend  cycles idle   
      124873573509      stalled-cycles-frontend   #   82.82% frontend cycles idle   
      133199753200      ref-cycles                                                  

      50.083290760 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/lu/lu_time':

      149672041214      instructions              #    0.49  insns per cycle        
                                                  #    1.61  stalled cycles per insn
      305069167108      cycles                                                      
         544371171      cache-misses                                                
      187402248956      stalled-cycles-backend    #   61.43% backend  cycles idle   
      240783050346      stalled-cycles-frontend   #   78.93% frontend cycles idle   
      265978839840      ref-cycles                                                  

     100.001080417 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7fc636c02000, 128064008
b, 0x7fc62e8fa000, 32008
x, 0x7fc62e8f2000, 32008
y, 0x7fc62e8ea000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149985682183      instructions              #    0.20  insns per cycle        
                                                  #    4.40  stalled cycles per insn
      755557207999      cycles                                                      
       20221116035      cache-misses                                                
      211989352899      stalled-cycles-backend    #   28.06% backend  cycles idle   
      659481059018      stalled-cycles-frontend   #   87.28% frontend cycles idle   
      657710050520      ref-cycles                                                  

     247.278785880 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/correlation/correlation_time':

       94907307355      instructions              #    0.21  insns per cycle        
                                                  #    4.23  stalled cycles per insn
      442408203174      cycles                                                      
        1628179105      cache-misses                                                
       84389196476      stalled-cycles-backend    #   19.07% backend  cycles idle   
      401665277360      stalled-cycles-frontend   #   90.79% frontend cycles idle   
      385405045480      ref-cycles                                                  

     144.910913105 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

       23510677630      instructions              #    0.13  insns per cycle        
                                                  #    7.05  stalled cycles per insn
      177654333526      cycles                                                      
         254624591      cache-misses                                                
      105049783566      stalled-cycles-backend    #   59.13% backend  cycles idle   
      165750531489      stalled-cycles-frontend   #   93.30% frontend cycles idle   
      155181048100      ref-cycles                                                  

      58.346783484 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/floyd-warshall/floyd-warshall_time':

      512609753050      instructions              #    0.56  insns per cycle        
                                                  #    1.42  stalled cycles per insn
      922046598483      cycles                                                      
        1596040460      cache-misses                                                
      653777880397      stalled-cycles-backend    #   70.91% backend  cycles idle   
      727075949663      stalled-cycles-frontend   #   78.85% frontend cycles idle   
      802487723580      ref-cycles                                                  

     301.713902454 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/reg_detect/reg_detect_time':

      189661188139      instructions              #    0.44  insns per cycle        
                                                  #    1.82  stalled cycles per insn
      433658585447      cycles                                                      
        1403343526      cache-misses                                                
      327052230849      stalled-cycles-backend    #   75.42% backend  cycles idle   
      344751203878      stalled-cycles-frontend   #   79.50% frontend cycles idle   
      377823723720      ref-cycles                                                  

     142.056115824 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

       74730840479      instructions              #    0.30  insns per cycle        
                                                  #    2.82  stalled cycles per insn
      245606620078      cycles                                                      
         272980222      cache-misses                                                
      165369643485      stalled-cycles-backend    #   67.33% backend  cycles idle   
      210375644073      stalled-cycles-frontend   #   85.66% frontend cycles idle   
      214293116520      ref-cycles                                                  

      80.572464893 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x1c14200, 512064000
ey, 0x2048b010, 512064000
hz, 0x3ed01e20, 512064000
_fict_, 0x5d578c30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

      155439866163      instructions              #    0.32  insns per cycle        
                                                  #    2.67  stalled cycles per insn
      483389180777      cycles                                                      
        1009827410      cache-misses                                                
      366219237378      stalled-cycles-backend    #   75.76% backend  cycles idle   
      415747630558      stalled-cycles-frontend   #   86.01% frontend cycles idle   
      421091420880      ref-cycles                                                  

     158.327933635 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-apml/fdtd-apml_time':

        1530886273      instructions              #    0.33  insns per cycle        
                                                  #    2.51  stalled cycles per insn
        4606206321      cycles                                                      
           9655961      cache-misses                                                
        2917126267      stalled-cycles-backend    #   63.33% backend  cycles idle   
        3844646608      stalled-cycles-frontend   #   83.47% frontend cycles idle   
        4606310720      ref-cycles                                                  

       1.732740210 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120223673264      instructions              #    0.28  insns per cycle        
                                                  #    3.18  stalled cycles per insn
      433036687411      cycles                                                      
        2152492971      cache-misses                                                
      346405895800      stalled-cycles-backend    #   79.99% backend  cycles idle   
      381971594911      stalled-cycles-frontend   #   88.21% frontend cycles idle   
      377256570580      ref-cycles                                                  

     141.838480702 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x16b3200, 512064000
B, 0x1ff2a010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97305337321      instructions              #    0.36  insns per cycle        
                                                  #    2.38  stalled cycles per insn
      271024932240      cycles                                                      
        1166193277      cache-misses                                                
      202664981925      stalled-cycles-backend    #   74.78% backend  cycles idle   
      231219588811      stalled-cycles-frontend   #   85.31% frontend cycles idle   
      236374578680      ref-cycles                                                  

      88.871460110 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/seidel-2d/seidel-2d_time':

       48905256799      instructions              #    0.45  insns per cycle        
                                                  #    1.77  stalled cycles per insn
      107978277724      cycles                                                      
          18487285      cache-misses                                                
       50743936348      stalled-cycles-backend    #   46.99% backend  cycles idle   
       86601733232      stalled-cycles-frontend   #   80.20% frontend cycles idle   
       94593240520      ref-cycles                                                  

      35.565076773 seconds time elapsed

