#!/bin/bash

if [ ! -d "convergence/" ]
then
   mkdir convergence/
fi

echo "running nu: 0.3 p: 1 h: 3 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"000_linE_nu_0.3_deg_1_h_3_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"000_linE_nu_0.3_deg_1_h_3_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 1 h: 3 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"001_linE_nu_0.3_deg_1_h_3_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"001_linE_nu_0.3_deg_1_h_3_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 1 h: 3 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"002_linE_nu_0.3_deg_1_h_3_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"002_linE_nu_0.3_deg_1_h_3_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 1 h: 4 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"003_linE_nu_0.3_deg_1_h_4_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"003_linE_nu_0.3_deg_1_h_4_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 1 h: 4 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"004_linE_nu_0.3_deg_1_h_4_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"004_linE_nu_0.3_deg_1_h_4_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 1 h: 4 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"005_linE_nu_0.3_deg_1_h_4_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"005_linE_nu_0.3_deg_1_h_4_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 1 h: 5 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"006_linE_nu_0.3_deg_1_h_5_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"006_linE_nu_0.3_deg_1_h_5_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 1 h: 5 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"007_linE_nu_0.3_deg_1_h_5_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"007_linE_nu_0.3_deg_1_h_5_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 1 h: 5 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"008_linE_nu_0.3_deg_1_h_5_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"008_linE_nu_0.3_deg_1_h_5_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 1 h: 6 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"009_linE_nu_0.3_deg_1_h_6_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"009_linE_nu_0.3_deg_1_h_6_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 1 h: 6 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"010_linE_nu_0.3_deg_1_h_6_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"010_linE_nu_0.3_deg_1_h_6_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 1 h: 6 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"011_linE_nu_0.3_deg_1_h_6_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"011_linE_nu_0.3_deg_1_h_6_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 2 h: 3 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"012_linE_nu_0.3_deg_2_h_3_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"012_linE_nu_0.3_deg_2_h_3_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 2 h: 3 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"013_linE_nu_0.3_deg_2_h_3_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"013_linE_nu_0.3_deg_2_h_3_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 2 h: 3 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"014_linE_nu_0.3_deg_2_h_3_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"014_linE_nu_0.3_deg_2_h_3_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 2 h: 4 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"015_linE_nu_0.3_deg_2_h_4_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"015_linE_nu_0.3_deg_2_h_4_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 2 h: 4 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"016_linE_nu_0.3_deg_2_h_4_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"016_linE_nu_0.3_deg_2_h_4_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 2 h: 4 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"017_linE_nu_0.3_deg_2_h_4_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"017_linE_nu_0.3_deg_2_h_4_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 2 h: 5 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"018_linE_nu_0.3_deg_2_h_5_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"018_linE_nu_0.3_deg_2_h_5_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 2 h: 5 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"019_linE_nu_0.3_deg_2_h_5_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"019_linE_nu_0.3_deg_2_h_5_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 2 h: 5 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"020_linE_nu_0.3_deg_2_h_5_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"020_linE_nu_0.3_deg_2_h_5_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"021_linE_nu_0.3_deg_2_h_6_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"021_linE_nu_0.3_deg_2_h_6_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"022_linE_nu_0.3_deg_2_h_6_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"022_linE_nu_0.3_deg_2_h_6_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"023_linE_nu_0.3_deg_2_h_6_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"023_linE_nu_0.3_deg_2_h_6_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 3 h: 3 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"024_linE_nu_0.3_deg_3_h_3_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"024_linE_nu_0.3_deg_3_h_3_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 3 h: 3 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"025_linE_nu_0.3_deg_3_h_3_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"025_linE_nu_0.3_deg_3_h_3_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 3 h: 3 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"026_linE_nu_0.3_deg_3_h_3_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"026_linE_nu_0.3_deg_3_h_3_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"027_linE_nu_0.3_deg_3_h_4_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"027_linE_nu_0.3_deg_3_h_4_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"028_linE_nu_0.3_deg_3_h_4_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"028_linE_nu_0.3_deg_3_h_4_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"029_linE_nu_0.3_deg_3_h_4_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"029_linE_nu_0.3_deg_3_h_4_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"030_linE_nu_0.3_deg_3_h_5_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"030_linE_nu_0.3_deg_3_h_5_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"031_linE_nu_0.3_deg_3_h_5_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"031_linE_nu_0.3_deg_3_h_5_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"032_linE_nu_0.3_deg_3_h_5_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"032_linE_nu_0.3_deg_3_h_5_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"033_linE_nu_0.3_deg_3_h_6_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"033_linE_nu_0.3_deg_3_h_6_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"034_linE_nu_0.3_deg_3_h_6_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"034_linE_nu_0.3_deg_3_h_6_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"035_linE_nu_0.3_deg_3_h_6_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"035_linE_nu_0.3_deg_3_h_6_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"036_linE_nu_0.3_deg_4_h_3_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"036_linE_nu_0.3_deg_4_h_3_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"037_linE_nu_0.3_deg_4_h_3_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"037_linE_nu_0.3_deg_4_h_3_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"038_linE_nu_0.3_deg_4_h_3_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"038_linE_nu_0.3_deg_4_h_3_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"039_linE_nu_0.3_deg_4_h_4_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"039_linE_nu_0.3_deg_4_h_4_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"040_linE_nu_0.3_deg_4_h_4_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"040_linE_nu_0.3_deg_4_h_4_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"041_linE_nu_0.3_deg_4_h_4_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"041_linE_nu_0.3_deg_4_h_4_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 4 h: 5 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"042_linE_nu_0.3_deg_4_h_5_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"042_linE_nu_0.3_deg_4_h_5_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 4 h: 5 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"043_linE_nu_0.3_deg_4_h_5_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"043_linE_nu_0.3_deg_4_h_5_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 4 h: 5 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"044_linE_nu_0.3_deg_4_h_5_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"044_linE_nu_0.3_deg_4_h_5_cpu_1_run_3.log" 

echo "running nu: 0.3 p: 4 h: 6 on 1 cores run 1..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"045_linE_nu_0.3_deg_4_h_6_cpu_1_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"045_linE_nu_0.3_deg_4_h_6_cpu_1_run_1.log" 

echo "running nu: 0.3 p: 4 h: 6 on 1 cores run 2..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"046_linE_nu_0.3_deg_4_h_6_cpu_1_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"046_linE_nu_0.3_deg_4_h_6_cpu_1_run_2.log" 

echo "running nu: 0.3 p: 4 h: 6 on 1 cores run 3..."
START=$(date +%s.%N)
mpirun -n 1 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > convergence/"047_linE_nu_0.3_deg_4_h_6_cpu_1_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> convergence/"047_linE_nu_0.3_deg_4_h_6_cpu_1_run_3.log" 

