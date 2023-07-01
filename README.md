
# Enhancing ASReview Insights with New Metric Focusing on Comparability
###



## Description
The goal of this project was to enhance the [ASReview Insights Extension](https://github.com/asreview/asreview-insights) by adding the confusion matrix, which underlies most metrics, and by adding a new metric promoting comparability: TNR@r%.

## Table of contents

- `data` instructions for data access
- `scripts` modified scripts with explanations 
- `output` confusion matrix (metrics + plot), tnr (metrics) for 24 datasets
- `analysis` jupyter notebook with statistical analysis of WSS@r & TNR@r 
- `gitignore`
- `LICENCE`
- `README.md`



## New Features

Already Available in [ASReview Insights](https://github.com/asreview/asreview-insights): 
- Confusion matrix (TP, FP, TN, FN) @recall 
- True Negative Rate @recall (TNR@r%) 

Not yet available in ASReview Insights: 
- Confusion matrix (TP, FP, TN, FN) @records screened
- Confusion matrix plot 


### Background

#### Confusion matrix

See [ASReview Insights](https://github.com/asreview/asreview-insights) for a definition of the confusion matrix in the active learning (AL) context.

#### Specificity / True Negative Rate (TNR) 

See [ASReview Insights](https://github.com/asreview/asreview-insights) for the definition and rationale of implementation of the TNR@r%.


## Get to the New Output

To see the new output, a simulation needs to be run with the modified scripts. 


### How to run the modified scripts

#### Installation

```
pip install asreview==1.2
```

```
pip install makita==0.6.3
```

```
pip install insights==1.1.2
```


#### Replace files in asreviewcontrib/insights

After having installed ASReview find the asreviewcontrib folder. It is located in the site-packages folder within your Python installation folders. Click on the insights subfolder.

Replace:

- _init_.py 
- algorithms.py 
- entrypoint.py
- metrics.py
- plot.py
- utils.py

With modified scripts (available in [scripts folder](https://github.com/LSped/asreview-insights-metrics-comparability-main/tree/main/scripts)):

- __init__mod.py 
- algorithms_mod.py 
- entrypoint_mod.py
- metrics_mod.py
- plot_mod.py
- utils.py

(Note utils.py remains unchanged)



### Run simulations

See [Simulation Mode Exercise](https://github.com/asreview/asreview-academy/blob/main/introducing-simulation-mode/README.md) for a detailed tutorial on running simulations with the makita workflow generator (Make it automatic section) (Windows + Mac). 
 

#### Step 1: Create folders

Create a main folder with a subfolder named 'data'. Place all 24 synergy datasets in the data subfolder. See [data folder](https://github.com/LSped/asreview-insights-metrics-comparability-main/tree/main/data) on how to download synergy datasets. Note, for an example output you can choose only a few datasets (e.g., the first 5). 

#### Step 2: CLI commands (on Windows)

In the command line cd to the main folder and run the command below on Windows to create the jobs file: 

```
asreview makita template basic -f jobs.bat
```

ASReview Makita creates a folder structure to store the output files of the simulation. Specifying the Makita-basic template also creates a jobs file with basic model (naïve Bayes (NB) + TF-IDF) simualtion commands for all datasets.
See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.


#### Step 3: Start simulation

In the main folder click on the generated jobs file which includes all simulation commands to start the simulations (Windows). 
Sit back until the simulation is completed and all files are present in subfolders of the main folder.



## Access Output
When the simulation is over you can find the TP, FP, TN, FN and the TNR in the metrics output files.

- `metrics_sim_*dataset_x.json`
- `data_metrics.csv`
- `data_metrics.xlsx`



### Access files

#### In Folder
The JSON metrics output (metrics_sim_*dataset_x.json) can be accessed in the makita folder structure: output/simulation/dataset/metrics/metrics_sim_dataset_x.json

The excel/csv metrics output can be accessed in the makita folder structure: output/tables/data_metrics.csv ; output/tables/data_metrics.csv
Note, in the excel and csv the metrics are shown for all datasets (in the data folder).

### Command line
 
The `metrics` subcommand computes the metrics and displays them in the command line.

```
asreview metrics YOUR_ASREVIEW_FILE.asreview
```
Note ASReview files are located in output/simulation/dataset/state_files.



## Example ASReview Insights metrics output
```
{
    "asreviewVersion": "1.2",
    "apiVersion": "1.1.2",
    "data": {
        "items": [
            {
                "id": "recall",
                "title": "Recall",
                "value": [
                    [
                        0.1,
                        0.6428571428571429
                    ],
                    [
                        0.25,
                        0.9285714285714286
                    ],
                    [
                        0.5,
                        0.9285714285714286
                    ],
                    [
                        0.75,
                        1.0
                    ],
                    [
                        0.9,
                        1.0
                    ]
                ]
            },
            {
                "id": "wss",
                "title": "Work Saved over Sampling",
                "value": [
                    [
                        0.95,
                        0.6875
                    ]
                ]
            },
            {
                "id": "erf",
                "title": "Extra Relevant record Found",
                "value": [
                    [
                        0.1,
                        0.5714285714285714
                    ]
                ]
            },
            {
                "id": "atd",
                "title": "Average time to discovery",
                "value": 32.07142857142857
            },
            {
                "id": "td",
                "title": "Time to discovery",
                "value": [
                    [
                        81,
                        1
                    ],
                    [
                        98,
                        3
                    ],
                    [
                        235,
                        5
                    ],
                    [
                        6,
                        12
                    ],
                    [
                        236,
                        13
                    ],
                    [
                        179,
                        14
                    ],
                    [
                        127,
                        18
                    ],
                    [
                        30,
                        19
                    ],
                    [
                        48,
                        23
                    ],
                    [
                        42,
                        30
                    ],
                    [
                        147,
                        31
                    ],
                    [
                        89,
                        48
                    ],
                    [
                        247,
                        53
                    ],
                    [
                        65,
                        179
                    ]
                ]
            },
            {
                "id": "tp",
                "title": "True positives are the number of relevant records found",
                "value": [
                    [
                        0.95,
                        13
                    ],
                    [
                        1,
                        14
                    ]
                ]
            },
            {
                "id": "fp",
                "title": "False positives are the number of irrelevant records reviewed at recall level",
                "value": [
                    [
                        0.95,
                        40
                    ],
                    [
                        1,
                        165
                    ]
                ]
            },
            {
                "id": "tn",
                "title": "True negatives are the number of irrelevant records correctly not reviewed at recall level",
                "value": [
                    [
                        0.95,
                        202
                    ],
                    [
                        1,
                        77
                    ]
                ]
            },
            {
                "id": "fn",
                "title": "False negatives are the number of relevant records not found at recall level",
                "value": [
                    [
                        0.95,
                        1
                    ],
                    [
                        1,
                        0
                    ]
                ]
            },
            {
                "id": "tnr",
                "title": "True negative rate (Specificity)",
                "value": [
                    [
                        0.95,
                        0.834711
                    ],
                    [
                        1,
                        0.318182
                    ]
                ]
            }
        ]
    }
}
```

### Intercepts can be specified as seen below:


```
asreview metrics YOUR_ASREVIEW_FILE.asreview --cm 0.85
```

```
asreview metrics YOUR_ASREVIEW_FILE.asreview --tnr 0.85
```

### At different cm intercept

```
            {
                "id": "tp",
                "title": "True Positives",
                "value": [
                    [
                        0.85,
                        11
                    ]
                ]
            },
            {
                "id": "fp",
                "title": "False Positives",
                "value": [
                    [
                        0.85,
                        20
                    ]
                ]
            },
            {
                "id": "tn",
                "title": "True Negatives",
                "value": [
                    [
                        0.85,
                        222
                    ]
                ]
            },
            {
                "id": "fn",
                "title": "False Negatives",
                "value": [
                    [
                        0.85,
                        3
                    ]
                ]
            }
```

### At different tnr intercept

```
 	    {
                "id": "tnr",
                "title": "True Negative Rate (Specificity)",
                "value": [
                    [
                        0.85,
                        0.917355
                    ]
                ]
            }
        
```



## Plots


A new plot can now be outputed, which can be displayed by running the command below in the command line: 

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview
```
This displays the confusion matrix plot with the x-axis as the fraction screened of whole dataset.

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview --x_absolute
```

This displays x-axis in absolute numbers (i.e., number of records screened).


### Example plot output


![Plot](https://github.com/LSped/asreview-insights-metrics-comparability-main/blob/main/output/cm_plot_sim_Donners_2021_0_.png)

![Plot](https://github.com/LSped/asreview-insights-metrics-comparability-main/blob/main/output/cm_plot_sim_Donners_2021_0_absolute_.png)




### All 24 datasets output

Too see all the output files, see the Jupyter Notebook in the [output folder](https://github.com/LSped/asreview-insights-metrics-comparability-main/tree/main/output).



## Analysis WSS@r% and TNR@r%

Spearman correlations were computed to evaluate the associations between class imbalance, WSS@95%, and TNR@95%.
See Analysis Notebook in [postprocessing](https://github.com/LSped/asreview-insights-metrics-comparability-main/tree/main/postprocessing) folder.


## How to reproduce the project

### 1. Access data

See README in data folder.

### 2. Install software and packages

See README.

### 3. Run simulations

See README.

### 4. Jupyter Notebook

See postprocessing folder.

## License

The project is licensed under the MIT License.


## Contact
For suggestions, questions, or comments, please file an issue in the issue tracker.



 


