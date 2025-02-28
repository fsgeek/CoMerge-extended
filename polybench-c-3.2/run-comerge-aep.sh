#!/bin/sh

export VMMALLOC_POOL_SIZE=$((32*1024*1024*1024))
#export VMMALLOC_POOL_DIR="/mnt/pmem7/fsgeek"

#LD_PRELOAD=libvmmalloc.so.1 grep "pmem" /proc/mounts
node_pmem7=1
node_pmem1=0
timestamp=`date '+%Y_%m_%d__%H_%M_%S'`;
hostname=`hostname`

# log files
RESULTS_DIR="./comerge-pb-results-"$timestamp
MAKE_LOG=$RESULTS_DIR"/pb-make-"$hostname"-"$timestamp".log"
DRAM0_FILE=$RESULTS_DIR"/pb-dram0-"$hostname"-"$timestamp".log"
DRAM1_FILE=$RESULTS_DIR"/pb-dram1-"$hostname"-"$timestamp".log"
PMEM7_FILE=$RESULTS_DIR"/pb-pmem7-"$hostname"-"$timestamp".log"
PMEM1_FILE=$RESULTS_DIR"/pb-pmem1-"$hostname"-"$timestamp".log"
PMEM7_POOL_DIR="/mnt/pmem7/fsgeek"
PMEM1_POOL_DIR="/mnt/pmem1/fsgeek"

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
## Rebuild
make -f Makefile.comerge >> $MAKE_LOG 2>&1

## Run all benchmarks
for b in $BENCH
do
    echo "Start $b"
    echo $b >> $PMEM7_FILE
    aeplog=$RESULTS_DIR"/aep-pmem7-"$(basename -- $b)"-"$timestamp".csv"
    echo numactl --cpunodebind=$node_pmem1 --physcpubind=+1 AEPWatch 1 -f $aeplog &
    numactl --cpunodebind=$node_pmem1 --physcpubind=+1 AEPWatch 1 -f $aeplog &
    echo VMMALLOC_POOL_DIR=$PMEM7_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -B -d -d -d numactl --cpunodebind=$node_pmem7 --physcpubind=+1 --membind=$node_pmem7 $b >>$PMEM7_FILE 2>&1
    VMMALLOC_POOL_DIR=$PMEM7_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -B -d -d -d numactl --cpunodebind=$node_pmem7 --physcpubind=+1 --membind=$node_pmem7 $b >>$PMEM7_FILE 2>&1
    sleep 30
    echo "AEPWatch-stop" >>$PMEM7_FILE 2>&1
    AEPWatch-stop >> $PMEM7_FILE 2>&1
    echo finished >> $PMEM7_FILE

    echo $b >> $PMEM1_FILE
    aeplog=$RESULTS_DIR"/aep-pmem1-"$(basename -- $b)"-"$timestamp".csv"
    echo numactl --cpunodebind=$node_pmem7 --physcpubind=+1 AEPWatch 1 -f $aeplog &
    numactl --cpunodebind=$node_pmem7 --physcpubind=+1 AEPWatch 1 -f $aeplog &
    echo VMMALLOC_POOL_DIR=$PMEM1_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -B -d -d -d numactl --cpunodebind=$node_pmem1 --physcpubind=+1 --membind=$node_pmem1 $b >>$PMEM1_FILE 2>&1
    VMMALLOC_POOL_DIR=$PMEM1_POOL_DIR LD_PRELOAD=libvmmalloc.so.1 perf stat -B -d -d -d numactl --cpunodebind=$node_pmem1 --physcpubind=+1 --membind=$node_pmem1 $b >>$PMEM1_FILE 2>&1
    sleep 30
    echo "AEPWatch-stop" >>$PMEM1_FILE 2>&1
    AEPWatch-stop >> $PMEM1_FILE 2>&1
    echo finished >> $PMEM1_FILE
    
    echo $b >> $DRAM0_FILE
    echo perf stat -B -d -d -d numactl --cpunodebind=0 --physcpubind=+1 --membind=0 $b >>$DRAM0_FILE 2>&1
    perf stat -B -d -d -d numactl --cpunodebind=0 --physcpubind=+1 --membind=0 $b >>$DRAM0_FILE 2>&1
    echo finished >> $DRAM0_FILE
    echo $b >> $DRAM1_FILE
    echo perf stat -B -d -d -d numactl --cpunodebind=1 --physcpubind=+1 --membind=1 $b >>$DRAM1_FILE 2>&1
    perf stat -B -d -d -d numactl --cpunodebind=1 --physcpubind=+1 --membind=1 $b >>$DRAM1_FILE 2>&1
    echo finished >> $DRAM1_FILE
    echo "End $b"
done


