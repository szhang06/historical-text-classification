#!/bin/bash -l

# here you specify the settings of the slurm job
# try to revise some of them, such as job_name, time

#SBATCH -A uppmax2020-2-2 # project no.
#SBATCH -p node -n 1 # resource
#SBATCH -M snowy # cluster name
#SBATCH -t 24:00:00 # time
#SBATCH -J tuning_nmt # job name
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

# note: change the directory for your own experiments
# run onmt_preprocess/onmt_train/onmt_translate --help to learn more parameter settings
# or refer to https://opennmt.net/OpenNMT-py/index.html

DATA_DIR=/domus/h1/wenwen/historical_test/historical_data
OUT_DIR=/domus/h1/wenwen/historical_test
onmt_preprocess \
	-train_src $DATA_DIR/icamet.en-hs.train.hs \
	-train_tgt $DATA_DIR/icamet.en-hs.train.en \
	-valid_src $DATA_DIR/icamet.en-hs.dev.hs \
	-valid_tgt $DATA_DIR/icamet.en-hs.dev.en \
	-share_vocab \
	-save_data $DATA_DIR/demo \
	-dynamic_dict 

onmt_train \
	-gpu_ranks 0 \
	-data $DATA_DIR/demo \
	-train_steps 100000 \
	-keep_checkpoint 1 \
	-early_stopping 3 \
	-save_model $OUT_DIR/demo-model \
	-encoder_type brnn \
	-word_vec_size 128 \
	-rnn_size 128 \
	-layers 2 \
	-optim adagrad \
	-learning_rate 0.10 \
	-adagrad_accumulator_init 0.1 \
	-max_grad_norm 2 \
	-batch_size 32 \
	-dropout 0.2 \
	-copy_attn \
	-global_attention mlp \
	-reuse_copy_attn \
	-bridge 
	

# get the BEST model's name
model_name=$(ls | grep "demo-model")

onmt_translate \
	-model $OUT_DIR/$model_name \
	-src $DATA_DIR/icamet.en-hs.test.hs \
	-output $OUT_DIR/pred.txt \
	-replace_unk \
	-verbose

# reset the working environment
deactivate


