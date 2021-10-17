# sbatch ~/scripts/sub_sbatch.sh
# screen -d -m ssh -N -L 8085:127.0.0.1:8085 clustergpu1

sentence=$(sbatch ~/scripts/sub_sbatch.sh) # get the output from sbatch
stringarray=($sentence)                            # separate the output in words
jobid=(${stringarray[3]})                          # isolate the job ID
sentence="$(squeue -j $jobid)"            # read job's slurm status
stringarray=($sentence) 
jobstatus=(${stringarray[12]})            # isolate the status of job number jobid

sleep 1

screen -d -m ssh -N -L 8085:127.0.0.1:8085 clustergpu1
screen -d -m ssh -N -L 8085:127.0.0.1:8085 clustergpu2