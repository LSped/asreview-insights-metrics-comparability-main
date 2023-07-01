
# Enhancing ASReview Insights with New Metric Focusing on Comparability
###



## Description

The goal of this project was to enhance the ASReview Insights Extension by adding the confusion matrix, which underlies most metrics, and by adding a new metric promoting comparability: TNR@r%.

The goal of this project was to enhance the [ASReview Insights Extension](https://github.com/asreview/asreview-insights) by adding the confusion matrix, which underlies most metrics, and by adding a new metric promoting comparability.


## Table of contents

- `data` instructions for data access
- `scripts` modified scripts with explanations 
- `output` confusion matrix (metrics + plot), tnr (metrics) for 24 datasets
- `Metrics-Implementation-Analysis` statistical analysis of WSS@r & TNR@r 
- `gitignore`
- `LICENCE`
- `README.md`

### New Features

Already Available in [ASReview Insights](https://github.com/asreview/asreview-insights): 
- Confusion matrix (TP, FP, TN, FN) @recall 
- True Negative Rate @recall (TNR@r%) 

Not yet available in ASReview Insights: 
- Confusion matrix (TP, FP, TN, FN) @records screened
- Confusion matrix plot 


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


### Output

See output folder.

### Background


#### Confusion matrix

See [ASReview Insights](https://github.com/asreview/asreview-insights) for a definition of the confusion matrix in the active learning (AL) context.

#### Specificity / True Negative Rate (TNR) 

See [ASReview Insights](https://github.com/asreview/asreview-insights) for the definition and rationale of implementation.






## How to reproduce the project

### 1. Access data

See README in data folder.


### 2. Install software and packages

See README in scripts folder.

### 3. Run simulations

See README in scripts folder.

### 4. Jupyter Notebook

Open notebook, specifiy path to output/tables/data_metrics.csv, which is used for further analysis.


#### Contact 

[Email]


 


