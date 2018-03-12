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