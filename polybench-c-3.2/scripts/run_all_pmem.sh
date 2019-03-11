#/bin/sh

Usage="./run_all.sh <output file>"

if [ $# -ne 1 ]; then
    echo $Usage
    exit 1
fi   

BENCH="
./linear-algebra/kernels/2mm/2mm_time
./linear-algebra/kernels/atax/atax_time
./linear-algebra/kernels/bicg/bicg_time
./linear-algebra/kernels/doitgen/doitgen_time
./linear-algebra/kernels/trisolv/trisolv_time
./linear-algebra/kernels/trmm/trmm_time
./linear-algebra/solvers/ludcmp/ludcmp_time
./datamining/covariance/covariance_time
./stencils/adi/adi_time
./stencils/fdtd-2d/fdtd-2d_time
./stencils/jacobi-2d-imper/jacobi-2d-imper_time
"
## Run all benchmarks
for b in $BENCH
do
    mkdir /mnt/pmem7/comerge
    echo $b >> $1
    perf stat -e instructions -e cycles -e cache-misses -e stalled-cycles-backend -e stalled-cycles-frontend -e ref-cycles numactl --cpunodebind=1 --membind=1 $b 2>>$1
    rm -rf /mnt/pmem7/comerge
done

