#/bin/sh

export VMMALLOC_POOL_SIZE=$((5*1024*1024*1024))
VMMALLOC_PMEM7_POOL_DIR="/mnt/pmem7/fsgeek"
VMMALLOC_PMEM1_POOL_DIR="/mnt/pmem1/fsgeek"

PRELOAD1="LD_PRELOAD=libvmmalloc.so.1 $VMMALLOC_POOL_SIZE $VMMALLOC_PMEM1_POOL_DIR"
PRELOAD7="LD_PRELOAD=libvmmalloc.so.1 $VMMALLOC_POOL_SIZE $VMMALLOC_PMEM7_POOL_DIR"

#LD_PRELOAD=libvmmalloc.so.1 grep "pmem" /proc/mounts
pmem1_node=0
pmem7_node=1
timestamp=`date '+%Y_%m_%d__%H_%M_%S'`;
hostname=`hostname`
RESULTS_DIR="./pb-results-"$timestamp
MAKE_LOG=$RESULTS_DIR"/pb-make-"$hostname"-"$timestamp".log"
DRAM_FILE=$RESULTS_DIR"/pb-dram-"$hostname"-"$timestamp".log"
PMEM1_FILE=$RESULTS_DIR"/pb-pmem1-"$hostname"-"$timestamp".log"
PMEM7_FILE=$RESULTS_DIR"/pb-pmem7-"$hostname"-"$timestamp".log"

[ ! -d $PMEM7_POOL_DIR ] && mkdir $PMEM7_POOL_DIR && echo "mkdir $PMEM7_POOL_DIR"
[ ! -d $PMEM1_POOL_DIR ] && mkdir $PMEM1_POOL_DIR && echo "mkdir $PMEM1_POOL_DIR"
[ ! -d $RESULTS_DIR ] && mkdir $RESULTS_DIR && echo "mkdir $RESULTS_DIR"

BENCH="
./linear-algebra/kernels/2mm/2mm_time
./linear-algebra/kernels/3mm/3mm_time
./linear-algebra/kernels/atax/atax_time
./linear-algebra/kernels/bicg/bicg_time
./linear-algebra/kernels/cholesky/cholesky_time
./linear-algebra/kernels/doitgen/doitgen_time
./linear-algebra/kernels/gemm/gemm_time
./linear-algebra/kernels/gemver/gemver_time
./linear-algebra/kernels/gesummv/gesummv_time
./linear-algebra/kernels/mvt/mvt_time 
./linear-algebra/kernels/symm/symm_time
./linear-algebra/kernels/syr2k/syr2k_time
./linear-algebra/kernels/syrk/syrk_time
./linear-algebra/kernels/trisolv/trisolv_time
./linear-algebra/kernels/trmm/trmm_time
./linear-algebra/solvers/durbin/durbin_time
./linear-algebra/solvers/dynprog/dynprog_time
./linear-algebra/solvers/gramschmidt/gramschmidt_time
./linear-algebra/solvers/lu/lu_time
./linear-algebra/solvers/ludcmp/ludcmp_time
./datamining/correlation/correlation_time
./datamining/covariance/covariance_time
./medley/floyd-warshall/floyd-warshall_time
./medley/reg_detect/reg_detect_time
./stencils/adi/adi_time
./stencils/fdtd-2d/fdtd-2d_time
./stencils/fdtd-apml/fdtd-apml_time
./stencils/jacobi-1d-imper/jacobi-1d-imper_time
./stencils/jacobi-2d-imper/jacobi-2d-imper_time
./stencils/seidel-2d/seidel-2d_time
"

# build programs

make >> $MAKE_LOG 2>&1

## Run all benchmarks
for b in $BENCH
do
    echo $b >> $PMEM1_FILE
    VMMALLOC_POOL_DIR=$VMMALLOC_PMEM1_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -e instructions -e cycles -e cache-misses -e stalled-cycles-backend -e stalled-cycles-frontend -e ref-cycles numactl --cpunodebind=$pmem1_node --membind=$pmem1_node $b >> $PMEM1_FILE 2>&1

    echo $b >> $PMEM7_FILE
    VMMALLOC_POOL_DIR=$VMMALLOC_PMEM7_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -e instructions -e cycles -e cache-misses -e stalled-cycles-backend -e stalled-cycles-frontend -e ref-cycles numactl --cpunodebind=$pmem7_node --membind=$pmem7_node $b >> $PMEM7_FILE 2>&1

    echo $b >> $DRAM_FILE
    perf stat -e instructions -e cycles -e cache-misses -e stalled-cycles-backend -e stalled-cycles-frontend -e ref-cycles numactl --cpunodebind=0 --membind=0 $b >> $DRAM_FILE 2>&1
done


