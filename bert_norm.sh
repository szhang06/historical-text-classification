#!/bin/bash -l

# here you specify the settings of the slurm job
# try to revise some of them, such as job_name, time

#SBATCH -A uppmax2020-2-2 # project no.
#SBATCH -p node -n 1 # resource
#SBATCH -M snowy # cluster name
#SBATCH -t 24:00:00 # time
#SBATCH -J project_bert # job name
#SBATCH -G, --gpus 1
#SBATCH -q gpu

# some references:
# snowy user guide: https://www.uppmax.uu.se/support/user-guides/snowy-user-guide/
# slurm user guide: https://uppmax.uu.se/support/user-guides/slurm-user-guide/

# note: remember to change the settings for your job, 
# both the SBATCH settings and your experimental settings

# now you start to write the code  

# load modules and set the environment
module load python3/3.7.2
source /domus/h1/wenwen/environment_rd/venv/bin/activate

# DATA_DIR=/domus/h1/wenwen/historical_datasets/
# OUT_DIR=/domus/h1/wenwen/historical_datasets/results

python3 /home/wenwen/research_project_2021/bert_classifier_norm.py

# reset the working environment
deactivate




# note: change the directory for your own experiments
# run onmt_preprocess/onmt_train/onmt_translate --help to learn more parameter settings
# or refer to https://opennmt.net/OpenNMT-py/index.html

