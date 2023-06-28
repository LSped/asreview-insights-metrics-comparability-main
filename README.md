
# Enhancing ASReview Insights with New Metric Focusing on Comparability
###



## Description
The goal of this project was to enhance the ASReview Insights Extension by adding a new metric promoting comparability.

### Implementation 
- A first step invovled calculating and outputting the confusion matrix values (TP, FP, TN, FN), which underlie most evaluation metrics. 
- Then, the True Negative Rate at recall (TNR@r%) is added to Insights. 
See scripts folder.
### Output

See output folder.

### Background


#### Confusion matrix

Confusion matrix values consist of True Positives (TP), False Positives (FP), True Negatives (TN), and False Negatives (FN). Most metrics (e.g., precision, False Positive Rate, F score) can be calculated from these values. See [O'Mara-Eves et al. (2015)](https://systematicreviewsjournal.biomedcentral.com/articles/10.1186/2046-4053-4-5) for a comprehensive overview of metrics. Similarly, various plots can be created from these values (e.g., ROC curve, recall vs precision)

Values are retrieved at recall (r%).

|                      | Definition                                                                             | Calculation                     |   
|----------------------|----------------------------------------------------------------------------------------|---------------------------------|
| True Positives (TP)  | The number of relevant records found at recall level.                                  | Relevant Records * r%           |      
| False Positives (FP) | The number of irrelevant records reviewed at recall level.                             | Records Reviewed – TP           |
| True Negatives (TN)  | The number of irrelevant records correctly not reviewed at recall level.               | Irrelevant Records – FP         |  
| False Negatives (FN) | The number of relevant records not reviewed at recall level (missing relevant records) | Relevant Records – TP           | 


#### Specificity / True Negative Rate (TNR) 
 
The TNR@r% was chosen since it addresses a drawback of the commonly used WSS@r% metric. Namely, the maximum value of the WSS@r% metric depends on the class imbalance (% of relevant records) in a given datset. 
If one wants to compare performance accross datasets adjusting for imbalance isolates influence of other data characteristics on performance.
To adjust WSS@r% for class imbalance [Kusa et al. (2023)](https://www.sciencedirect.com/science/article/pii/S2667305323000182) propose to normalise the WSS (nWSS). Moreover they showed that after factorization the nWSS@r% is equal to the TNR@r%.
The TNR is the proportion of irrelevant records that were correctly not reviewed at level of recall.


Illustrating example at 95% recall:
|Example @95% recall     |                   |
|--------------------|-------------------|
| Total records 	 | 2000              |
| Records Reviewed	 | 1100              |
| Relevant Records 	 | 100               |
| Irrelevant Records | 1900              |
| Class imbalance 	 | 5%                |
| TP	             | 95                |
| FP	             | 1100 – 95 = 1005  |
| TN	             | 1900 – 1005 = 895 |
| FN	             | 100 – 95 = 5      |
| WSS95%	         | (895 + 5) / 2000 – (1 - 0.95) = 0.40 |
| TNR95%	         | 895 / 1900 = 0.47 |






## Table of contents

- `data` data access
- `scripts` modified scripts + explanations in readme
- `output` new metric JSON files, new cm plots 
- `Metrics-Implementation-Analysis` TNR & WSS analysis
- `gitignore`
- `LICENCE`
- `README.md`



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


 


