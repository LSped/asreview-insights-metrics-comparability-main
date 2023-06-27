@ echo off
COLOR E0

:: version 0.6.3

:: Create folder structure. By default, the folder 'output' is used to store output.
mkdir output
mkdir output\simulation

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Appenzeller-Herzog_2019
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Appenzeller-Herzog_2019\
mkdir output\simulation\Appenzeller-Herzog_2019\metrics

:: Collect descriptives about the dataset Appenzeller-Herzog_2019
mkdir output\simulation\Appenzeller-Herzog_2019\descriptives
asreview data describe data\Appenzeller-Herzog_2019.csv -o output\simulation\Appenzeller-Herzog_2019\descriptives\data_stats_Appenzeller-Herzog_2019.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Appenzeller-Herzog_2019.csv -o output\simulation\Appenzeller-Herzog_2019\descriptives\wordcloud_Appenzeller-Herzog_2019.png --width 800 --height 500
asreview wordcloud data\Appenzeller-Herzog_2019.csv -o output\simulation\Appenzeller-Herzog_2019\descriptives\wordcloud_relevant_Appenzeller-Herzog_2019.png --width 800 --height 500 --relevant
asreview wordcloud data\Appenzeller-Herzog_2019.csv -o output\simulation\Appenzeller-Herzog_2019\descriptives\wordcloud_irrelevant_Appenzeller-Herzog_2019.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Appenzeller-Herzog_2019\state_files
asreview simulate data\Appenzeller-Herzog_2019.csv -s output\simulation\Appenzeller-Herzog_2019\state_files\sim_Appenzeller-Herzog_2019_0.asreview --init_seed 535 --seed 165
asreview metrics output\simulation\Appenzeller-Herzog_2019\state_files\sim_Appenzeller-Herzog_2019_0.asreview -o output\simulation\Appenzeller-Herzog_2019\metrics\metrics_sim_Appenzeller-Herzog_2019_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Appenzeller-Herzog_2019\state_files\ -o output\simulation\Appenzeller-Herzog_2019\plot_recall_sim_Appenzeller-Herzog_2019.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Bos_2018
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Bos_2018\
mkdir output\simulation\Bos_2018\metrics

:: Collect descriptives about the dataset Bos_2018
mkdir output\simulation\Bos_2018\descriptives
asreview data describe data\Bos_2018.csv -o output\simulation\Bos_2018\descriptives\data_stats_Bos_2018.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Bos_2018.csv -o output\simulation\Bos_2018\descriptives\wordcloud_Bos_2018.png --width 800 --height 500
asreview wordcloud data\Bos_2018.csv -o output\simulation\Bos_2018\descriptives\wordcloud_relevant_Bos_2018.png --width 800 --height 500 --relevant
asreview wordcloud data\Bos_2018.csv -o output\simulation\Bos_2018\descriptives\wordcloud_irrelevant_Bos_2018.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Bos_2018\state_files
asreview simulate data\Bos_2018.csv -s output\simulation\Bos_2018\state_files\sim_Bos_2018_0.asreview --init_seed 535 --seed 166
asreview metrics output\simulation\Bos_2018\state_files\sim_Bos_2018_0.asreview -o output\simulation\Bos_2018\metrics\metrics_sim_Bos_2018_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Bos_2018\state_files\ -o output\simulation\Bos_2018\plot_recall_sim_Bos_2018.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Chou_2003
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Chou_2003\
mkdir output\simulation\Chou_2003\metrics

:: Collect descriptives about the dataset Chou_2003
mkdir output\simulation\Chou_2003\descriptives
asreview data describe data\Chou_2003.csv -o output\simulation\Chou_2003\descriptives\data_stats_Chou_2003.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Chou_2003.csv -o output\simulation\Chou_2003\descriptives\wordcloud_Chou_2003.png --width 800 --height 500
asreview wordcloud data\Chou_2003.csv -o output\simulation\Chou_2003\descriptives\wordcloud_relevant_Chou_2003.png --width 800 --height 500 --relevant
asreview wordcloud data\Chou_2003.csv -o output\simulation\Chou_2003\descriptives\wordcloud_irrelevant_Chou_2003.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Chou_2003\state_files
asreview simulate data\Chou_2003.csv -s output\simulation\Chou_2003\state_files\sim_Chou_2003_0.asreview --init_seed 535 --seed 167
asreview metrics output\simulation\Chou_2003\state_files\sim_Chou_2003_0.asreview -o output\simulation\Chou_2003\metrics\metrics_sim_Chou_2003_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Chou_2003\state_files\ -o output\simulation\Chou_2003\plot_recall_sim_Chou_2003.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Chou_2004
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Chou_2004\
mkdir output\simulation\Chou_2004\metrics

:: Collect descriptives about the dataset Chou_2004
mkdir output\simulation\Chou_2004\descriptives
asreview data describe data\Chou_2004.csv -o output\simulation\Chou_2004\descriptives\data_stats_Chou_2004.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Chou_2004.csv -o output\simulation\Chou_2004\descriptives\wordcloud_Chou_2004.png --width 800 --height 500
asreview wordcloud data\Chou_2004.csv -o output\simulation\Chou_2004\descriptives\wordcloud_relevant_Chou_2004.png --width 800 --height 500 --relevant
asreview wordcloud data\Chou_2004.csv -o output\simulation\Chou_2004\descriptives\wordcloud_irrelevant_Chou_2004.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Chou_2004\state_files
asreview simulate data\Chou_2004.csv -s output\simulation\Chou_2004\state_files\sim_Chou_2004_0.asreview --init_seed 535 --seed 168
asreview metrics output\simulation\Chou_2004\state_files\sim_Chou_2004_0.asreview -o output\simulation\Chou_2004\metrics\metrics_sim_Chou_2004_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Chou_2004\state_files\ -o output\simulation\Chou_2004\plot_recall_sim_Chou_2004.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Donners_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Donners_2021\
mkdir output\simulation\Donners_2021\metrics

:: Collect descriptives about the dataset Donners_2021
mkdir output\simulation\Donners_2021\descriptives
asreview data describe data\Donners_2021.csv -o output\simulation\Donners_2021\descriptives\data_stats_Donners_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Donners_2021.csv -o output\simulation\Donners_2021\descriptives\wordcloud_Donners_2021.png --width 800 --height 500
asreview wordcloud data\Donners_2021.csv -o output\simulation\Donners_2021\descriptives\wordcloud_relevant_Donners_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\Donners_2021.csv -o output\simulation\Donners_2021\descriptives\wordcloud_irrelevant_Donners_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Donners_2021\state_files
asreview simulate data\Donners_2021.csv -s output\simulation\Donners_2021\state_files\sim_Donners_2021_0.asreview --init_seed 535 --seed 169
asreview metrics output\simulation\Donners_2021\state_files\sim_Donners_2021_0.asreview -o output\simulation\Donners_2021\metrics\metrics_sim_Donners_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Donners_2021\state_files\ -o output\simulation\Donners_2021\plot_recall_sim_Donners_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Hall_2012
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Hall_2012\
mkdir output\simulation\Hall_2012\metrics

:: Collect descriptives about the dataset Hall_2012
mkdir output\simulation\Hall_2012\descriptives
asreview data describe data\Hall_2012.csv -o output\simulation\Hall_2012\descriptives\data_stats_Hall_2012.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Hall_2012.csv -o output\simulation\Hall_2012\descriptives\wordcloud_Hall_2012.png --width 800 --height 500
asreview wordcloud data\Hall_2012.csv -o output\simulation\Hall_2012\descriptives\wordcloud_relevant_Hall_2012.png --width 800 --height 500 --relevant
asreview wordcloud data\Hall_2012.csv -o output\simulation\Hall_2012\descriptives\wordcloud_irrelevant_Hall_2012.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Hall_2012\state_files
asreview simulate data\Hall_2012.csv -s output\simulation\Hall_2012\state_files\sim_Hall_2012_0.asreview --init_seed 535 --seed 170
asreview metrics output\simulation\Hall_2012\state_files\sim_Hall_2012_0.asreview -o output\simulation\Hall_2012\metrics\metrics_sim_Hall_2012_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Hall_2012\state_files\ -o output\simulation\Hall_2012\plot_recall_sim_Hall_2012.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Jeyaraman_2020
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Jeyaraman_2020\
mkdir output\simulation\Jeyaraman_2020\metrics

:: Collect descriptives about the dataset Jeyaraman_2020
mkdir output\simulation\Jeyaraman_2020\descriptives
asreview data describe data\Jeyaraman_2020.csv -o output\simulation\Jeyaraman_2020\descriptives\data_stats_Jeyaraman_2020.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Jeyaraman_2020.csv -o output\simulation\Jeyaraman_2020\descriptives\wordcloud_Jeyaraman_2020.png --width 800 --height 500
asreview wordcloud data\Jeyaraman_2020.csv -o output\simulation\Jeyaraman_2020\descriptives\wordcloud_relevant_Jeyaraman_2020.png --width 800 --height 500 --relevant
asreview wordcloud data\Jeyaraman_2020.csv -o output\simulation\Jeyaraman_2020\descriptives\wordcloud_irrelevant_Jeyaraman_2020.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Jeyaraman_2020\state_files
asreview simulate data\Jeyaraman_2020.csv -s output\simulation\Jeyaraman_2020\state_files\sim_Jeyaraman_2020_0.asreview --init_seed 535 --seed 171
asreview metrics output\simulation\Jeyaraman_2020\state_files\sim_Jeyaraman_2020_0.asreview -o output\simulation\Jeyaraman_2020\metrics\metrics_sim_Jeyaraman_2020_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Jeyaraman_2020\state_files\ -o output\simulation\Jeyaraman_2020\plot_recall_sim_Jeyaraman_2020.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Leenaars_2019
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Leenaars_2019\
mkdir output\simulation\Leenaars_2019\metrics

:: Collect descriptives about the dataset Leenaars_2019
mkdir output\simulation\Leenaars_2019\descriptives
asreview data describe data\Leenaars_2019.csv -o output\simulation\Leenaars_2019\descriptives\data_stats_Leenaars_2019.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Leenaars_2019.csv -o output\simulation\Leenaars_2019\descriptives\wordcloud_Leenaars_2019.png --width 800 --height 500
asreview wordcloud data\Leenaars_2019.csv -o output\simulation\Leenaars_2019\descriptives\wordcloud_relevant_Leenaars_2019.png --width 800 --height 500 --relevant
asreview wordcloud data\Leenaars_2019.csv -o output\simulation\Leenaars_2019\descriptives\wordcloud_irrelevant_Leenaars_2019.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Leenaars_2019\state_files
asreview simulate data\Leenaars_2019.csv -s output\simulation\Leenaars_2019\state_files\sim_Leenaars_2019_0.asreview --init_seed 535 --seed 172
asreview metrics output\simulation\Leenaars_2019\state_files\sim_Leenaars_2019_0.asreview -o output\simulation\Leenaars_2019\metrics\metrics_sim_Leenaars_2019_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Leenaars_2019\state_files\ -o output\simulation\Leenaars_2019\plot_recall_sim_Leenaars_2019.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Leenaars_2020
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Leenaars_2020\
mkdir output\simulation\Leenaars_2020\metrics

:: Collect descriptives about the dataset Leenaars_2020
mkdir output\simulation\Leenaars_2020\descriptives
asreview data describe data\Leenaars_2020.csv -o output\simulation\Leenaars_2020\descriptives\data_stats_Leenaars_2020.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Leenaars_2020.csv -o output\simulation\Leenaars_2020\descriptives\wordcloud_Leenaars_2020.png --width 800 --height 500
asreview wordcloud data\Leenaars_2020.csv -o output\simulation\Leenaars_2020\descriptives\wordcloud_relevant_Leenaars_2020.png --width 800 --height 500 --relevant
asreview wordcloud data\Leenaars_2020.csv -o output\simulation\Leenaars_2020\descriptives\wordcloud_irrelevant_Leenaars_2020.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Leenaars_2020\state_files
asreview simulate data\Leenaars_2020.csv -s output\simulation\Leenaars_2020\state_files\sim_Leenaars_2020_0.asreview --init_seed 535 --seed 173
asreview metrics output\simulation\Leenaars_2020\state_files\sim_Leenaars_2020_0.asreview -o output\simulation\Leenaars_2020\metrics\metrics_sim_Leenaars_2020_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Leenaars_2020\state_files\ -o output\simulation\Leenaars_2020\plot_recall_sim_Leenaars_2020.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Meijboom_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Meijboom_2021\
mkdir output\simulation\Meijboom_2021\metrics

:: Collect descriptives about the dataset Meijboom_2021
mkdir output\simulation\Meijboom_2021\descriptives
asreview data describe data\Meijboom_2021.csv -o output\simulation\Meijboom_2021\descriptives\data_stats_Meijboom_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Meijboom_2021.csv -o output\simulation\Meijboom_2021\descriptives\wordcloud_Meijboom_2021.png --width 800 --height 500
asreview wordcloud data\Meijboom_2021.csv -o output\simulation\Meijboom_2021\descriptives\wordcloud_relevant_Meijboom_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\Meijboom_2021.csv -o output\simulation\Meijboom_2021\descriptives\wordcloud_irrelevant_Meijboom_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Meijboom_2021\state_files
asreview simulate data\Meijboom_2021.csv -s output\simulation\Meijboom_2021\state_files\sim_Meijboom_2021_0.asreview --init_seed 535 --seed 174
asreview metrics output\simulation\Meijboom_2021\state_files\sim_Meijboom_2021_0.asreview -o output\simulation\Meijboom_2021\metrics\metrics_sim_Meijboom_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Meijboom_2021\state_files\ -o output\simulation\Meijboom_2021\plot_recall_sim_Meijboom_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Menon_2022
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Menon_2022\
mkdir output\simulation\Menon_2022\metrics

:: Collect descriptives about the dataset Menon_2022
mkdir output\simulation\Menon_2022\descriptives
asreview data describe data\Menon_2022.csv -o output\simulation\Menon_2022\descriptives\data_stats_Menon_2022.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Menon_2022.csv -o output\simulation\Menon_2022\descriptives\wordcloud_Menon_2022.png --width 800 --height 500
asreview wordcloud data\Menon_2022.csv -o output\simulation\Menon_2022\descriptives\wordcloud_relevant_Menon_2022.png --width 800 --height 500 --relevant
asreview wordcloud data\Menon_2022.csv -o output\simulation\Menon_2022\descriptives\wordcloud_irrelevant_Menon_2022.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Menon_2022\state_files
asreview simulate data\Menon_2022.csv -s output\simulation\Menon_2022\state_files\sim_Menon_2022_0.asreview --init_seed 535 --seed 175
asreview metrics output\simulation\Menon_2022\state_files\sim_Menon_2022_0.asreview -o output\simulation\Menon_2022\metrics\metrics_sim_Menon_2022_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Menon_2022\state_files\ -o output\simulation\Menon_2022\plot_recall_sim_Menon_2022.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Moran_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Moran_2021\
mkdir output\simulation\Moran_2021\metrics

:: Collect descriptives about the dataset Moran_2021
mkdir output\simulation\Moran_2021\descriptives
asreview data describe data\Moran_2021.csv -o output\simulation\Moran_2021\descriptives\data_stats_Moran_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Moran_2021.csv -o output\simulation\Moran_2021\descriptives\wordcloud_Moran_2021.png --width 800 --height 500
asreview wordcloud data\Moran_2021.csv -o output\simulation\Moran_2021\descriptives\wordcloud_relevant_Moran_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\Moran_2021.csv -o output\simulation\Moran_2021\descriptives\wordcloud_irrelevant_Moran_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Moran_2021\state_files
asreview simulate data\Moran_2021.csv -s output\simulation\Moran_2021\state_files\sim_Moran_2021_0.asreview --init_seed 535 --seed 176
asreview metrics output\simulation\Moran_2021\state_files\sim_Moran_2021_0.asreview -o output\simulation\Moran_2021\metrics\metrics_sim_Moran_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Moran_2021\state_files\ -o output\simulation\Moran_2021\plot_recall_sim_Moran_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Muthu_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Muthu_2021\
mkdir output\simulation\Muthu_2021\metrics

:: Collect descriptives about the dataset Muthu_2021
mkdir output\simulation\Muthu_2021\descriptives
asreview data describe data\Muthu_2021.csv -o output\simulation\Muthu_2021\descriptives\data_stats_Muthu_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Muthu_2021.csv -o output\simulation\Muthu_2021\descriptives\wordcloud_Muthu_2021.png --width 800 --height 500
asreview wordcloud data\Muthu_2021.csv -o output\simulation\Muthu_2021\descriptives\wordcloud_relevant_Muthu_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\Muthu_2021.csv -o output\simulation\Muthu_2021\descriptives\wordcloud_irrelevant_Muthu_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Muthu_2021\state_files
asreview simulate data\Muthu_2021.csv -s output\simulation\Muthu_2021\state_files\sim_Muthu_2021_0.asreview --init_seed 535 --seed 177
asreview metrics output\simulation\Muthu_2021\state_files\sim_Muthu_2021_0.asreview -o output\simulation\Muthu_2021\metrics\metrics_sim_Muthu_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Muthu_2021\state_files\ -o output\simulation\Muthu_2021\plot_recall_sim_Muthu_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Nelson_2002
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Nelson_2002\
mkdir output\simulation\Nelson_2002\metrics

:: Collect descriptives about the dataset Nelson_2002
mkdir output\simulation\Nelson_2002\descriptives
asreview data describe data\Nelson_2002.csv -o output\simulation\Nelson_2002\descriptives\data_stats_Nelson_2002.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Nelson_2002.csv -o output\simulation\Nelson_2002\descriptives\wordcloud_Nelson_2002.png --width 800 --height 500
asreview wordcloud data\Nelson_2002.csv -o output\simulation\Nelson_2002\descriptives\wordcloud_relevant_Nelson_2002.png --width 800 --height 500 --relevant
asreview wordcloud data\Nelson_2002.csv -o output\simulation\Nelson_2002\descriptives\wordcloud_irrelevant_Nelson_2002.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Nelson_2002\state_files
asreview simulate data\Nelson_2002.csv -s output\simulation\Nelson_2002\state_files\sim_Nelson_2002_0.asreview --init_seed 535 --seed 178
asreview metrics output\simulation\Nelson_2002\state_files\sim_Nelson_2002_0.asreview -o output\simulation\Nelson_2002\metrics\metrics_sim_Nelson_2002_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Nelson_2002\state_files\ -o output\simulation\Nelson_2002\plot_recall_sim_Nelson_2002.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Oud_2018
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Oud_2018\
mkdir output\simulation\Oud_2018\metrics

:: Collect descriptives about the dataset Oud_2018
mkdir output\simulation\Oud_2018\descriptives
asreview data describe data\Oud_2018.csv -o output\simulation\Oud_2018\descriptives\data_stats_Oud_2018.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Oud_2018.csv -o output\simulation\Oud_2018\descriptives\wordcloud_Oud_2018.png --width 800 --height 500
asreview wordcloud data\Oud_2018.csv -o output\simulation\Oud_2018\descriptives\wordcloud_relevant_Oud_2018.png --width 800 --height 500 --relevant
asreview wordcloud data\Oud_2018.csv -o output\simulation\Oud_2018\descriptives\wordcloud_irrelevant_Oud_2018.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Oud_2018\state_files
asreview simulate data\Oud_2018.csv -s output\simulation\Oud_2018\state_files\sim_Oud_2018_0.asreview --init_seed 535 --seed 179
asreview metrics output\simulation\Oud_2018\state_files\sim_Oud_2018_0.asreview -o output\simulation\Oud_2018\metrics\metrics_sim_Oud_2018_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Oud_2018\state_files\ -o output\simulation\Oud_2018\plot_recall_sim_Oud_2018.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Radjenovic_2013
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Radjenovic_2013\
mkdir output\simulation\Radjenovic_2013\metrics

:: Collect descriptives about the dataset Radjenovic_2013
mkdir output\simulation\Radjenovic_2013\descriptives
asreview data describe data\Radjenovic_2013.csv -o output\simulation\Radjenovic_2013\descriptives\data_stats_Radjenovic_2013.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Radjenovic_2013.csv -o output\simulation\Radjenovic_2013\descriptives\wordcloud_Radjenovic_2013.png --width 800 --height 500
asreview wordcloud data\Radjenovic_2013.csv -o output\simulation\Radjenovic_2013\descriptives\wordcloud_relevant_Radjenovic_2013.png --width 800 --height 500 --relevant
asreview wordcloud data\Radjenovic_2013.csv -o output\simulation\Radjenovic_2013\descriptives\wordcloud_irrelevant_Radjenovic_2013.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Radjenovic_2013\state_files
asreview simulate data\Radjenovic_2013.csv -s output\simulation\Radjenovic_2013\state_files\sim_Radjenovic_2013_0.asreview --init_seed 535 --seed 180
asreview metrics output\simulation\Radjenovic_2013\state_files\sim_Radjenovic_2013_0.asreview -o output\simulation\Radjenovic_2013\metrics\metrics_sim_Radjenovic_2013_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Radjenovic_2013\state_files\ -o output\simulation\Radjenovic_2013\plot_recall_sim_Radjenovic_2013.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Sep_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Sep_2021\
mkdir output\simulation\Sep_2021\metrics

:: Collect descriptives about the dataset Sep_2021
mkdir output\simulation\Sep_2021\descriptives
asreview data describe data\Sep_2021.csv -o output\simulation\Sep_2021\descriptives\data_stats_Sep_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Sep_2021.csv -o output\simulation\Sep_2021\descriptives\wordcloud_Sep_2021.png --width 800 --height 500
asreview wordcloud data\Sep_2021.csv -o output\simulation\Sep_2021\descriptives\wordcloud_relevant_Sep_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\Sep_2021.csv -o output\simulation\Sep_2021\descriptives\wordcloud_irrelevant_Sep_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Sep_2021\state_files
asreview simulate data\Sep_2021.csv -s output\simulation\Sep_2021\state_files\sim_Sep_2021_0.asreview --init_seed 535 --seed 181
asreview metrics output\simulation\Sep_2021\state_files\sim_Sep_2021_0.asreview -o output\simulation\Sep_2021\metrics\metrics_sim_Sep_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Sep_2021\state_files\ -o output\simulation\Sep_2021\plot_recall_sim_Sep_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Smid_2020
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Smid_2020\
mkdir output\simulation\Smid_2020\metrics

:: Collect descriptives about the dataset Smid_2020
mkdir output\simulation\Smid_2020\descriptives
asreview data describe data\Smid_2020.csv -o output\simulation\Smid_2020\descriptives\data_stats_Smid_2020.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Smid_2020.csv -o output\simulation\Smid_2020\descriptives\wordcloud_Smid_2020.png --width 800 --height 500
asreview wordcloud data\Smid_2020.csv -o output\simulation\Smid_2020\descriptives\wordcloud_relevant_Smid_2020.png --width 800 --height 500 --relevant
asreview wordcloud data\Smid_2020.csv -o output\simulation\Smid_2020\descriptives\wordcloud_irrelevant_Smid_2020.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Smid_2020\state_files
asreview simulate data\Smid_2020.csv -s output\simulation\Smid_2020\state_files\sim_Smid_2020_0.asreview --init_seed 535 --seed 182
asreview metrics output\simulation\Smid_2020\state_files\sim_Smid_2020_0.asreview -o output\simulation\Smid_2020\metrics\metrics_sim_Smid_2020_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Smid_2020\state_files\ -o output\simulation\Smid_2020\plot_recall_sim_Smid_2020.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: van_de_Schoot_2018
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\van_de_Schoot_2018\
mkdir output\simulation\van_de_Schoot_2018\metrics

:: Collect descriptives about the dataset van_de_Schoot_2018
mkdir output\simulation\van_de_Schoot_2018\descriptives
asreview data describe data\van_de_Schoot_2018.csv -o output\simulation\van_de_Schoot_2018\descriptives\data_stats_van_de_Schoot_2018.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\van_de_Schoot_2018.csv -o output\simulation\van_de_Schoot_2018\descriptives\wordcloud_van_de_Schoot_2018.png --width 800 --height 500
asreview wordcloud data\van_de_Schoot_2018.csv -o output\simulation\van_de_Schoot_2018\descriptives\wordcloud_relevant_van_de_Schoot_2018.png --width 800 --height 500 --relevant
asreview wordcloud data\van_de_Schoot_2018.csv -o output\simulation\van_de_Schoot_2018\descriptives\wordcloud_irrelevant_van_de_Schoot_2018.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\van_de_Schoot_2018\state_files
asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0.asreview --init_seed 535 --seed 183
asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\van_de_Schoot_2018\state_files\ -o output\simulation\van_de_Schoot_2018\plot_recall_sim_van_de_Schoot_2018.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: van_der_Valk_2021
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\van_der_Valk_2021\
mkdir output\simulation\van_der_Valk_2021\metrics

:: Collect descriptives about the dataset van_der_Valk_2021
mkdir output\simulation\van_der_Valk_2021\descriptives
asreview data describe data\van_der_Valk_2021.csv -o output\simulation\van_der_Valk_2021\descriptives\data_stats_van_der_Valk_2021.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\van_der_Valk_2021.csv -o output\simulation\van_der_Valk_2021\descriptives\wordcloud_van_der_Valk_2021.png --width 800 --height 500
asreview wordcloud data\van_der_Valk_2021.csv -o output\simulation\van_der_Valk_2021\descriptives\wordcloud_relevant_van_der_Valk_2021.png --width 800 --height 500 --relevant
asreview wordcloud data\van_der_Valk_2021.csv -o output\simulation\van_der_Valk_2021\descriptives\wordcloud_irrelevant_van_der_Valk_2021.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\van_der_Valk_2021\state_files
asreview simulate data\van_der_Valk_2021.csv -s output\simulation\van_der_Valk_2021\state_files\sim_van_der_Valk_2021_0.asreview --init_seed 535 --seed 184
asreview metrics output\simulation\van_der_Valk_2021\state_files\sim_van_der_Valk_2021_0.asreview -o output\simulation\van_der_Valk_2021\metrics\metrics_sim_van_der_Valk_2021_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\van_der_Valk_2021\state_files\ -o output\simulation\van_der_Valk_2021\plot_recall_sim_van_der_Valk_2021.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: van_der_Waal_2022
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\van_der_Waal_2022\
mkdir output\simulation\van_der_Waal_2022\metrics

:: Collect descriptives about the dataset van_der_Waal_2022
mkdir output\simulation\van_der_Waal_2022\descriptives
asreview data describe data\van_der_Waal_2022.csv -o output\simulation\van_der_Waal_2022\descriptives\data_stats_van_der_Waal_2022.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\van_der_Waal_2022.csv -o output\simulation\van_der_Waal_2022\descriptives\wordcloud_van_der_Waal_2022.png --width 800 --height 500
asreview wordcloud data\van_der_Waal_2022.csv -o output\simulation\van_der_Waal_2022\descriptives\wordcloud_relevant_van_der_Waal_2022.png --width 800 --height 500 --relevant
asreview wordcloud data\van_der_Waal_2022.csv -o output\simulation\van_der_Waal_2022\descriptives\wordcloud_irrelevant_van_der_Waal_2022.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\van_der_Waal_2022\state_files
asreview simulate data\van_der_Waal_2022.csv -s output\simulation\van_der_Waal_2022\state_files\sim_van_der_Waal_2022_0.asreview --init_seed 535 --seed 185
asreview metrics output\simulation\van_der_Waal_2022\state_files\sim_van_der_Waal_2022_0.asreview -o output\simulation\van_der_Waal_2022\metrics\metrics_sim_van_der_Waal_2022_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\van_der_Waal_2022\state_files\ -o output\simulation\van_der_Waal_2022\plot_recall_sim_van_der_Waal_2022.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: van_Dis_2020
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\van_Dis_2020\
mkdir output\simulation\van_Dis_2020\metrics

:: Collect descriptives about the dataset van_Dis_2020
mkdir output\simulation\van_Dis_2020\descriptives
asreview data describe data\van_Dis_2020.csv -o output\simulation\van_Dis_2020\descriptives\data_stats_van_Dis_2020.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\van_Dis_2020.csv -o output\simulation\van_Dis_2020\descriptives\wordcloud_van_Dis_2020.png --width 800 --height 500
asreview wordcloud data\van_Dis_2020.csv -o output\simulation\van_Dis_2020\descriptives\wordcloud_relevant_van_Dis_2020.png --width 800 --height 500 --relevant
asreview wordcloud data\van_Dis_2020.csv -o output\simulation\van_Dis_2020\descriptives\wordcloud_irrelevant_van_Dis_2020.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\van_Dis_2020\state_files
asreview simulate data\van_Dis_2020.csv -s output\simulation\van_Dis_2020\state_files\sim_van_Dis_2020_0.asreview --init_seed 535 --seed 186
asreview metrics output\simulation\van_Dis_2020\state_files\sim_van_Dis_2020_0.asreview -o output\simulation\van_Dis_2020\metrics\metrics_sim_van_Dis_2020_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\van_Dis_2020\state_files\ -o output\simulation\van_Dis_2020\plot_recall_sim_van_Dis_2020.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Wassenaar_2017
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Wassenaar_2017\
mkdir output\simulation\Wassenaar_2017\metrics

:: Collect descriptives about the dataset Wassenaar_2017
mkdir output\simulation\Wassenaar_2017\descriptives
asreview data describe data\Wassenaar_2017.csv -o output\simulation\Wassenaar_2017\descriptives\data_stats_Wassenaar_2017.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Wassenaar_2017.csv -o output\simulation\Wassenaar_2017\descriptives\wordcloud_Wassenaar_2017.png --width 800 --height 500
asreview wordcloud data\Wassenaar_2017.csv -o output\simulation\Wassenaar_2017\descriptives\wordcloud_relevant_Wassenaar_2017.png --width 800 --height 500 --relevant
asreview wordcloud data\Wassenaar_2017.csv -o output\simulation\Wassenaar_2017\descriptives\wordcloud_irrelevant_Wassenaar_2017.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Wassenaar_2017\state_files
asreview simulate data\Wassenaar_2017.csv -s output\simulation\Wassenaar_2017\state_files\sim_Wassenaar_2017_0.asreview --init_seed 535 --seed 187
asreview metrics output\simulation\Wassenaar_2017\state_files\sim_Wassenaar_2017_0.asreview -o output\simulation\Wassenaar_2017\metrics\metrics_sim_Wassenaar_2017_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Wassenaar_2017\state_files\ -o output\simulation\Wassenaar_2017\plot_recall_sim_Wassenaar_2017.png

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Wolters_2018
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Wolters_2018\
mkdir output\simulation\Wolters_2018\metrics

:: Collect descriptives about the dataset Wolters_2018
mkdir output\simulation\Wolters_2018\descriptives
asreview data describe data\Wolters_2018.csv -o output\simulation\Wolters_2018\descriptives\data_stats_Wolters_2018.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Wolters_2018.csv -o output\simulation\Wolters_2018\descriptives\wordcloud_Wolters_2018.png --width 800 --height 500
asreview wordcloud data\Wolters_2018.csv -o output\simulation\Wolters_2018\descriptives\wordcloud_relevant_Wolters_2018.png --width 800 --height 500 --relevant
asreview wordcloud data\Wolters_2018.csv -o output\simulation\Wolters_2018\descriptives\wordcloud_irrelevant_Wolters_2018.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Wolters_2018\state_files
asreview simulate data\Wolters_2018.csv -s output\simulation\Wolters_2018\state_files\sim_Wolters_2018_0.asreview --init_seed 535 --seed 188
asreview metrics output\simulation\Wolters_2018\state_files\sim_Wolters_2018_0.asreview -o output\simulation\Wolters_2018\metrics\metrics_sim_Wolters_2018_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Wolters_2018\state_files\ -o output\simulation\Wolters_2018\plot_recall_sim_Wolters_2018.png

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py
python scripts\merge_tds.py