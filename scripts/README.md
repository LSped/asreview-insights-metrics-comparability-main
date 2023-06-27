# Scripts

## How to run the modified scripts

### Install ASReview (v1.2), Makita (0.6.3), Insights (1.1.2)

```
pip install asreview==1.2
```

```
pip install makita==0.6.3
```

```
pip install insights==1.1.2
```


### Replace files in asreviewcontrib/insights

After having installed ASReview find the asreviewcontrib folder. It is located in the site-packages folder within your Python installation folders. Click on the insights subfolder.

Replace:

- _init_.py 
- algorithms.py 
- entrypoint.py
- metrics.py
- plot.py
- utils.py

With modified scripts:

- __init__mod.py 
- algorithms_mod.py 
- entrypoint_mod.py
- metrics_mod.py
- plot_mod.py
- utils.py

(Note utils.py remains unchanged)


### Run simulations


#### Create folders

Create a main folder with a subfolder named 'data'. Place all 24 synergy datasets in the data subfolder.


#### CLI commands

In the command line cd to the main folder and run the command below to create the jobs file: 

```
asreview makita template basic -f jobs.bat
```

The Makita-basic template is specified in the command above. It creates a folder structure for the output of the simulation and creates a jobs file with default model (TF-IDF + NB) simualtion commands for all datasets.
See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.
See [Simulation Mode Exercise](https://github.com/asreview/asreview-academy/blob/main/introducing-simulation-mode/README.md) for a detailed tutorial on running simulations with the makita workflow generator (Make it automatic section). 


#### Start simulation

In the main folder click on the generated jobs file which includes all simulation commands to start the simulations. 
Sit back until the simulation is completed and all files are present in subfolders of the main folder.


# Modified ASReview Insights Extension


[ASReview Insights](https://github.com/asreview/asreview-insights/tree/main/asreviewcontrib/insights) comprises the following files:

- `_init_.py`* package initialization
- `algorithms.py`* retrieve values of metrics
- `entrypoint.py`* entrypoint for CLI
- `metrics.py`* returns sliced metrics at intercept in JSON file
- `plot.py`* return plots of metrics
- `utils.py`

*were modified


### Algorithms.py

Functions added:
- `_tp_values(labels, x_screened, x_absolute=False)`
- `_fp_values(labels, x_screened, x_absolute=False)`
- `_tn_values(labels, x_screened, x_absolute=False)`
- `_fn_values(labels, x_screened, x_absolute=False)`


The four functions above retrieve the TP, FP, TN, FN values of the labels in a state file. Each function takes labels as an input argument. Moreoever, the arguments x_screened and x_absolute can be specified. 

If x_screened is specified, the function returns the respective TP, FP, TN or FN values at the number of records screened. The returned values can later be used to create plots showing how the values progress over number of records screened. This is not yet implemented in ASReview Insights.

If x_screened is not specified, the function returns the respective TP, FP, TN or FN values over recall. The returned values over recall can later be used to report metrics at recall in a JSON file (stored in simulation folder) and Excel file (stored in tables folder). Here, if x_absolute=False (default) is specified, it returns recall as the the x axis. This change is currently implemented in ASReview Insights (in algorithms.py).


### Metrics.py

Added imports:
- import: _tp_values, _fp_values, _tn_values, _fn_values


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

tp(), fp(), tn(), fn() are the main functions, which input a state object. They return values retrieved from the helper functions _tp(), _fp(), _tn(), _fn().
The helper functions input lables and return the sliced values at a given intercept.

The tn() function inputs a state object and returns values retrieved from the _tnr() helper function.
The _tnr() function uses the _tn_values() function to divide the true negatives by the number of irrelevant records in the dataset.


Functions modified: 
- `get_metrics()`

Default intercepts at which values are to be outputed are specified. All sliced TP, FP, TN, FN values and TNR are added to the JSON ouput. 

### Plot.py

Functions added:
Added imports:
-import: _tp_values, _fp_values, _tn_values, _fn_values

- `plot_cm(ax, state_obj, priors=False, x_screened=True, x_absolute=False)`
- `_plot_cm(ax, labels, x_screened=True, x_absolute=False)`

These functions return plots of the TP, FP, TN, FN values. If x_absolute is specified, the x axis is returned in absolute numbers. By default the x-axis is the fraction screened of the whole dataset.


### __init__.py

Import: plot_cm
Added 'plot_cm' to __all__


### entrypoint.py

Class PlotEntryPoint()
- import plot_cm
- Add 'cm': plot_cm to TYPE_TO_FUNC
- Add condition
	- if plot_type =='cm'
	- x_absolute argument only


Class MetricsEntryPoint()
- Added cm parser agrument with default values 
- Added cm = args.cm argument in get_metrics()


Condition is added to PlotEntryPoint() so that the TP, FP, TN, FN plot can be displayed using CLI commands.
cm parser argument is added to MetricsEntryPoint() so that intercepts at which cm values should be returned can be specified. 
tnr parser argument is added to MetricsEntryPoint() so that intercepts at which tnr should be returned can be specified.



