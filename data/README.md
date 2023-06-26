
# Synergy dataset

The datasets used in the current project are part of the SYNERGY dataset, which comprises 26 manually labeled systematic review datasets. The datasets are characterized by a small proportion of relevant records ranging from 0.2 to 21.9%. 
See [SYNERGY dataset](https://github.com/asreview/synergy-dataset) for an overview of all datasets. 

### Citation
> De Bruin, Jonathan; Ma, Yongchao; Ferdinands, Gerbrich; Teijema, Jelle; Van de Schoot, Rens, 2023, "SYNERGY - Open machine learning dataset on study selection in systematic reviews", https://doi.org/10.34894/HE6NAQ, DataverseNL, V1


# Data Access

To get the dataset, run the command below in the command line to install the synergy-dataset package:
```
pip install synergy-dataset
```

To download the dataset, run the following command in the command line:
```
python -m synergy_dataset get 
```
Alternatively, a .zip file of the dataset can be downloaded at https://dataverse.nl/dataset.xhtml?persistentId=doi:10.34894/HE6NAQ


## Subset Synergy dataset
24 out of 26 datasets of the SYNERGY dataset were used in this project. Brouwer_2018 and Walker_2018 were excluded due to the high expected computation time based on their large size (38114 and 48375 records respectively). 


