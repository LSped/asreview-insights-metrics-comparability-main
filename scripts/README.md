# Scripts

# Modified ASReview Insights Extension


[ASReview Insights](https://github.com/asreview/asreview-insights/tree/main/asreviewcontrib/insights) comprises the following files:

- `_init_.py`* package initialization
- `algorithms.py`* retrieve values to calculate metrics
- `entrypoint.py`* entrypoint for CLI 
- `metrics.py`* returns sliced metrics at intercept in JSON file
- `plot.py`* return plots of metrics
- `utils.py`

*were modified


### algorithms.py

Functions added:
- `_tp_values(labels, x_screened=False, x_absolute=False)`
- `_fp_values(labels, x_screened=False, x_absolute=False)`
- `_tn_values(labels, x_screened=False, x_absolute=False)`
- `_fn_values(labels, x_screened=False, x_absolute=False)`


The four functions above retrieve the TP, FP, TN, FN values of the labels in a state file. Each function takes labels as an input argument. Moreoever, the arguments x_screened and x_absolute can be specified. 

If x_screened is specified as false, the function returns the respective TP, FP, TN or FN values at recall. The returned values at recall can later be used to report metrics at recall in a JSON file (stored in simulation folder) and Excel file (stored in tables folder). Here, if x_absolute=False (default) is specified, it returns recall as the x axis. This change is currently implemented in ASReview Insights.

If x_screened is specified as true, the function returns the respective TP, FP, TN or FN values at the number of records screened. The returned values can later be used to create plots showing how the values progress over number of records screened. This is not yet implemented in ASReview Insights.



### metrics.py

Dependencies:
- `_tp_values, _fp_values, _tn_values, _fn_values from algorithms.py`


Functions added:

- `tp(state_obj, intercept, priors=False, x_absolute=False)`
- `_tp(labels, intercept, x_absolute=False)`
- `fp(state_obj, intercept, priors=False, x_absolute=False)`
- `_fp(labels, intercept, x_absolute=False)`
- `tn(state_obj, intercept, priors=False, x_absolute=False)`
- `_tn(labels, intercept, x_absolute=False)`
- `fn(state_obj, intercept, priors=False, x_absolute=False)`
- `_fn(labels, intercept, x_absolute=False)`


- `tnr(state_obj, intercept, priors=False, x_absolute=False)`
- `_tnr(labels, intercept, x_absolute=False)`


`tp(), fp(), tn(), fn()` are the main functions, which input a state object (labels). They return values retrieved from the helper functions `_tp(), _fp(), _tn(), _fn()`.
The helper functions input lables and return the sliced values at a given intercept.

The `tn()` function inputs a state object and returns values retrieved from the _tnr() helper function.
The `_tnr()` function uses the `_tn_values()` function to divide the true negatives by the number of irrelevant records in the dataset.


Functions modified: 
- `get_metrics()`

Default intercepts for all values are set.
All sliced TP, FP, TN, FN values and TNR are added to the JSON ouput. 


### plot.py

Dependencies:
- `_tp_values, _fp_values, _tn_values, _fn_values from algorithms.py`

Functions added:
- `plot_cm(ax, state_obj, priors=False, x_screened=True, x_absolute=False)`
- `_plot_cm(ax, labels, x_screened=True, x_absolute=False)`

These functions return plots of the TP, FP, TN, FN values. If x_absolute is specified, the x axis is returned in absolute numbers. By default the x-axis is returned as the fraction of the whole dataset screened.


### init.py

- import `plot_cm`
- Added `'plot_cm'` to `__all__`


### entrypoint.py

Class PlotEntryPoint()
- import `plot_cm`
- Add `'cm': plot_cm` to `TYPE_TO_FUNC`
- Add condition
	- if `plot_type =='cm'`
	- x_absolute argument only


Class MetricsEntryPoint()
- Added cm parser agrument with default values 
- Added tnr parser agrument with default values
- Added `cm = args.cm` argument in `get_metrics()`
- Added `tnr = args.tnr` argument in `get_metrics()`



A condition is added to PlotEntryPoint() so that the TP, FP, TN, FN plot can be displayed using CLI commands.
A cm parser argument is added to MetricsEntryPoint() to return cm values at specified intercept(s) via CLI commands.
A tnr parser argument is added to MetricsEntryPoint() to return tnr at specified intercept(s) via CLI commands.



