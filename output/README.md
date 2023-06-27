
# Output

## Files

- metrics_sim_*dataset_x.json
- data_metrics.csv
- data_metrics.xlsx

The TP, FP, TN, FN values and the TNR are added to the existing output files.


### Access 

#### Folder
The JSON metrics output above can be accessed in the folder structure: output/simulation/dataset/metrics/metrics_sim_dataset_x.json

The metrics output above can be accessed in EXCEL/CSV format in the folder structure: output/tables/data_metrics.csv
Here the metrics for all datasets are shown.

### Command line
 
The `metrics` subcommand computes the metrics and displays them in the command line.

```
asreview metrics YOUR_ASREVIEW_FILE.asreview
```

Intercepts can be specified as seen below:

```
asreview metrics YOUR_ASREVIEW_FILE.asreview --cm 0.85
```


```
asreview metrics YOUR_ASREVIEW_FILE.asreview --tnr 0.85
```


## Example metrics output
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


A new plot is outputed, which can be displayed by running the command below in the command line: 

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview
```
This displays the confusion matrix plot with x-axis as fraction screened of whole dataset.

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview --x_absolute
```

This displays x-axis in absolute numbers (i.e., number of records screened).


### Example plot output


![Plot](https://github.com/LSped/asreview-insights-metrics-comparability-main/blob/main/output/cm_plot_sim_Donners_2021_0.png)

![Plot](https://github.com/LSped/asreview-insights-metrics-comparability-main/blob/main/output/cm_plot_sim_Donners_2021_0_absolute.png)




## Makita Folder structure
## Data

The performance on the following datasets is evaluated:

    ├── 📂data
    │   ├── 📜Appenzeller-Herzog_2019.csv
    │   ├── 📜Bos_2018.csv
    │   ├── 📜Chou_2003.csv
    │   ├── 📜Chou_2004.csv
    │   ├── 📜Donners_2021.csv
    │   ├── 📜Hall_2012.csv
    │   ├── 📜Jeyaraman_2020.csv
    │   ├── 📜Leenaars_2019.csv
    │   ├── 📜Leenaars_2020.csv
    │   ├── 📜Meijboom_2021.csv
    │   ├── 📜Menon_2022.csv
    │   ├── 📜Moran_2021.csv
    │   ├── 📜Muthu_2021.csv
    │   ├── 📜Nelson_2002.csv
    │   ├── 📜Oud_2018.csv
    │   ├── 📜Radjenovic_2013.csv
    │   ├── 📜Sep_2021.csv
    │   ├── 📜Smid_2020.csv
    │   ├── 📜van_der_Valk_2021.csv
    │   ├── 📜van_der_Waal_2022.csv
    │   ├── 📜van_de_Schoot_2018.csv
    │   ├── 📜van_Dis_2020.csv
    │   ├── 📜Wassenaar_2017.csv
    │   ├── 📜Wolters_2018.csv
    ├── 📂output
    │   ├── 📂simulation
    |   |   └── 📂Appenzeller-Herzog_2019
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Appenzeller-Herzog_2019.json
    |   |       |   ├── 📜wordcloud_Appenzeller-Herzog_2019.png
    |   |       |   ├── 📜wordcloud_relevant_Appenzeller-Herzog_2019.png
    |   |       |   └── 📜wordcloud_irrelevant_Appenzeller-Herzog_2019.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Appenzeller-Herzog_2019_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Appenzeller-Herzog_2019_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Appenzeller-Herzog_2019.png
    |   |   └── 📂Bos_2018
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Bos_2018.json
    |   |       |   ├── 📜wordcloud_Bos_2018.png
    |   |       |   ├── 📜wordcloud_relevant_Bos_2018.png
    |   |       |   └── 📜wordcloud_irrelevant_Bos_2018.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Bos_2018_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Bos_2018_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Bos_2018.png
    |   |   └── 📂Chou_2003
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Chou_2003.json
    |   |       |   ├── 📜wordcloud_Chou_2003.png
    |   |       |   ├── 📜wordcloud_relevant_Chou_2003.png
    |   |       |   └── 📜wordcloud_irrelevant_Chou_2003.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Chou_2003_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Chou_2003_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Chou_2003.png
    |   |   └── 📂Chou_2004
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Chou_2004.json
    |   |       |   ├── 📜wordcloud_Chou_2004.png
    |   |       |   ├── 📜wordcloud_relevant_Chou_2004.png
    |   |       |   └── 📜wordcloud_irrelevant_Chou_2004.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Chou_2004_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Chou_2004_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Chou_2004.png
    |   |   └── 📂Donners_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Donners_2021.json
    |   |       |   ├── 📜wordcloud_Donners_2021.png
    |   |       |   ├── 📜wordcloud_relevant_Donners_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_Donners_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Donners_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Donners_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Donners_2021.png
    |   |   └── 📂Hall_2012
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Hall_2012.json
    |   |       |   ├── 📜wordcloud_Hall_2012.png
    |   |       |   ├── 📜wordcloud_relevant_Hall_2012.png
    |   |       |   └── 📜wordcloud_irrelevant_Hall_2012.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Hall_2012_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Hall_2012_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Hall_2012.png
    |   |   └── 📂Jeyaraman_2020
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Jeyaraman_2020.json
    |   |       |   ├── 📜wordcloud_Jeyaraman_2020.png
    |   |       |   ├── 📜wordcloud_relevant_Jeyaraman_2020.png
    |   |       |   └── 📜wordcloud_irrelevant_Jeyaraman_2020.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Jeyaraman_2020_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Jeyaraman_2020_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Jeyaraman_2020.png
    |   |   └── 📂Leenaars_2019
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Leenaars_2019.json
    |   |       |   ├── 📜wordcloud_Leenaars_2019.png
    |   |       |   ├── 📜wordcloud_relevant_Leenaars_2019.png
    |   |       |   └── 📜wordcloud_irrelevant_Leenaars_2019.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Leenaars_2019_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Leenaars_2019_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Leenaars_2019.png
    |   |   └── 📂Leenaars_2020
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Leenaars_2020.json
    |   |       |   ├── 📜wordcloud_Leenaars_2020.png
    |   |       |   ├── 📜wordcloud_relevant_Leenaars_2020.png
    |   |       |   └── 📜wordcloud_irrelevant_Leenaars_2020.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Leenaars_2020_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Leenaars_2020_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Leenaars_2020.png
    |   |   └── 📂Meijboom_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Meijboom_2021.json
    |   |       |   ├── 📜wordcloud_Meijboom_2021.png
    |   |       |   ├── 📜wordcloud_relevant_Meijboom_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_Meijboom_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Meijboom_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Meijboom_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Meijboom_2021.png
    |   |   └── 📂Menon_2022
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Menon_2022.json
    |   |       |   ├── 📜wordcloud_Menon_2022.png
    |   |       |   ├── 📜wordcloud_relevant_Menon_2022.png
    |   |       |   └── 📜wordcloud_irrelevant_Menon_2022.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Menon_2022_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Menon_2022_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Menon_2022.png
    |   |   └── 📂Moran_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Moran_2021.json
    |   |       |   ├── 📜wordcloud_Moran_2021.png
    |   |       |   ├── 📜wordcloud_relevant_Moran_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_Moran_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Moran_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Moran_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Moran_2021.png
    |   |   └── 📂Muthu_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Muthu_2021.json
    |   |       |   ├── 📜wordcloud_Muthu_2021.png
    |   |       |   ├── 📜wordcloud_relevant_Muthu_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_Muthu_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Muthu_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Muthu_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Muthu_2021.png
    |   |   └── 📂Nelson_2002
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Nelson_2002.json
    |   |       |   ├── 📜wordcloud_Nelson_2002.png
    |   |       |   ├── 📜wordcloud_relevant_Nelson_2002.png
    |   |       |   └── 📜wordcloud_irrelevant_Nelson_2002.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Nelson_2002_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Nelson_2002_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Nelson_2002.png
    |   |   └── 📂Oud_2018
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Oud_2018.json
    |   |       |   ├── 📜wordcloud_Oud_2018.png
    |   |       |   ├── 📜wordcloud_relevant_Oud_2018.png
    |   |       |   └── 📜wordcloud_irrelevant_Oud_2018.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Oud_2018_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Oud_2018_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Oud_2018.png
    |   |   └── 📂Radjenovic_2013
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Radjenovic_2013.json
    |   |       |   ├── 📜wordcloud_Radjenovic_2013.png
    |   |       |   ├── 📜wordcloud_relevant_Radjenovic_2013.png
    |   |       |   └── 📜wordcloud_irrelevant_Radjenovic_2013.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Radjenovic_2013_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Radjenovic_2013_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Radjenovic_2013.png
    |   |   └── 📂Sep_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Sep_2021.json
    |   |       |   ├── 📜wordcloud_Sep_2021.png
    |   |       |   ├── 📜wordcloud_relevant_Sep_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_Sep_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Sep_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Sep_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Sep_2021.png
    |   |   └── 📂Smid_2020
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Smid_2020.json
    |   |       |   ├── 📜wordcloud_Smid_2020.png
    |   |       |   ├── 📜wordcloud_relevant_Smid_2020.png
    |   |       |   └── 📜wordcloud_irrelevant_Smid_2020.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Smid_2020_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Smid_2020_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Smid_2020.png
    |   |   └── 📂van_der_Valk_2021
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_van_der_Valk_2021.json
    |   |       |   ├── 📜wordcloud_van_der_Valk_2021.png
    |   |       |   ├── 📜wordcloud_relevant_van_der_Valk_2021.png
    |   |       |   └── 📜wordcloud_irrelevant_van_der_Valk_2021.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_van_der_Valk_2021_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_van_der_Valk_2021_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_van_der_Valk_2021.png
    |   |   └── 📂van_der_Waal_2022
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_van_der_Waal_2022.json
    |   |       |   ├── 📜wordcloud_van_der_Waal_2022.png
    |   |       |   ├── 📜wordcloud_relevant_van_der_Waal_2022.png
    |   |       |   └── 📜wordcloud_irrelevant_van_der_Waal_2022.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_van_der_Waal_2022_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_van_der_Waal_2022_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_van_der_Waal_2022.png
    |   |   └── 📂van_de_Schoot_2018
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_van_de_Schoot_2018.json
    |   |       |   ├── 📜wordcloud_van_de_Schoot_2018.png
    |   |       |   ├── 📜wordcloud_relevant_van_de_Schoot_2018.png
    |   |       |   └── 📜wordcloud_irrelevant_van_de_Schoot_2018.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_van_de_Schoot_2018_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_van_de_Schoot_2018_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_van_de_Schoot_2018.png
    |   |   └── 📂van_Dis_2020
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_van_Dis_2020.json
    |   |       |   ├── 📜wordcloud_van_Dis_2020.png
    |   |       |   ├── 📜wordcloud_relevant_van_Dis_2020.png
    |   |       |   └── 📜wordcloud_irrelevant_van_Dis_2020.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_van_Dis_2020_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_van_Dis_2020_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_van_Dis_2020.png
    |   |   └── 📂Wassenaar_2017
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Wassenaar_2017.json
    |   |       |   ├── 📜wordcloud_Wassenaar_2017.png
    |   |       |   ├── 📜wordcloud_relevant_Wassenaar_2017.png
    |   |       |   └── 📜wordcloud_irrelevant_Wassenaar_2017.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Wassenaar_2017_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Wassenaar_2017_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Wassenaar_2017.png
    |   |   └── 📂Wolters_2018
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Wolters_2018.json
    |   |       |   ├── 📜wordcloud_Wolters_2018.png
    |   |       |   ├── 📜wordcloud_relevant_Wolters_2018.png
    |   |       |   └── 📜wordcloud_irrelevant_Wolters_2018.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Wolters_2018_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Wolters_2018_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Wolters_2018.png
    │   └── 📂tables
    |       ├── 📜data_descriptives.csv
    |       ├── 📜data_descriptives.xlsx
    |       ├── 📜data_metrics.csv
    |       └── 📜data_metrics.xlsx
    ├── 📂scripts
    │   ├── 📜get_plot.py
    │   ├── 📜merge_descriptives.py
    │   ├── 📜merge_metrics.py
    │   ├── 📜merge_tds.py
    │   └── 📜...
    ├── 📜jobs.bat
    └── 📜README.md
