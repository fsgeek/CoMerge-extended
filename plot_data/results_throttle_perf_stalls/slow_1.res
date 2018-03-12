./linear-algebra/kernels/2mm/2mm_time
tmp, 0x1785200, 18012000
A, 0x28b8730, 18012000
B, 0x39ebc60, 18012000
C, 0x4b1f190, 18012000
D, 0x5c526c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

       57561424525      instructions              #    0.31  insns per cycle        
                                                  #    2.71  stalled cycles per insn
      183541149164      cycles                                                      
         744021391      cache-misses                                                
       64362635995      stalled-cycles-backend    #   35.07% backend  cycles idle   
      156145586018      stalled-cycles-frontend   #   85.07% frontend cycles idle   
      163087096200      ref-cycles                                                  

      61.331008171 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/3mm/3mm_time':

       81166122770      instructions              #    0.66  insns per cycle        
                                                  #    1.14  stalled cycles per insn
      123734359286      cycles                                                      
        1126715266      cache-misses                                                
       24525719131      stalled-cycles-backend    #   19.82% backend  cycles idle   
       92596409168      stalled-cycles-frontend   #   74.83% frontend cycles idle   
      108293026140      ref-cycles                                                  

      40.715228844 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

         321124668      instructions              #    0.70  insns per cycle        
                                                  #    0.94  stalled cycles per insn
         459943466      cycles                                                      
           2876327      cache-misses                                                
         223279521      stalled-cycles-backend    #   48.54% backend  cycles idle   
         301051357      stalled-cycles-frontend   #   65.45% frontend cycles idle   
         460057900      ref-cycles                                                  

       0.173608555 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0x178f200, 1352104000
s, 0x521396d0, 104000
q, 0x52152d20, 104000
p, 0x5216c370, 104000
r, 0x521859c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

        3450856804      instructions              #    0.65  insns per cycle        
                                                  #    1.02  stalled cycles per insn
        5288215001      cycles                                                      
          22679170      cache-misses                                                
        2562375466      stalled-cycles-backend    #   48.45% backend  cycles idle   
        3522231715      stalled-cycles-frontend   #   66.61% frontend cycles idle   
        5288327240      ref-cycles                                                  

       1.988852535 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/cholesky/cholesky_time':

       64200439431      instructions              #    0.97  insns per cycle        
                                                  #    0.53  stalled cycles per insn
       66066038634      cycles                                                      
         232084745      cache-misses                                                
       17245752524      stalled-cycles-backend    #   26.10% backend  cycles idle   
       33892749601      stalled-cycles-frontend   #   51.30% frontend cycles idle   
       58147494820      ref-cycles                                                  

      21.861623254 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0xd0c200, 526336
A, 0xd8da10, 269486080
sum, 0x1108f220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

       69692013468      instructions              #    1.61  insns per cycle        
                                                  #    0.12  stalled cycles per insn
       43346090914      cycles                                                      
          16440269      cache-misses                                                
        3799277060      stalled-cycles-backend    #    8.76% backend  cycles idle   
        8367485135      stalled-cycles-frontend   #   19.30% frontend cycles idle   
       38390247680      ref-cycles                                                  

      14.433491422 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemm/gemm_time':

       72143798073      instructions              #    0.71  insns per cycle        
                                                  #    0.85  stalled cycles per insn
      101123900575      cycles                                                      
        1004124715      cache-misses                                                
       14366217776      stalled-cycles-backend    #   14.21% backend  cycles idle   
       61086355053      stalled-cycles-frontend   #   60.41% frontend cycles idle   
       88632531740      ref-cycles                                                  

      33.322609194 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemver/gemver_time':

       12320773660      instructions              #    0.65  insns per cycle        
                                                  #    1.12  stalled cycles per insn
       19075629973      cycles                                                      
         117854440      cache-misses                                                
        8305676852      stalled-cycles-backend    #   43.54% backend  cycles idle   
       13778817657      stalled-cycles-frontend   #   72.23% frontend cycles idle   
       17286145140      ref-cycles                                                  

       6.499640199 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gesummv/gesummv_time':

        1693162913      instructions              #    0.52  insns per cycle        
                                                  #    1.37  stalled cycles per insn
        3242819617      cycles                                                      
          27260752      cache-misses                                                
        1427206892      stalled-cycles-backend    #   44.01% backend  cycles idle   
        2325884207      stalled-cycles-frontend   #   71.72% frontend cycles idle   
        3242930620      ref-cycles                                                  

       1.219920110 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/mvt/mvt_time':

        7711823274      instructions              #    0.53  insns per cycle        
                                                  #    1.50  stalled cycles per insn
       14555528769      cycles                                                      
         109911446      cache-misses                                                
        6370704403      stalled-cycles-backend    #   43.77% backend  cycles idle   
       11595772964      stalled-cycles-frontend   #   79.67% frontend cycles idle   
       13355116160      ref-cycles                                                  

       5.021691530 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/symm/symm_time':

       52134031308      instructions              #    0.43  insns per cycle        
                                                  #    1.88  stalled cycles per insn
      122208712251      cycles                                                      
        1006444481      cache-misses                                                
       32033136899      stalled-cycles-backend    #   26.21% backend  cycles idle   
       98134423049      stalled-cycles-frontend   #   80.30% frontend cycles idle   
      106968137040      ref-cycles                                                  

      40.216115357 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syr2k/syr2k_time':

      104147593950      instructions              #    0.88  insns per cycle        
                                                  #    0.66  stalled cycles per insn
      118248628081      cycles                                                      
         103518040      cache-misses                                                
       37901964869      stalled-cycles-backend    #   32.05% backend  cycles idle   
       69204379549      stalled-cycles-frontend   #   58.52% frontend cycles idle   
      103524055860      ref-cycles                                                  

      38.921143497 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syrk/syrk_time':

       64119600600      instructions              #    1.14  insns per cycle        
                                                  #    0.37  stalled cycles per insn
       56004388089      cycles                                                      
         107498099      cache-misses                                                
       11723450102      stalled-cycles-backend    #   20.93% backend  cycles idle   
       23776884884      stalled-cycles-frontend   #   42.46% frontend cycles idle   
       49398270960      ref-cycles                                                  

      18.572272898 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

        3109403294      instructions              #    0.41  insns per cycle        
                                                  #    2.05  stalled cycles per insn
        7633351939      cycles                                                      
          54093758      cache-misses                                                
        4499357256      stalled-cycles-backend    #   58.94% backend  cycles idle   
        6370674373      stalled-cycles-frontend   #   83.46% frontend cycles idle   
        7335548900      ref-cycles                                                  

       2.758561991 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0xfee200, 128032000
B, 0x8a17910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

      256366186296      instructions              #    1.09  insns per cycle        
                                                  #    0.42  stalled cycles per insn
      236110905724      cycles                                                      
         501275776      cache-misses                                                
       44375077059      stalled-cycles-backend    #   18.79% backend  cycles idle   
      107079921689      stalled-cycles-frontend   #   45.35% frontend cycles idle   
      207409268580      ref-cycles                                                  

      77.979727829 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/durbin/durbin_time':

        1543737251      instructions              #    0.35  insns per cycle        
                                                  #    2.43  stalled cycles per insn
        4382916663      cycles                                                      
          38501000      cache-misses                                                
        2008604920      stalled-cycles-backend    #   45.83% backend  cycles idle   
        3748436365      stalled-cycles-frontend   #   85.52% frontend cycles idle   
        4383080400      ref-cycles                                                  

       1.648609665 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/dynprog/dynprog_time':

      139708435959      instructions              #    1.00  insns per cycle        
                                                  #    0.62  stalled cycles per insn
      140355392979      cycles                                                      
         462199845      cache-misses                                                
       29009658725      stalled-cycles-backend    #   20.67% backend  cycles idle   
       86218896179      stalled-cycles-frontend   #   61.43% frontend cycles idle   
      122747594640      ref-cycles                                                  

      46.148489422 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60155420500      instructions              #    0.53  insns per cycle        
                                                  #    1.46  stalled cycles per insn
      113998223662      cycles                                                      
         404902191      cache-misses                                                
       31081966093      stalled-cycles-backend    #   27.27% backend  cycles idle   
       88036525159      stalled-cycles-frontend   #   77.23% frontend cycles idle   
      101091123460      ref-cycles                                                  

      38.008357846 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/lu/lu_time':

      149627038153      instructions              #    0.97  insns per cycle        
                                                  #    0.60  stalled cycles per insn
      153565588111      cycles                                                      
         392288530      cache-misses                                                
       62354792155      stalled-cycles-backend    #   40.60% backend  cycles idle   
       89314744420      stalled-cycles-frontend   #   58.16% frontend cycles idle   
      133669856820      ref-cycles                                                  

      50.255054168 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7f9c0518c000, 128064008
b, 0x7f9bfce84000, 32008
x, 0x7f9bfce7c000, 32008
y, 0x7f9bfce74000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149983586620      instructions              #    0.20  insns per cycle        
                                                  #    4.31  stalled cycles per insn
      742316997028      cycles                                                      
       19659954314      cache-misses                                                
      270248340092      stalled-cycles-backend    #   36.41% backend  cycles idle   
      645972120487      stalled-cycles-frontend   #   87.02% frontend cycles idle   
      646196155840      ref-cycles                                                  

     242.940335962 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/correlation/correlation_time':

       94844978949      instructions              #    0.41  insns per cycle        
                                                  #    1.99  stalled cycles per insn
      229654502415      cycles                                                      
        1627590735      cache-misses                                                
       51695274218      stalled-cycles-backend    #   22.51% backend  cycles idle   
      188945947086      stalled-cycles-frontend   #   82.27% frontend cycles idle   
      200399434960      ref-cycles                                                  

      75.344404459 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

       23479072629      instructions              #    0.28  insns per cycle        
                                                  #    3.07  stalled cycles per insn
       84147296107      cycles                                                      
         249777210      cache-misses                                                
       39364090241      stalled-cycles-backend    #   46.78% backend  cycles idle   
       72187805886      stalled-cycles-frontend   #   85.79% frontend cycles idle   
       75267475060      ref-cycles                                                  

      28.309537417 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/floyd-warshall/floyd-warshall_time':

      512478218010      instructions              #    1.09  insns per cycle        
                                                  #    0.54  stalled cycles per insn
      472106197663      cycles                                                      
         993647827      cache-misses                                                
      239760166580      stalled-cycles-backend    #   50.79% backend  cycles idle   
      277798458559      stalled-cycles-frontend   #   58.84% frontend cycles idle   
      410531314900      ref-cycles                                                  

     154.342786423 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/reg_detect/reg_detect_time':

      189605232400      instructions              #    0.78  insns per cycle        
                                                  #    0.82  stalled cycles per insn
      244478200081      cycles                                                      
        1435212790      cache-misses                                                
      126373201557      stalled-cycles-backend    #   51.69% backend  cycles idle   
      155599095080      stalled-cycles-frontend   #   63.65% frontend cycles idle   
      213290082840      ref-cycles                                                  

      80.188489858 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

       74708991471      instructions              #    0.44  insns per cycle        
                                                  #    1.82  stalled cycles per insn
      171521139622      cycles                                                      
         196720433      cache-misses                                                
      110349299002      stalled-cycles-backend    #   64.34% backend  cycles idle   
      136192729242      stalled-cycles-frontend   #   79.40% frontend cycles idle   
      149849421240      ref-cycles                                                  

      56.337397979 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x795200, 512064000
ey, 0x1f00c010, 512064000
hz, 0x3d882e20, 512064000
_fict_, 0x5c0f9c30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

      155389005023      instructions              #    0.69  insns per cycle        
                                                  #    1.02  stalled cycles per insn
      225218051389      cycles                                                      
         958689486      cache-misses                                                
      111750912566      stalled-cycles-backend    #   49.62% backend  cycles idle   
      158251288981      stalled-cycles-frontend   #   70.27% frontend cycles idle   
      196755181980      ref-cycles                                                  

      73.973074328 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-apml/fdtd-apml_time':

        1530713187      instructions              #    0.35  insns per cycle        
                                                  #    2.33  stalled cycles per insn
        4335186591      cycles                                                      
           9567063      cache-misses                                                
        3151895699      stalled-cycles-backend    #   72.70% backend  cycles idle   
        3573482243      stalled-cycles-frontend   #   82.43% frontend cycles idle   
        4335300360      ref-cycles                                                  

       1.630499197 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120154763052      instructions              #    0.61  insns per cycle        
                                                  #    1.22  stalled cycles per insn
      197050972242      cycles                                                      
        2177942818      cache-misses                                                
      118456558533      stalled-cycles-backend    #   60.11% backend  cycles idle   
      146236554457      stalled-cycles-frontend   #   74.21% frontend cycles idle   
      172049453520      ref-cycles                                                  

      64.683774455 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x18c0200, 512064000
B, 0x20137010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97253718246      instructions              #    0.76  insns per cycle        
                                                  #    0.91  stalled cycles per insn
      128369063185      cycles                                                      
        1058205925      cache-misses                                                
       67932476742      stalled-cycles-backend    #   52.92% backend  cycles idle   
       88913966303      stalled-cycles-frontend   #   69.26% frontend cycles idle   
      112439849440      ref-cycles                                                  

      42.280235332 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/seidel-2d/seidel-2d_time':

       48903239822      instructions              #    0.46  insns per cycle        
                                                  #    1.72  stalled cycles per insn
      105361065652      cycles                                                      
          16201668      cache-misses                                                
       47459270877      stalled-cycles-backend    #   45.04% backend  cycles idle   
       83992271412      stalled-cycles-frontend   #   79.72% frontend cycles idle   
       92317442660      ref-cycles                                                  

      34.707888118 seconds time elapsed

