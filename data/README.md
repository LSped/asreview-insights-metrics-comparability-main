
# Data Access

## Synergy dataset

The datasets used in the current project are part of the SYNERGY dataset, which comprises 26 manually labeled systematic review datasets.The datasets are characterized by a small proportion of relevant records. (Range: 0.2 to 21.9% relevant records. 
See [SYNERGY dataset](https://github.com/asreview/synergy-dataset) for an overview of all datasets.


## Subset Synergy
24 out of 26 datasets of manually labeled systematic reviews were used in this project. Brouwer_2018 and Walker_2018 were excluded due to the high expected computation time based on their large size (38114 and 48375 records respectively). 
The SYNERGY dataset can be donwloaded by installing the synergy-dataset Python package.

```
pip intall synergy-dataset
```
Run this command in the command line.

```
python -m synergy_dataset get 
```
Alternatively, .zip of the dataset can be downloaded at https://dataverse.nl/dataset.xhtml?persistentId=doi:10.34894/HE6NAQ

