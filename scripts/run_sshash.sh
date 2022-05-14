#!/bin/bash

# Lines that begin with #SBATCH specify commands to be used by SLURM for scheduling

#SBATCH --job-name=helloWorld                                   # sets the job name
#SBATCH --output=helloWorld.out.%j                              # indicates a file to redirect STDOUT to; %j is the jobid. Must be set to a file instead of a directory or else submission will fail.
#SBATCH --error=helloWorld.out.%j                               # indicates a file to redirect STDERR to; %j is the jobid. Must be set to a file instead of a directory or else submission will fail.
#SBATCH --qos=xlarge                                             # set QOS, this will determine what resources can be requested
#SBATCH --nodes=1                                               # number of nodes to allocate for your job
#SBATCH --ntasks=4                                              # request 4 cpu cores be reserved for your node total
#SBATCH --ntasks-per-node=2                                     # request 2 cpu cores be reserved per node
#SBATCH --mem=128gb                                               # memory required by job; if unit is not specified MB will be assumed

module load Python/2.7.9                                        # run any commands necessary to setup your environment

srun -N 1 --mem=512mb bash -c "hostname; python --version" &    # use srun to invoke commands within your job; using an '&'
srun -N 1 --mem=512mb bash -c "hostname; python --version" &    # will background the process allowing them to run concurrently
wait                                                            # wait for any background processes to complete
