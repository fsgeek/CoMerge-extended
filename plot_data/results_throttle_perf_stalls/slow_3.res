./linear-algebra/kernels/2mm/2mm_time
tmp, 0x1e6c200, 18012000
A, 0x2f9f730, 18012000
B, 0x40d2c60, 18012000
C, 0x5206190, 18012000
D, 0x63396c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

       57582568679      instructions              #    0.22  insns per cycle        
                                                  #    4.06  stalled cycles per insn
      261075357378      cycles                                                      
         744191488      cache-misses                                                
       87920820978      stalled-cycles-backend    #   33.68% backend  cycles idle   
      233720690966      stalled-cycles-frontend   #   89.52% frontend cycles idle   
      229815780540      ref-cycles                                                  

      86.416871383 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/3mm/3mm_time':

       81199803522      instructions              #    0.34  insns per cycle        
                                                  #    2.57  stalled cycles per insn
      239555920210      cycles                                                      
        1128028125      cache-misses                                                
       34144365341      stalled-cycles-backend    #   14.25% backend  cycles idle   
      208400757646      stalled-cycles-frontend   #   86.99% frontend cycles idle   
      209008827440      ref-cycles                                                  

      78.583131216 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

         321025450      instructions              #    0.57  insns per cycle        
                                                  #    1.27  stalled cycles per insn
         567195354      cycles                                                      
           3029037      cache-misses                                                
         298462794      stalled-cycles-backend    #   52.62% backend  cycles idle   
         408302684      stalled-cycles-frontend   #   71.99% frontend cycles idle   
         567304780      ref-cycles                                                  

       0.214020324 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0x21c1200, 1352104000
s, 0x52b6b6d0, 104000
q, 0x52b84d20, 104000
p, 0x52b9e370, 104000
r, 0x52bb79c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

        3450840575      instructions              #    0.59  insns per cycle        
                                                  #    1.17  stalled cycles per insn
        5818934614      cycles                                                      
          23811638      cache-misses                                                
        2889885312      stalled-cycles-backend    #   49.66% backend  cycles idle   
        4050663862      stalled-cycles-frontend   #   69.61% frontend cycles idle   
        5757245040      ref-cycles                                                  

       2.165290858 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/cholesky/cholesky_time':

       64213824375      instructions              #    0.58  insns per cycle        
                                                  #    1.22  stalled cycles per insn
      110652103056      cycles                                                      
         322083213      cache-misses                                                
       29794364256      stalled-cycles-backend    #   26.93% backend  cycles idle   
       78398375898      stalled-cycles-frontend   #   70.85% frontend cycles idle   
       96918502800      ref-cycles                                                  

      36.438398704 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x6ea200, 526336
A, 0x76ba10, 269486080
sum, 0x10a6d220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

       69695043480      instructions              #    1.57  insns per cycle        
                                                  #    0.13  stalled cycles per insn
       44438075571      cycles                                                      
          16101468      cache-misses                                                
        4165436272      stalled-cycles-backend    #    9.37% backend  cycles idle   
        9382108845      stalled-cycles-frontend   #   21.11% frontend cycles idle   
       39339516280      ref-cycles                                                  

      14.790677497 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemm/gemm_time':

       72156791331      instructions              #    0.50  insns per cycle        
                                                  #    1.46  stalled cycles per insn
      145325995880      cycles                                                      
        1004227135      cache-misses                                                
       20967827520      stalled-cycles-backend    #   14.43% backend  cycles idle   
      105280508100      stalled-cycles-frontend   #   72.44% frontend cycles idle   
      127069169000      ref-cycles                                                  

      47.774166756 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemver/gemver_time':

       12354344253      instructions              #    0.47  insns per cycle        
                                                  #    1.72  stalled cycles per insn
       26509627915      cycles                                                      
         123878003      cache-misses                                                
       11509127363      stalled-cycles-backend    #   43.41% backend  cycles idle   
       21191171421      stalled-cycles-frontend   #   79.94% frontend cycles idle   
       23749630420      ref-cycles                                                  

       8.930002584 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gesummv/gesummv_time':

        1693370103      instructions              #    0.42  insns per cycle        
                                                  #    1.87  stalled cycles per insn
        4077118109      cycles                                                      
          27520156      cache-misses                                                
        2059634962      stalled-cycles-backend    #   50.52% backend  cycles idle   
        3166772008      stalled-cycles-frontend   #   77.67% frontend cycles idle   
        4077225000      ref-cycles                                                  

       1.533781231 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/mvt/mvt_time':

        7722222268      instructions              #    0.39  insns per cycle        
                                                  #    2.13  stalled cycles per insn
       19637617667      cycles                                                      
         112797900      cache-misses                                                
        8381605063      stalled-cycles-backend    #   42.68% backend  cycles idle   
       16479229131      stalled-cycles-frontend   #   83.92% frontend cycles idle   
       17773831900      ref-cycles                                                  

       6.683234582 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/symm/symm_time':

       52146951428      instructions              #    0.31  insns per cycle        
                                                  #    2.76  stalled cycles per insn
      167882952047      cycles                                                      
        1006183541      cache-misses                                                
       53196876127      stalled-cycles-backend    #   31.69% backend  cycles idle   
      143721545345      stalled-cycles-frontend   #   85.61% frontend cycles idle   
      148078199480      ref-cycles                                                  

      55.675483695 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syr2k/syr2k_time':

      104159186981      instructions              #    0.67  insns per cycle        
                                                  #    1.03  stalled cycles per insn
      156406523431      cycles                                                      
         116854098      cache-misses                                                
       62341626842      stalled-cycles-backend    #   39.86% backend  cycles idle   
      107173642448      stalled-cycles-frontend   #   68.52% frontend cycles idle   
      136704427600      ref-cycles                                                  

      51.396433772 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syrk/syrk_time':

       64128712109      instructions              #    0.74  insns per cycle        
                                                  #    0.85  stalled cycles per insn
       86810461359      cycles                                                      
         158270396      cache-misses                                                
       22551985684      stalled-cycles-backend    #   25.98% backend  cycles idle   
       54432978792      stalled-cycles-frontend   #   62.70% frontend cycles idle   
       76185668560      ref-cycles                                                  

      28.643660994 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

        3117606435      instructions              #    0.34  insns per cycle        
                                                  #    2.54  stalled cycles per insn
        9258250460      cycles                                                      
          55427944      cache-misses                                                
        5415251909      stalled-cycles-backend    #   58.49% backend  cycles idle   
        7928212811      stalled-cycles-frontend   #   85.63% frontend cycles idle   
        8748280820      ref-cycles                                                  

       3.289993405 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0x9e6200, 128032000
B, 0x840f910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

      256388109810      instructions              #    0.69  insns per cycle        
                                                  #    0.94  stalled cycles per insn
      369444166390      cycles                                                      
         704476271      cache-misses                                                
      145455066196      stalled-cycles-backend    #   39.37% backend  cycles idle   
      239971410666      stalled-cycles-frontend   #   64.95% frontend cycles idle   
      324754861180      ref-cycles                                                  

     122.108337566 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/durbin/durbin_time':

        1544147428      instructions              #    0.28  insns per cycle        
                                                  #    3.15  stalled cycles per insn
        5502841820      cycles                                                      
          38533724      cache-misses                                                
        2623181669      stalled-cycles-backend    #   47.67% backend  cycles idle   
        4868154321      stalled-cycles-frontend   #   88.47% frontend cycles idle   
        5482657080      ref-cycles                                                  

       2.062101619 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/dynprog/dynprog_time':

      139731490423      instructions              #    0.63  insns per cycle        
                                                  #    1.20  stalled cycles per insn
      221955410284      cycles                                                      
         489550712      cache-misses                                                
       54409076372      stalled-cycles-backend    #   24.51% backend  cycles idle   
      167818387728      stalled-cycles-frontend   #   75.61% frontend cycles idle   
      193703583620      ref-cycles                                                  

      72.826365354 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60161518346      instructions              #    0.45  insns per cycle        
                                                  #    1.80  stalled cycles per insn
      134467447045      cycles                                                      
         404681398      cache-misses                                                
       35277520588      stalled-cycles-backend    #   26.23% backend  cycles idle   
      108531726934      stalled-cycles-frontend   #   80.71% frontend cycles idle   
      119021862700      ref-cycles                                                  

      44.751404322 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/lu/lu_time':

      149660979844      instructions              #    0.56  insns per cycle        
                                                  #    1.36  stalled cycles per insn
      268479713333      cycles                                                      
         487162606      cache-misses                                                
      176657609386      stalled-cycles-backend    #   65.80% backend  cycles idle   
      204204915977      stalled-cycles-frontend   #   76.06% frontend cycles idle   
      234160871120      ref-cycles                                                  

      88.037120874 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7f2bd63da000, 128064008
b, 0x7f2bce0d2000, 32008
x, 0x7f2bce0ca000, 32008
y, 0x7f2bce0c2000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149982503450      instructions              #    0.20  insns per cycle        
                                                  #    4.28  stalled cycles per insn
      736826861582      cycles                                                      
       19520758868      cache-misses                                                
      200705441252      stalled-cycles-backend    #   27.24% backend  cycles idle   
      641646294856      stalled-cycles-frontend   #   87.08% frontend cycles idle   
      641422751160      ref-cycles                                                  

     241.150682036 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/correlation/correlation_time':

       94883058444      instructions              #    0.27  insns per cycle        
                                                  #    3.34  stalled cycles per insn
      357358080882      cycles                                                      
        1627642383      cache-misses                                                
       76894598937      stalled-cycles-backend    #   21.52% backend  cycles idle   
      316628151858      stalled-cycles-frontend   #   88.60% frontend cycles idle   
      311445975180      ref-cycles                                                  

     117.098736354 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

       23512658548      instructions              #    0.13  insns per cycle        
                                                  #    7.32  stalled cycles per insn
      184095311869      cycles                                                      
         253748603      cache-misses                                                
      109676582857      stalled-cycles-backend    #   59.58% backend  cycles idle   
      172182529181      stalled-cycles-frontend   #   93.53% frontend cycles idle   
      160781782400      ref-cycles                                                  

      60.450788066 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/floyd-warshall/floyd-warshall_time':

      512580722560      instructions              #    0.62  insns per cycle        
                                                  #    1.22  stalled cycles per insn
      821116138450      cycles                                                      
        1416300176      cache-misses                                                
      577992952449      stalled-cycles-backend    #   70.39% backend  cycles idle   
      625905075626      stalled-cycles-frontend   #   76.23% frontend cycles idle   
      714718344500      ref-cycles                                                  

     268.710597604 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/reg_detect/reg_detect_time':

      189644206018      instructions              #    0.51  insns per cycle        
                                                  #    1.50  stalled cycles per insn
      373388045086      cycles                                                      
        1355086175      cache-misses                                                
      272255718648      stalled-cycles-backend    #   72.91% backend  cycles idle   
      284520312210      stalled-cycles-frontend   #   76.20% frontend cycles idle   
      325386186080      ref-cycles                                                  

     122.334547125 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

       74722363045      instructions              #    0.34  insns per cycle        
                                                  #    2.44  stalled cycles per insn
      217202246745      cycles                                                      
         242132983      cache-misses                                                
      152836369716      stalled-cycles-backend    #   70.37% backend  cycles idle   
      182037589329      stalled-cycles-frontend   #   83.81% frontend cycles idle   
      189570591860      ref-cycles                                                  

      71.272631742 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x20c7200, 512064000
ey, 0x2093e010, 512064000
hz, 0x3f1b4e20, 512064000
_fict_, 0x5da2bc30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

      155433665505      instructions              #    0.39  insns per cycle        
                                                  #    2.14  stalled cycles per insn
      399440123481      cycles                                                      
         906365745      cache-misses                                                
      293577073824      stalled-cycles-backend    #   73.50% backend  cycles idle   
      332140579438      stalled-cycles-frontend   #   83.15% frontend cycles idle   
      348040472220      ref-cycles                                                  

     130.852028222 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-apml/fdtd-apml_time':

        1530641824      instructions              #    0.34  insns per cycle        
                                                  #    2.43  stalled cycles per insn
        4487117591      cycles                                                      
           9580850      cache-misses                                                
        2758684897      stalled-cycles-backend    #   61.48% backend  cycles idle   
        3725525524      stalled-cycles-frontend   #   83.03% frontend cycles idle   
        4487295540      ref-cycles                                                  

       1.687917217 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120200811917      instructions              #    0.34  insns per cycle        
                                                  #    2.49  stalled cycles per insn
      350014647754      cycles                                                      
        2166962872      cache-misses                                                
      272958047905      stalled-cycles-backend    #   77.98% backend  cycles idle   
      299070725029      stalled-cycles-frontend   #   85.45% frontend cycles idle   
      305061191900      ref-cycles                                                  

     114.693093276 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x8a3200, 512064000
B, 0x1f11a010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97292163499      instructions              #    0.43  insns per cycle        
                                                  #    1.92  stalled cycles per insn
      226867151975      cycles                                                      
        1148613350      cache-misses                                                
      163684270649      stalled-cycles-backend    #   72.15% backend  cycles idle   
      187165519960      stalled-cycles-frontend   #   82.50% frontend cycles idle   
      197976292780      ref-cycles                                                  

      74.432949586 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/seidel-2d/seidel-2d_time':

       48904297328      instructions              #    0.47  insns per cycle        
                                                  #    1.71  stalled cycles per insn
      105114073146      cycles                                                      
          19010185      cache-misses                                                
       57796913821      stalled-cycles-backend    #   54.98% backend  cycles idle   
       83741623381      stalled-cycles-frontend   #   79.67% frontend cycles idle   
       92101898780      ref-cycles                                                  

      34.627878686 seconds time elapsed

