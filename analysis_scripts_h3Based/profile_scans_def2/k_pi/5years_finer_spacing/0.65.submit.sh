#!/bin/bash
#PBS -l nodes=1:ppn=8,pmem=3700m,walltime=18:00:00
#PBS -A ngw-282-aa
#PBS -e /gs/project/ngw-282-ac/trwood/jasper_home/JP_fraction_original_jan26_test_lessbins/analysis_scripts_h3Based/profile_scans_def2/ERROUT/k_pi/0.65h3a_h3aERRORoutput_5years.txt
#PBS -o /gs/project/ngw-282-ac/trwood/jasper_home/JP_fraction_original_jan26_test_lessbins/analysis_scripts_h3Based/profile_scans_def2/RUNOUT/k_pi/0.65h3a_h3arunoutput_5years.txt   
#PBS -V
echo "$0: pbs job id = ${PBS_JOBID}"
echo "$0: pbs host = `hostname`"
echo "$0: start time = `date`"
export StartTime=`date +%s`
  
cd /gs/project/ngw-282-ac/trwood/jasper_home/JP_fraction_original_jan26_test_lessbins/analysis_scripts_h3Based/profile_scans_def2/k_pi
python /gs/project/ngw-282-ac/trwood/jasper_home/JP_fraction_original_jan26_test_lessbins/analysis_scripts_h3Based/profile_scans_def2/k_pi/def2_4weights_flattener_h3a_h3a_2nv_k_pi_5years.py  0.65
	
export EndTime=`date +%s`
echo "$0: end time = `date`"
echo "$0: Job Duration = `expr $EndTime - $StartTime` seconds"
echo "$0: done processing"
exit 0
