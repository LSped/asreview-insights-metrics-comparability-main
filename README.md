
Project description
This project was about adding new metrics to the ASReview Insights Extension.
A first step invovled calculating and outputting the confusion matrix values (TP,FP, TN, FN). 
Later, specificity is added the output since it was shown that it is equal to the normalised WSS. 




## Run simulation

To start the simulation, run the `jobs.bat` file.

## Structure

The following files are found in this project:

    📦
    ├── 📂data
    │   ├── 📜Chou_2004.csv
    │   ├── 📜Donners_2021.csv
    │   ├── 📜Jeyaraman_2020.csv
    │   ├── 📜Meijboom_2021.csv
    │   ├── 📜Menon_2022.csv
    │   ├── 📜Muthu_2021.csv
    │   ├── 📜Nelson_2002.csv
    │   ├── 📜Oud_2018.csv
    │   ├── 📜Sep_2021.csv
    │   ├── 📜Smid_2020.csv
    │   ├── 📜van_der_Valk_2021.csv
    │   ├── 📜van_der_Waal_2022.csv
    ├── 📂output
    │   ├── 📂simulation
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
