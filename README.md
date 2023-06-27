
# Enhancing ASReview Insights with new metric focusing on comparability
###



## Description
The goal of this project was to enhance the ASReview Insights Extension by adding a new metric promoting comparability.

A first step invovled calculating and outputting the confusion matrix values (TP,FP, TN, FN), which underlie most evaluation metrics. 
Then, the True Negative Rate at recall (TNR@r%) was added to Insights. 

The TNR@r% was chosen since it addresses a drawback of the commonly used WSS@r% metric.
The maximum value of the WSS@r% metric depends on the class imbalance (% of relevant records) in a given datset. If one wants to compare performance accross datasets adjusting for imbalance isolates influence of other data characteristics on performance.
To adjust WS@r% for class imbalance Kusa et al. (2023) propose to normalise the WSS (nWSS). After factorization, the nWSS@r% is found to be equal as the TNR@r%.


## Table of contents

- `data` : data access
- `scripts` : modified scripts
- `output` : plots 
- `Metrics-Implementation-Analysis` : TNR & WSS analysis
- `gitignore`
- `LICENCE`
- `README.md`



## How to reproduce the project

### 1. Access data

See README in data folder.


### 2. Install software and packages

See README in scripts folder.

### 3. Run simulations

See instructions and jobs.bat files in scripts folder.

### 4. Jupyter Notebook

Open notebook, specifiy path to output/tables/data_metrics.csv, which is used for further analysis.


####Contact 

[Email](l.m.s.spedener@students.uu.nl)


 


