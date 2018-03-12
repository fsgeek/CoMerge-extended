### Overall application sensitivity

`python plot_throttle.py results_throttle/fast.res results_throttle/slow_1.res results_throttle/slow_3.res results_throttle/slow_5.res results_throttle/slow_7.res results_throttle/slow_9.res`


### Architecture level behavior over various throttling

```
python plot_mpki.py mpki.out
python plot_prefetch.py prefetch.out
python plot_mem-loads.py mem-loads.out
python plot_pref+mem.py prefetch.out mem-loads.out
python plot_ipc.py cpi.out
```

### Front-end vs back-end memory stall cycles

`python plot_throttle_stall.py results_throttle_perf_stalls/fast.res results_throttle_perf_stalls/slow_1.res results_throttle_perf_stalls/slow_3.res results_throttle_perf_stalls/slow_5.res results_throttle_perf_stalls/slow_7.res results_throttle_perf_stalls/slow_9.res`

### Plot object benefit factors

`python plot_benefit_2.py`
`python plot_benefit_3.py`

### Plot co-running polybench kernels

```
python plot_coexist.py
python plot_comerge.py
python plot_collocation.py
```

### Clustering + learning
`merge_data.py superv_learning.py superv_test.py`

### Parsing pinatrace output from pintool 

Folder `access_patterns/` contains the scripts and result figures, without the raw pinatrace output.
