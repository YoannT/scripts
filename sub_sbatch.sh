#!/bin/bash

#SBATCH --job-name=yt_job
#SBATCH --nodes=1  
#SBATCH --gpus-per-node=1
#SBATCH --time=2880
#SBATCH --mail-type=ALL
#SBATCH --output=/home/ytaille/sbatch_out/%x-%j.out
#SBATCH --error=/home/ytaille/sbatch_out/%x-%j.err

python -m jupyter lab --no-browser --ip 127.0.0.1 --port 8085