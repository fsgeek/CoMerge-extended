#/bin/sh

export VMMALLOC_POOL_SIZE=$((64*1024*1024*1024))
export VMMALLOC_POOL_DIR="/mnt/pmem1/fsgeek"

#LD_PRELOAD=libvmmalloc.so.1 grep "pmem" /proc/mounts
node=0
timestamp=`date '+%Y_%m_%d__%H_%M_%S'`;
hostname=`hostname`
DRAM_FILE="./pb-dram-"$hostname"-"$timestamp".log"
PMEM_FILE="./pb-pmem-"$hostname"-"$timestamp".log"

BENCH="
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
## Run all benchmarks
for b in $BENCH
do
    #echo $b >> $DRAM_FILE
    #$b &>>$DRAM_FILE
    aeplog="./aep-"$(basename -- $b)"-"$timestamp".csv"
    echo "AEPWatch 1 -f "$aeplog &>>$PMEM_FILE
    AEPWatch 1 -f $aeplog &
    echo $b >> $PMEM_FILE
    LD_PRELOAD=libvmmalloc.so.1 hwloc-bind node:$node -- $b &>>$PMEM_FILE
    echo "AEPWatch-stop" &>>$PMEM_FILE
    AEPWatch-stop
done


