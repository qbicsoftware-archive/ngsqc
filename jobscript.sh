#!/bin/sh
#PBS -q cfc
#PBS -A qbic
#PBS -l nodes=1:ppn=10:cfc
#PBS -l walltime=40:00:00
#PBS -e ../logs/jobscript.{job.rule.name}.e$PBS_JOBID
#PBS -o ../logs/jobscript.{job.rule.name}.o$PBS_JOBID
# properties = {properties}

module load qbic/anaconda
module load qbic/fastqc/0.11.4

{exec_job}
exit 0
