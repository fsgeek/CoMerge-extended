./linear-algebra/kernels/2mm/2mm_time
tmp, 0xc71200, 18012000
A, 0x1da4730, 18012000
B, 0x2ed7c60, 18012000
C, 0x400b190, 18012000
D, 0x513e6c0, 18012000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/2mm/2mm_time':

       57622572735      instructions              #    0.15  insns per cycle        
                                                  #    6.23  stalled cycles per insn
      386551437958      cycles                                                      
         737069225      cache-misses                                                
      121721389745      stalled-cycles-backend    #   31.49% backend  cycles idle   
      359206183432      stalled-cycles-frontend   #   92.93% frontend cycles idle   
      338932312780      ref-cycles                                                  

     127.455803242 seconds time elapsed

./linear-algebra/kernels/3mm/3mm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/3mm/3mm_time':

       81249905882      instructions              #    0.20  insns per cycle        
                                                  #    4.67  stalled cycles per insn
      410666010422      cycles                                                      
        1132907309      cache-misses                                                
       49519657921      stalled-cycles-backend    #   12.06% backend  cycles idle   
      379460193088      stalled-cycles-frontend   #   92.40% frontend cycles idle   
      357835608380      ref-cycles                                                  

     134.546429273 seconds time elapsed

./linear-algebra/kernels/atax/atax_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/atax/atax_time':

         321110858      instructions              #    0.45  insns per cycle        
                                                  #    1.71  stalled cycles per insn
         709169718      cycles                                                      
           3094976      cache-misses                                                
         393560995      stalled-cycles-backend    #   55.50% backend  cycles idle   
         550244085      stalled-cycles-frontend   #   77.59% frontend cycles idle   
         709280680      ref-cycles                                                  

       0.267534496 seconds time elapsed

./linear-algebra/kernels/bicg/bicg_time
A, 0xc4b200, 1352104000
s, 0x515f56d0, 104000
q, 0x5160ed20, 104000
p, 0x51628370, 104000
r, 0x516419c0, 104000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/bicg/bicg_time':

        3458051904      instructions              #    0.52  insns per cycle        
                                                  #    1.41  stalled cycles per insn
        6632896277      cycles                                                      
          24125397      cache-misses                                                
        3780020251      stalled-cycles-backend    #   56.99% backend  cycles idle   
        4860599684      stalled-cycles-frontend   #   73.28% frontend cycles idle   
        6466107680      ref-cycles                                                  

       2.432029690 seconds time elapsed

./linear-algebra/kernels/cholesky/cholesky_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/cholesky/cholesky_time':

       64223069573      instructions              #    0.45  insns per cycle        
                                                  #    1.73  stalled cycles per insn
      143258403159      cycles                                                      
         370650338      cache-misses                                                
       36728805757      stalled-cycles-backend    #   25.64% backend  cycles idle   
      110945873453      stalled-cycles-frontend   #   77.44% frontend cycles idle   
      125288767140      ref-cycles                                                  

      47.108272105 seconds time elapsed

./linear-algebra/kernels/doitgen/doitgen_time
C4, 0x1771200, 526336
A, 0x17f2a10, 269486080
sum, 0x11af4220, 269486080

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/doitgen/doitgen_time':

       69689488271      instructions              #    1.49  insns per cycle        
                                                  #    0.17  stalled cycles per insn
       46651788616      cycles                                                      
          16134337      cache-misses                                                
        4717472200      stalled-cycles-backend    #   10.11% backend  cycles idle   
       11694235154      stalled-cycles-frontend   #   25.07% frontend cycles idle   
       41273858860      ref-cycles                                                  

      15.519561044 seconds time elapsed

./linear-algebra/kernels/gemm/gemm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemm/gemm_time':

       72184194256      instructions              #    0.31  insns per cycle        
                                                  #    2.71  stalled cycles per insn
      235375557224      cycles                                                      
        1004263377      cache-misses                                                
       27657287992      stalled-cycles-backend    #   11.75% backend  cycles idle   
      195313813426      stalled-cycles-frontend   #   82.98% frontend cycles idle   
      206115122900      ref-cycles                                                  

      77.503037559 seconds time elapsed

./linear-algebra/kernels/gemver/gemver_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gemver/gemver_time':

       12449475036      instructions              #    0.34  insns per cycle        
                                                  #    2.48  stalled cycles per insn
       36208049851      cycles                                                      
         127960437      cache-misses                                                
       17694262863      stalled-cycles-backend    #   48.87% backend  cycles idle   
       30834158256      stalled-cycles-frontend   #   85.16% frontend cycles idle   
       32189617520      ref-cycles                                                  

      12.105126604 seconds time elapsed

./linear-algebra/kernels/gesummv/gesummv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/gesummv/gesummv_time':

        1693803216      instructions              #    0.30  insns per cycle        
                                                  #    2.77  stalled cycles per insn
        5603985939      cycles                                                      
          27483635      cache-misses                                                
        3288750672      stalled-cycles-backend    #   58.69% backend  cycles idle   
        4695007464      stalled-cycles-frontend   #   83.78% frontend cycles idle   
        5571461660      ref-cycles                                                  

       2.095751282 seconds time elapsed

./linear-algebra/kernels/mvt/mvt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/mvt/mvt_time':

        7802068483      instructions              #    0.30  insns per cycle        
                                                  #    2.89  stalled cycles per insn
       25757539307      cycles                                                      
         115765881      cache-misses                                                
       11477003388      stalled-cycles-backend    #   44.56% backend  cycles idle   
       22565885816      stalled-cycles-frontend   #   87.61% frontend cycles idle   
       23100289120      ref-cycles                                                  

       8.686884203 seconds time elapsed

./linear-algebra/kernels/symm/symm_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/symm/symm_time':

       52176312583      instructions              #    0.19  insns per cycle        
                                                  #    4.73  stalled cycles per insn
      270579499395      cycles                                                      
        1006400339      cache-misses                                                
       71701006221      stalled-cycles-backend    #   26.50% backend  cycles idle   
      246578007560      stalled-cycles-frontend   #   91.13% frontend cycles idle   
      236017025760      ref-cycles                                                  

      88.741766421 seconds time elapsed

./linear-algebra/kernels/syr2k/syr2k_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syr2k/syr2k_time':

      104174250343      instructions              #    0.50  insns per cycle        
                                                  #    1.53  stalled cycles per insn
      208710184852      cycles                                                      
         119118303      cache-misses                                                
       88921444464      stalled-cycles-backend    #   42.61% backend  cycles idle   
      159298565362      stalled-cycles-frontend   #   76.33% frontend cycles idle   
      182187197060      ref-cycles                                                  

      68.498002756 seconds time elapsed

./linear-algebra/kernels/syrk/syrk_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/syrk/syrk_time':

       64134691826      instructions              #    0.60  insns per cycle        
                                                  #    1.15  stalled cycles per insn
      106377205756      cycles                                                      
         192258819      cache-misses                                                
       28116255381      stalled-cycles-backend    #   26.43% backend  cycles idle   
       73994391396      stalled-cycles-frontend   #   69.56% frontend cycles idle   
       93201002920      ref-cycles                                                  

      35.041707280 seconds time elapsed

./linear-algebra/kernels/trisolv/trisolv_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trisolv/trisolv_time':

        3185945461      instructions              #    0.27  insns per cycle        
                                                  #    3.36  stalled cycles per insn
       12010227679      cycles                                                      
          56586400      cache-misses                                                
        7467813863      stalled-cycles-backend    #   62.18% backend  cycles idle   
       10689918627      stalled-cycles-frontend   #   89.01% frontend cycles idle   
       11142192200      ref-cycles                                                  

       4.190278517 seconds time elapsed

./linear-algebra/kernels/trmm/trmm_time
A, 0x10d6200, 128032000
B, 0x8aff910, 128032000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/kernels/trmm/trmm_time':

      256409587930      instructions              #    0.57  insns per cycle        
                                                  #    1.25  stalled cycles per insn
      449657685441      cycles                                                      
         792709906      cache-misses                                                
      113137098711      stalled-cycles-backend    #   25.16% backend  cycles idle   
      320140854507      stalled-cycles-frontend   #   71.20% frontend cycles idle   
      396626174280      ref-cycles                                                  

     149.154924718 seconds time elapsed

./linear-algebra/solvers/durbin/durbin_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/durbin/durbin_time':

        1544790065      instructions              #    0.20  insns per cycle        
                                                  #    4.66  stalled cycles per insn
        7825967041      cycles                                                      
          38582127      cache-misses                                                
        4014780560      stalled-cycles-backend    #   51.30% backend  cycles idle   
        7191132766      stalled-cycles-frontend   #   91.89% frontend cycles idle   
        7503174620      ref-cycles                                                  

       2.822051953 seconds time elapsed

./linear-algebra/solvers/dynprog/dynprog_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/dynprog/dynprog_time':

      139753886298      instructions              #    0.47  insns per cycle        
                                                  #    1.76  stalled cycles per insn
      300381840405      cycles                                                      
         507416359      cache-misses                                                
       83732211625      stalled-cycles-backend    #   27.88% backend  cycles idle   
      246257603073      stalled-cycles-frontend   #   81.98% frontend cycles idle   
      261903636100      ref-cycles                                                  

      98.470349265 seconds time elapsed

./linear-algebra/solvers/gramschmidt/gramschmidt_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/gramschmidt/gramschmidt_time':

       60175804496      instructions              #    0.33  insns per cycle        
                                                  #    2.56  stalled cycles per insn
      179754019138      cycles                                                      
         405877703      cache-misses                                                
       47022502609      stalled-cycles-backend    #   26.16% backend  cycles idle   
      153830504019      stalled-cycles-frontend   #   85.58% frontend cycles idle   
      158402173120      ref-cycles                                                  

      59.562044677 seconds time elapsed

./linear-algebra/solvers/lu/lu_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/lu/lu_time':

      149713839790      instructions              #    0.33  insns per cycle        
                                                  #    2.59  stalled cycles per insn
      451334806483      cycles                                                      
         518644502      cache-misses                                                
      335117005887      stalled-cycles-backend    #   74.25% backend  cycles idle   
      387030251148      stalled-cycles-frontend   #   85.75% frontend cycles idle   
      393169294540      ref-cycles                                                  

     147.823712675 seconds time elapsed

./linear-algebra/solvers/ludcmp/ludcmp_time
A, 0x7fdf01ff5000, 128064008
b, 0x7fdef9ced000, 32008
x, 0x7fdef9ce5000, 32008
y, 0x7fdef9cdd000, 32008

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./linear-algebra/solvers/ludcmp/ludcmp_time':

      149986752174      instructions              #    0.20  insns per cycle        
                                                  #    4.41  stalled cycles per insn
      757085446727      cycles                                                      
       20259664440      cache-misses                                                
      242206262579      stalled-cycles-backend    #   31.99% backend  cycles idle   
      661135967873      stalled-cycles-frontend   #   87.33% frontend cycles idle   
      659041724620      ref-cycles                                                  

     247.780990228 seconds time elapsed

./datamining/correlation/correlation_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/correlation/correlation_time':

       94951131753      instructions              #    0.16  insns per cycle        
                                                  #    5.77  stalled cycles per insn
      588223055017      cycles                                                      
        1628455134      cache-misses                                                
      116033562572      stalled-cycles-backend    #   19.73% backend  cycles idle   
      547456516877      stalled-cycles-frontend   #   93.07% frontend cycles idle   
      511504778500      ref-cycles                                                  

     192.352974335 seconds time elapsed

./datamining/covariance/covariance_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./datamining/covariance/covariance_time':

       23489879143      instructions              #    0.19  insns per cycle        
                                                  #    4.68  stalled cycles per insn
      121757083679      cycles                                                      
         252274596      cache-misses                                                
       52406560494      stalled-cycles-backend    #   43.04% backend  cycles idle   
      109842582512      stalled-cycles-frontend   #   90.21% frontend cycles idle   
      108669540660      ref-cycles                                                  

      40.885659537 seconds time elapsed

./medley/floyd-warshall/floyd-warshall_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/floyd-warshall/floyd-warshall_time':

      512748348813      instructions              #    0.37  insns per cycle        
                                                  #    2.35  stalled cycles per insn
     1400611719896      cycles                                                      
        1524004372      cache-misses                                                
     1139573676309      stalled-cycles-backend    #   81.36% backend  cycles idle   
     1205377869316      stalled-cycles-frontend   #   86.06% frontend cycles idle   
     1218643051560      ref-cycles                                                  

     458.184006488 seconds time elapsed

./medley/reg_detect/reg_detect_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./medley/reg_detect/reg_detect_time':

      189723943606      instructions              #    0.29  insns per cycle        
                                                  #    2.94  stalled cycles per insn
      646498726888      cycles                                                      
        1410516061      cache-misses                                                
      521162703424      stalled-cycles-backend    #   80.61% backend  cycles idle   
      557544246614      stalled-cycles-frontend   #   86.24% frontend cycles idle   
      562881212840      ref-cycles                                                  

     211.631148049 seconds time elapsed

./stencils/adi/adi_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/adi/adi_time':

       74751770842      instructions              #    0.24  insns per cycle        
                                                  #    3.78  stalled cycles per insn
      317322710479      cycles                                                      
         274115889      cache-misses                                                
      227649957654      stalled-cycles-backend    #   71.74% backend  cycles idle   
      282230564909      stalled-cycles-frontend   #   88.94% frontend cycles idle   
      276635010980      ref-cycles                                                  

     104.008698616 seconds time elapsed

./stencils/fdtd-2d/fdtd-2d_time
ex, 0x1cc9200, 512064000
ey, 0x20540010, 512064000
hz, 0x3edb6e20, 512064000
_fict_, 0x5d62dc30, 800

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-2d/fdtd-2d_time':

      155483817110      instructions              #    0.24  insns per cycle        
                                                  #    3.82  stalled cycles per insn
      661253615558      cycles                                                      
         952676801      cache-misses                                                
      475392035185      stalled-cycles-backend    #   71.89% backend  cycles idle   
      593932263946      stalled-cycles-frontend   #   89.82% frontend cycles idle   
      577106094820      ref-cycles                                                  

     216.981697655 seconds time elapsed

./stencils/fdtd-apml/fdtd-apml_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/fdtd-apml/fdtd-apml_time':

        1530669511      instructions              #    0.32  insns per cycle        
                                                  #    2.64  stalled cycles per insn
        4797823070      cycles                                                      
           9646177      cache-misses                                                
        3502352640      stalled-cycles-backend    #   73.00% backend  cycles idle   
        4036327007      stalled-cycles-frontend   #   84.13% frontend cycles idle   
        4797935580      ref-cycles                                                  

       1.804871207 seconds time elapsed

./stencils/jacobi-1d-imper/jacobi-1d-imper_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-1d-imper/jacobi-1d-imper_time':

      120279263519      instructions              #    0.19  insns per cycle        
                                                  #    4.77  stalled cycles per insn
      624481583138      cycles                                                      
        2156082162      cache-misses                                                
      480630659983      stalled-cycles-backend    #   76.96% backend  cycles idle   
      573481602788      stalled-cycles-frontend   #   91.83% frontend cycles idle   
      543736010180      ref-cycles                                                  

     204.431853635 seconds time elapsed

./stencils/jacobi-2d-imper/jacobi-2d-imper_time
A, 0x1edb200, 512064000
B, 0x20752010, 512064000

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/jacobi-2d-imper/jacobi-2d-imper_time':

       97336168256      instructions              #    0.26  insns per cycle        
                                                  #    3.48  stalled cycles per insn
      378987987350      cycles                                                      
        1169648148      cache-misses                                                
      280821480749      stalled-cycles-backend    #   74.10% backend  cycles idle   
      339177004890      stalled-cycles-frontend   #   89.50% frontend cycles idle   
      330258289620      ref-cycles                                                  

     124.171336431 seconds time elapsed

./stencils/seidel-2d/seidel-2d_time

 Performance counter stats for 'numactl --cpunodebind=0 --membind=1 ./stencils/seidel-2d/seidel-2d_time':

       48904906483      instructions              #    0.46  insns per cycle        
                                                  #    1.74  stalled cycles per insn
      106583323912      cycles                                                      
          17228479      cache-misses                                                
       60398502148      stalled-cycles-backend    #   56.67% backend  cycles idle   
       85210275969      stalled-cycles-frontend   #   79.95% frontend cycles idle   
       93380016200      ref-cycles                                                  

      35.109566415 seconds time elapsed

