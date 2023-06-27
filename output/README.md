
# Output

## Files

- metrics_sim_*Dataset_`x`.json   (metrics JSON)
- data_metrics.csv
- data_metrics.xlsx

The TP, FP, TN, FN values and the TNR are added to the existing output files.

## Plots


A new plot is outputted, which can be displayed by running the command below in the command line: 

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview
```
Returns the confusion matrix plot with x-axis as fraction screened of whole dataset.

```
asreview plot cm YOUR_ASREVIEW_FILE.asreview --x_absolute
```

Returns x-axis in absolute numbers (i.e., number of records screened).




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