# Scripts

## How to run the modified scripts

### Install ASReview (version), Makita (version), Insights (version)

```
pip install asreview==1.2
```

```
pip install makita==0.6.3
```

```
pip install insights==1.1.2
```


### Replace files in asreviewcontrib
...



### Run simulations


#### Create a main folder

Create a main folder with a subfolder 'data'. Place all datasets for the simulation in the data subfolder.


#### CLI commands

In the command line cd to the main folder and run the command below to create the jobs file: 

```
asreview makita template basic -f jobs.bat
```

In the main folder click on the generated jobs file which includes all simulation commands to start the simulations. 
Sit back until the simulation is completed and all files are present in subfolders of the main folder.
This project was rendered from the Makita-basic template. See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.


See [Simulation Mode Exercise](https://github.com/asreview/asreview-academy/blob/main/introducing-simulation-mode/README.md) for a detailed tutorial on running simulations with different templates the makita workflow generator. 



## Modified ASReview Insights Extension


[ASReview Insights comprises](https://github.com/asreview/asreview-insights/tree/main/asreviewcontrib/insights) comprises the following files:

- __init__.py*
- algorithms.py* 
- entrypoint.py*
- metrics.py*
- plot.py*
- utils.py

*modified


### Algorithms.py

Functions added:
- _tp_values()
- _fp_values()
- _tn_values()
- _fn_values()


The four functions above retrieve the TP, FP, TN, FN values of the labels in a state file. Each function takes labels as an input argument. Moreoever, the arguments x_screened and x_absolute can be specified. 

If x_screened=True, the function returns the respective TP, FP, TN or FN values as the number of records screened increases. The returned values can later be used to create plots showing how they progress over number of records screened. This is not yet implemented in ASReview Insights.

If x_screened=False (default), the function returns the respective TP, FP, TN or FN values over recall. The returned values over recall can later be used to report metrics in a JSON file and Excel file to be stored in folders. Here, if x_absolute=False (default) is specified, it returns recall as the the x axis. This change is currently implemented in ASReview Insights (in algorithms.py).


### Metrics.py

Functions added:
- tp()
- _tp()
- fp()
- _fp()
- tn()
- _tn()
- fn()
- _fn()

-tnr()

The functions above return the sliced values at a given intercept.
The tnr function used the tn function to divide the true negatives by the number of irrelevant records in the dataset.


Functions modified: 
- get_metrics()

The sliced values are added to the JSON ouput. Default intercepts are specified.



### Plot.py

Functions added:

- plot_cm()
- _plot_cm()

These functions return plots of the TP, FP, TN, FN values. If x_absolute is specified, the x axis is returned in absolute numbers.


### __init__.py

Import plot_cm
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




