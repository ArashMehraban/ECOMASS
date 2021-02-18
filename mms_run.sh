#!/bin/bash

if [ ! -d "log_files_linE/" ]
then
   mkdir log_files_linE/
fi

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"000_linE_nu_0.3_deg_1_h_26_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"000_linE_nu_0.3_deg_1_h_26_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"001_linE_nu_0.3_deg_1_h_26_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"001_linE_nu_0.3_deg_1_h_26_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"002_linE_nu_0.3_deg_1_h_26_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"002_linE_nu_0.3_deg_1_h_26_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"003_linE_nu_0.3_deg_1_h_76_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"003_linE_nu_0.3_deg_1_h_76_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"004_linE_nu_0.3_deg_1_h_76_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"004_linE_nu_0.3_deg_1_h_76_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"005_linE_nu_0.3_deg_1_h_76_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"005_linE_nu_0.3_deg_1_h_76_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"006_linE_nu_0.3_deg_1_h_77_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"006_linE_nu_0.3_deg_1_h_77_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"007_linE_nu_0.3_deg_1_h_77_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"007_linE_nu_0.3_deg_1_h_77_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"008_linE_nu_0.3_deg_1_h_77_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"008_linE_nu_0.3_deg_1_h_77_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"009_linE_nu_0.3_deg_1_h_125_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"009_linE_nu_0.3_deg_1_h_125_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"010_linE_nu_0.3_deg_1_h_125_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"010_linE_nu_0.3_deg_1_h_125_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"011_linE_nu_0.3_deg_1_h_125_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"011_linE_nu_0.3_deg_1_h_125_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"012_linE_nu_0.3_deg_2_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"012_linE_nu_0.3_deg_2_h_6_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"013_linE_nu_0.3_deg_2_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"013_linE_nu_0.3_deg_2_h_6_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"014_linE_nu_0.3_deg_2_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"014_linE_nu_0.3_deg_2_h_6_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"015_linE_nu_0.3_deg_2_h_10_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"015_linE_nu_0.3_deg_2_h_10_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"016_linE_nu_0.3_deg_2_h_10_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"016_linE_nu_0.3_deg_2_h_10_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"017_linE_nu_0.3_deg_2_h_10_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"017_linE_nu_0.3_deg_2_h_10_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"018_linE_nu_0.3_deg_2_h_11_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"018_linE_nu_0.3_deg_2_h_11_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"019_linE_nu_0.3_deg_2_h_11_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"019_linE_nu_0.3_deg_2_h_11_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"020_linE_nu_0.3_deg_2_h_11_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"020_linE_nu_0.3_deg_2_h_11_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"021_linE_nu_0.3_deg_2_h_18_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"021_linE_nu_0.3_deg_2_h_18_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"022_linE_nu_0.3_deg_2_h_18_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"022_linE_nu_0.3_deg_2_h_18_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"023_linE_nu_0.3_deg_2_h_18_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"023_linE_nu_0.3_deg_2_h_18_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"024_linE_nu_0.3_deg_2_h_19_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"024_linE_nu_0.3_deg_2_h_19_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"025_linE_nu_0.3_deg_2_h_19_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"025_linE_nu_0.3_deg_2_h_19_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"026_linE_nu_0.3_deg_2_h_19_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"026_linE_nu_0.3_deg_2_h_19_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"027_linE_nu_0.3_deg_3_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"027_linE_nu_0.3_deg_3_h_4_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"028_linE_nu_0.3_deg_3_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"028_linE_nu_0.3_deg_3_h_4_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"029_linE_nu_0.3_deg_3_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"029_linE_nu_0.3_deg_3_h_4_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"030_linE_nu_0.3_deg_3_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"030_linE_nu_0.3_deg_3_h_5_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"031_linE_nu_0.3_deg_3_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"031_linE_nu_0.3_deg_3_h_5_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"032_linE_nu_0.3_deg_3_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"032_linE_nu_0.3_deg_3_h_5_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"033_linE_nu_0.3_deg_3_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"033_linE_nu_0.3_deg_3_h_6_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"034_linE_nu_0.3_deg_3_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"034_linE_nu_0.3_deg_3_h_6_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"035_linE_nu_0.3_deg_3_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"035_linE_nu_0.3_deg_3_h_6_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"036_linE_nu_0.3_deg_3_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"036_linE_nu_0.3_deg_3_h_7_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"037_linE_nu_0.3_deg_3_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"037_linE_nu_0.3_deg_3_h_7_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"038_linE_nu_0.3_deg_3_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"038_linE_nu_0.3_deg_3_h_7_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"039_linE_nu_0.3_deg_4_h_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"039_linE_nu_0.3_deg_4_h_2_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"040_linE_nu_0.3_deg_4_h_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"040_linE_nu_0.3_deg_4_h_2_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"041_linE_nu_0.3_deg_4_h_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"041_linE_nu_0.3_deg_4_h_2_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"042_linE_nu_0.3_deg_4_h_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"042_linE_nu_0.3_deg_4_h_3_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"043_linE_nu_0.3_deg_4_h_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"043_linE_nu_0.3_deg_4_h_3_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"044_linE_nu_0.3_deg_4_h_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"044_linE_nu_0.3_deg_4_h_3_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"045_linE_nu_0.3_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"045_linE_nu_0.3_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"046_linE_nu_0.3_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"046_linE_nu_0.3_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"047_linE_nu_0.3_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"047_linE_nu_0.3_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"048_linE_nu_0.49_deg_2_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"048_linE_nu_0.49_deg_2_h_13_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"049_linE_nu_0.49_deg_2_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"049_linE_nu_0.49_deg_2_h_13_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"050_linE_nu_0.49_deg_2_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"050_linE_nu_0.49_deg_2_h_13_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"051_linE_nu_0.49_deg_2_h_22_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"051_linE_nu_0.49_deg_2_h_22_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"052_linE_nu_0.49_deg_2_h_22_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"052_linE_nu_0.49_deg_2_h_22_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"053_linE_nu_0.49_deg_2_h_22_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"053_linE_nu_0.49_deg_2_h_22_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"054_linE_nu_0.49_deg_2_h_23_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"054_linE_nu_0.49_deg_2_h_23_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"055_linE_nu_0.49_deg_2_h_23_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"055_linE_nu_0.49_deg_2_h_23_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"056_linE_nu_0.49_deg_2_h_23_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"056_linE_nu_0.49_deg_2_h_23_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"057_linE_nu_0.49_deg_2_h_40_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"057_linE_nu_0.49_deg_2_h_40_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"058_linE_nu_0.49_deg_2_h_40_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"058_linE_nu_0.49_deg_2_h_40_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"059_linE_nu_0.49_deg_2_h_40_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"059_linE_nu_0.49_deg_2_h_40_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"060_linE_nu_0.49_deg_2_h_41_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"060_linE_nu_0.49_deg_2_h_41_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"061_linE_nu_0.49_deg_2_h_41_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"061_linE_nu_0.49_deg_2_h_41_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"062_linE_nu_0.49_deg_2_h_41_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"062_linE_nu_0.49_deg_2_h_41_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"063_linE_nu_0.49_deg_3_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"063_linE_nu_0.49_deg_3_h_5_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"064_linE_nu_0.49_deg_3_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"064_linE_nu_0.49_deg_3_h_5_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"065_linE_nu_0.49_deg_3_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"065_linE_nu_0.49_deg_3_h_5_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"066_linE_nu_0.49_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"066_linE_nu_0.49_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"067_linE_nu_0.49_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"067_linE_nu_0.49_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"068_linE_nu_0.49_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"068_linE_nu_0.49_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"069_linE_nu_0.49_deg_3_h_9_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"069_linE_nu_0.49_deg_3_h_9_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"070_linE_nu_0.49_deg_3_h_9_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"070_linE_nu_0.49_deg_3_h_9_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"071_linE_nu_0.49_deg_3_h_9_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"071_linE_nu_0.49_deg_3_h_9_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"072_linE_nu_0.49_deg_3_h_12_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"072_linE_nu_0.49_deg_3_h_12_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"073_linE_nu_0.49_deg_3_h_12_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"073_linE_nu_0.49_deg_3_h_12_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"074_linE_nu_0.49_deg_3_h_12_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"074_linE_nu_0.49_deg_3_h_12_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"075_linE_nu_0.49_deg_3_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"075_linE_nu_0.49_deg_3_h_13_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"076_linE_nu_0.49_deg_3_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"076_linE_nu_0.49_deg_3_h_13_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"077_linE_nu_0.49_deg_3_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"077_linE_nu_0.49_deg_3_h_13_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"078_linE_nu_0.49_deg_4_h_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"078_linE_nu_0.49_deg_4_h_3_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"079_linE_nu_0.49_deg_4_h_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"079_linE_nu_0.49_deg_4_h_3_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"080_linE_nu_0.49_deg_4_h_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"080_linE_nu_0.49_deg_4_h_3_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"081_linE_nu_0.49_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"081_linE_nu_0.49_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"082_linE_nu_0.49_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"082_linE_nu_0.49_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"083_linE_nu_0.49_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"083_linE_nu_0.49_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"084_linE_nu_0.49_deg_4_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"084_linE_nu_0.49_deg_4_h_7_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"085_linE_nu_0.49_deg_4_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"085_linE_nu_0.49_deg_4_h_7_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"086_linE_nu_0.49_deg_4_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"086_linE_nu_0.49_deg_4_h_7_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"087_linE_nu_0.49_deg_4_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"087_linE_nu_0.49_deg_4_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"088_linE_nu_0.49_deg_4_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"088_linE_nu_0.49_deg_4_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"089_linE_nu_0.49_deg_4_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"089_linE_nu_0.49_deg_4_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"090_linE_nu_0.49_deg_4_h_9_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"090_linE_nu_0.49_deg_4_h_9_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"091_linE_nu_0.49_deg_4_h_9_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"091_linE_nu_0.49_deg_4_h_9_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"092_linE_nu_0.49_deg_4_h_9_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"092_linE_nu_0.49_deg_4_h_9_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"093_linE_nu_0.49999_deg_2_h_38_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"093_linE_nu_0.49999_deg_2_h_38_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"094_linE_nu_0.49999_deg_2_h_38_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"094_linE_nu_0.49999_deg_2_h_38_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"095_linE_nu_0.49999_deg_2_h_38_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"095_linE_nu_0.49999_deg_2_h_38_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"096_linE_nu_0.49999_deg_2_h_96_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"096_linE_nu_0.49999_deg_2_h_96_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"097_linE_nu_0.49999_deg_2_h_96_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"097_linE_nu_0.49999_deg_2_h_96_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"098_linE_nu_0.49999_deg_2_h_96_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"098_linE_nu_0.49999_deg_2_h_96_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"099_linE_nu_0.49999_deg_2_h_97_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"099_linE_nu_0.49999_deg_2_h_97_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"100_linE_nu_0.49999_deg_2_h_97_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"100_linE_nu_0.49999_deg_2_h_97_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"101_linE_nu_0.49999_deg_2_h_97_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"101_linE_nu_0.49999_deg_2_h_97_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"102_linE_nu_0.49999_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"102_linE_nu_0.49999_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"103_linE_nu_0.49999_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"103_linE_nu_0.49999_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"104_linE_nu_0.49999_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"104_linE_nu_0.49999_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"105_linE_nu_0.49999_deg_3_h_16_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"105_linE_nu_0.49999_deg_3_h_16_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"106_linE_nu_0.49999_deg_3_h_16_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"106_linE_nu_0.49999_deg_3_h_16_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"107_linE_nu_0.49999_deg_3_h_16_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"107_linE_nu_0.49999_deg_3_h_16_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"108_linE_nu_0.49999_deg_3_h_17_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"108_linE_nu_0.49999_deg_3_h_17_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"109_linE_nu_0.49999_deg_3_h_17_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"109_linE_nu_0.49999_deg_3_h_17_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"110_linE_nu_0.49999_deg_3_h_17_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"110_linE_nu_0.49999_deg_3_h_17_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"111_linE_nu_0.49999_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"111_linE_nu_0.49999_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"112_linE_nu_0.49999_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"112_linE_nu_0.49999_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"113_linE_nu_0.49999_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"113_linE_nu_0.49999_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"114_linE_nu_0.49999_deg_4_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"114_linE_nu_0.49999_deg_4_h_5_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"115_linE_nu_0.49999_deg_4_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"115_linE_nu_0.49999_deg_4_h_5_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"116_linE_nu_0.49999_deg_4_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"116_linE_nu_0.49999_deg_4_h_5_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"117_linE_nu_0.49999_deg_4_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"117_linE_nu_0.49999_deg_4_h_6_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"118_linE_nu_0.49999_deg_4_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"118_linE_nu_0.49999_deg_4_h_6_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"119_linE_nu_0.49999_deg_4_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"119_linE_nu_0.49999_deg_4_h_6_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"120_linE_nu_0.499999_deg_2_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"120_linE_nu_0.499999_deg_2_h_13_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"121_linE_nu_0.499999_deg_2_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"121_linE_nu_0.499999_deg_2_h_13_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"122_linE_nu_0.499999_deg_2_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"122_linE_nu_0.499999_deg_2_h_13_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"123_linE_nu_0.499999_deg_2_h_38_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"123_linE_nu_0.499999_deg_2_h_38_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"124_linE_nu_0.499999_deg_2_h_38_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"124_linE_nu_0.499999_deg_2_h_38_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"125_linE_nu_0.499999_deg_2_h_38_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"125_linE_nu_0.499999_deg_2_h_38_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"126_linE_nu_0.499999_deg_2_h_39_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"126_linE_nu_0.499999_deg_2_h_39_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"127_linE_nu_0.499999_deg_2_h_39_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"127_linE_nu_0.499999_deg_2_h_39_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"128_linE_nu_0.499999_deg_2_h_39_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"128_linE_nu_0.499999_deg_2_h_39_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"129_linE_nu_0.499999_deg_2_h_110_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"129_linE_nu_0.499999_deg_2_h_110_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"130_linE_nu_0.499999_deg_2_h_110_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"130_linE_nu_0.499999_deg_2_h_110_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"131_linE_nu_0.499999_deg_2_h_110_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"131_linE_nu_0.499999_deg_2_h_110_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"132_linE_nu_0.499999_deg_3_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"132_linE_nu_0.499999_deg_3_h_7_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"133_linE_nu_0.499999_deg_3_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"133_linE_nu_0.499999_deg_3_h_7_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"134_linE_nu_0.499999_deg_3_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"134_linE_nu_0.499999_deg_3_h_7_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"135_linE_nu_0.499999_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"135_linE_nu_0.499999_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"136_linE_nu_0.499999_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"136_linE_nu_0.499999_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"137_linE_nu_0.499999_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"137_linE_nu_0.499999_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"138_linE_nu_0.499999_deg_3_h_16_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"138_linE_nu_0.499999_deg_3_h_16_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"139_linE_nu_0.499999_deg_3_h_16_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"139_linE_nu_0.499999_deg_3_h_16_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"140_linE_nu_0.499999_deg_3_h_16_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"140_linE_nu_0.499999_deg_3_h_16_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"141_linE_nu_0.499999_deg_3_h_17_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"141_linE_nu_0.499999_deg_3_h_17_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"142_linE_nu_0.499999_deg_3_h_17_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"142_linE_nu_0.499999_deg_3_h_17_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"143_linE_nu_0.499999_deg_3_h_17_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"143_linE_nu_0.499999_deg_3_h_17_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"144_linE_nu_0.499999_deg_4_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"144_linE_nu_0.499999_deg_4_h_5_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"145_linE_nu_0.499999_deg_4_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"145_linE_nu_0.499999_deg_4_h_5_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"146_linE_nu_0.499999_deg_4_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"146_linE_nu_0.499999_deg_4_h_5_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"147_linE_nu_0.499999_deg_4_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"147_linE_nu_0.499999_deg_4_h_6_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"148_linE_nu_0.499999_deg_4_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"148_linE_nu_0.499999_deg_4_h_6_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"149_linE_nu_0.499999_deg_4_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"149_linE_nu_0.499999_deg_4_h_6_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"150_linE_nu_0.499999_deg_4_h_10_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"150_linE_nu_0.499999_deg_4_h_10_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"151_linE_nu_0.499999_deg_4_h_10_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"151_linE_nu_0.499999_deg_4_h_10_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"152_linE_nu_0.499999_deg_4_h_10_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"152_linE_nu_0.499999_deg_4_h_10_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"153_linE_nu_0.499999_deg_4_h_11_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"153_linE_nu_0.499999_deg_4_h_11_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"154_linE_nu_0.499999_deg_4_h_11_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"154_linE_nu_0.499999_deg_4_h_11_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"155_linE_nu_0.499999_deg_4_h_11_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"155_linE_nu_0.499999_deg_4_h_11_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"156_linE_nu_0.3_deg_1_h_26_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"156_linE_nu_0.3_deg_1_h_26_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"157_linE_nu_0.3_deg_1_h_26_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"157_linE_nu_0.3_deg_1_h_26_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"158_linE_nu_0.3_deg_1_h_26_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"158_linE_nu_0.3_deg_1_h_26_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"159_linE_nu_0.3_deg_1_h_76_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"159_linE_nu_0.3_deg_1_h_76_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"160_linE_nu_0.3_deg_1_h_76_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"160_linE_nu_0.3_deg_1_h_76_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"161_linE_nu_0.3_deg_1_h_76_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"161_linE_nu_0.3_deg_1_h_76_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"162_linE_nu_0.3_deg_1_h_77_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"162_linE_nu_0.3_deg_1_h_77_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"163_linE_nu_0.3_deg_1_h_77_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"163_linE_nu_0.3_deg_1_h_77_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"164_linE_nu_0.3_deg_1_h_77_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"164_linE_nu_0.3_deg_1_h_77_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"165_linE_nu_0.3_deg_1_h_125_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"165_linE_nu_0.3_deg_1_h_125_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"166_linE_nu_0.3_deg_1_h_125_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"166_linE_nu_0.3_deg_1_h_125_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"167_linE_nu_0.3_deg_1_h_125_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"167_linE_nu_0.3_deg_1_h_125_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"168_linE_nu_0.3_deg_2_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"168_linE_nu_0.3_deg_2_h_6_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"169_linE_nu_0.3_deg_2_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"169_linE_nu_0.3_deg_2_h_6_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"170_linE_nu_0.3_deg_2_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"170_linE_nu_0.3_deg_2_h_6_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"171_linE_nu_0.3_deg_2_h_10_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"171_linE_nu_0.3_deg_2_h_10_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"172_linE_nu_0.3_deg_2_h_10_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"172_linE_nu_0.3_deg_2_h_10_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"173_linE_nu_0.3_deg_2_h_10_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"173_linE_nu_0.3_deg_2_h_10_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"174_linE_nu_0.3_deg_2_h_11_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"174_linE_nu_0.3_deg_2_h_11_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"175_linE_nu_0.3_deg_2_h_11_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"175_linE_nu_0.3_deg_2_h_11_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"176_linE_nu_0.3_deg_2_h_11_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"176_linE_nu_0.3_deg_2_h_11_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"177_linE_nu_0.3_deg_2_h_18_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"177_linE_nu_0.3_deg_2_h_18_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"178_linE_nu_0.3_deg_2_h_18_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"178_linE_nu_0.3_deg_2_h_18_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"179_linE_nu_0.3_deg_2_h_18_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"179_linE_nu_0.3_deg_2_h_18_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"180_linE_nu_0.3_deg_2_h_19_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"180_linE_nu_0.3_deg_2_h_19_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"181_linE_nu_0.3_deg_2_h_19_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"181_linE_nu_0.3_deg_2_h_19_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"182_linE_nu_0.3_deg_2_h_19_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"182_linE_nu_0.3_deg_2_h_19_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"183_linE_nu_0.3_deg_3_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"183_linE_nu_0.3_deg_3_h_4_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"184_linE_nu_0.3_deg_3_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"184_linE_nu_0.3_deg_3_h_4_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"185_linE_nu_0.3_deg_3_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"185_linE_nu_0.3_deg_3_h_4_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"186_linE_nu_0.3_deg_3_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"186_linE_nu_0.3_deg_3_h_5_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"187_linE_nu_0.3_deg_3_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"187_linE_nu_0.3_deg_3_h_5_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"188_linE_nu_0.3_deg_3_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"188_linE_nu_0.3_deg_3_h_5_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"189_linE_nu_0.3_deg_3_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"189_linE_nu_0.3_deg_3_h_6_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"190_linE_nu_0.3_deg_3_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"190_linE_nu_0.3_deg_3_h_6_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"191_linE_nu_0.3_deg_3_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"191_linE_nu_0.3_deg_3_h_6_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"192_linE_nu_0.3_deg_3_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"192_linE_nu_0.3_deg_3_h_7_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"193_linE_nu_0.3_deg_3_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"193_linE_nu_0.3_deg_3_h_7_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"194_linE_nu_0.3_deg_3_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"194_linE_nu_0.3_deg_3_h_7_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"195_linE_nu_0.3_deg_4_h_2_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"195_linE_nu_0.3_deg_4_h_2_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"196_linE_nu_0.3_deg_4_h_2_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"196_linE_nu_0.3_deg_4_h_2_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"197_linE_nu_0.3_deg_4_h_2_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"197_linE_nu_0.3_deg_4_h_2_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"198_linE_nu_0.3_deg_4_h_3_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"198_linE_nu_0.3_deg_4_h_3_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"199_linE_nu_0.3_deg_4_h_3_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"199_linE_nu_0.3_deg_4_h_3_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"200_linE_nu_0.3_deg_4_h_3_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"200_linE_nu_0.3_deg_4_h_3_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"201_linE_nu_0.3_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"201_linE_nu_0.3_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"202_linE_nu_0.3_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"202_linE_nu_0.3_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"203_linE_nu_0.3_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"203_linE_nu_0.3_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"204_linE_nu_0.49_deg_2_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"204_linE_nu_0.49_deg_2_h_13_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"205_linE_nu_0.49_deg_2_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"205_linE_nu_0.49_deg_2_h_13_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"206_linE_nu_0.49_deg_2_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"206_linE_nu_0.49_deg_2_h_13_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"207_linE_nu_0.49_deg_2_h_22_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"207_linE_nu_0.49_deg_2_h_22_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"208_linE_nu_0.49_deg_2_h_22_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"208_linE_nu_0.49_deg_2_h_22_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"209_linE_nu_0.49_deg_2_h_22_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"209_linE_nu_0.49_deg_2_h_22_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"210_linE_nu_0.49_deg_2_h_23_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"210_linE_nu_0.49_deg_2_h_23_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"211_linE_nu_0.49_deg_2_h_23_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"211_linE_nu_0.49_deg_2_h_23_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"212_linE_nu_0.49_deg_2_h_23_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"212_linE_nu_0.49_deg_2_h_23_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"213_linE_nu_0.49_deg_2_h_40_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"213_linE_nu_0.49_deg_2_h_40_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"214_linE_nu_0.49_deg_2_h_40_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"214_linE_nu_0.49_deg_2_h_40_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"215_linE_nu_0.49_deg_2_h_40_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"215_linE_nu_0.49_deg_2_h_40_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"216_linE_nu_0.49_deg_2_h_41_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"216_linE_nu_0.49_deg_2_h_41_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"217_linE_nu_0.49_deg_2_h_41_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"217_linE_nu_0.49_deg_2_h_41_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"218_linE_nu_0.49_deg_2_h_41_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"218_linE_nu_0.49_deg_2_h_41_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"219_linE_nu_0.49_deg_3_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"219_linE_nu_0.49_deg_3_h_5_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"220_linE_nu_0.49_deg_3_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"220_linE_nu_0.49_deg_3_h_5_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"221_linE_nu_0.49_deg_3_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"221_linE_nu_0.49_deg_3_h_5_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"222_linE_nu_0.49_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"222_linE_nu_0.49_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"223_linE_nu_0.49_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"223_linE_nu_0.49_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"224_linE_nu_0.49_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"224_linE_nu_0.49_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"225_linE_nu_0.49_deg_3_h_9_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"225_linE_nu_0.49_deg_3_h_9_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"226_linE_nu_0.49_deg_3_h_9_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"226_linE_nu_0.49_deg_3_h_9_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"227_linE_nu_0.49_deg_3_h_9_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"227_linE_nu_0.49_deg_3_h_9_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"228_linE_nu_0.49_deg_3_h_12_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"228_linE_nu_0.49_deg_3_h_12_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"229_linE_nu_0.49_deg_3_h_12_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"229_linE_nu_0.49_deg_3_h_12_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"230_linE_nu_0.49_deg_3_h_12_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"230_linE_nu_0.49_deg_3_h_12_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"231_linE_nu_0.49_deg_3_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"231_linE_nu_0.49_deg_3_h_13_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"232_linE_nu_0.49_deg_3_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"232_linE_nu_0.49_deg_3_h_13_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"233_linE_nu_0.49_deg_3_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"233_linE_nu_0.49_deg_3_h_13_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"234_linE_nu_0.49_deg_4_h_3_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"234_linE_nu_0.49_deg_4_h_3_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"235_linE_nu_0.49_deg_4_h_3_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"235_linE_nu_0.49_deg_4_h_3_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"236_linE_nu_0.49_deg_4_h_3_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"236_linE_nu_0.49_deg_4_h_3_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"237_linE_nu_0.49_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"237_linE_nu_0.49_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"238_linE_nu_0.49_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"238_linE_nu_0.49_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"239_linE_nu_0.49_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"239_linE_nu_0.49_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"240_linE_nu_0.49_deg_4_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"240_linE_nu_0.49_deg_4_h_7_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"241_linE_nu_0.49_deg_4_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"241_linE_nu_0.49_deg_4_h_7_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"242_linE_nu_0.49_deg_4_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"242_linE_nu_0.49_deg_4_h_7_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"243_linE_nu_0.49_deg_4_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"243_linE_nu_0.49_deg_4_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"244_linE_nu_0.49_deg_4_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"244_linE_nu_0.49_deg_4_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"245_linE_nu_0.49_deg_4_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"245_linE_nu_0.49_deg_4_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"246_linE_nu_0.49_deg_4_h_9_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"246_linE_nu_0.49_deg_4_h_9_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"247_linE_nu_0.49_deg_4_h_9_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"247_linE_nu_0.49_deg_4_h_9_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"248_linE_nu_0.49_deg_4_h_9_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"248_linE_nu_0.49_deg_4_h_9_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"249_linE_nu_0.49999_deg_2_h_38_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"249_linE_nu_0.49999_deg_2_h_38_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"250_linE_nu_0.49999_deg_2_h_38_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"250_linE_nu_0.49999_deg_2_h_38_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"251_linE_nu_0.49999_deg_2_h_38_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"251_linE_nu_0.49999_deg_2_h_38_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"252_linE_nu_0.49999_deg_2_h_96_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"252_linE_nu_0.49999_deg_2_h_96_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"253_linE_nu_0.49999_deg_2_h_96_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"253_linE_nu_0.49999_deg_2_h_96_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"254_linE_nu_0.49999_deg_2_h_96_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"254_linE_nu_0.49999_deg_2_h_96_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"255_linE_nu_0.49999_deg_2_h_97_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"255_linE_nu_0.49999_deg_2_h_97_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"256_linE_nu_0.49999_deg_2_h_97_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"256_linE_nu_0.49999_deg_2_h_97_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"257_linE_nu_0.49999_deg_2_h_97_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"257_linE_nu_0.49999_deg_2_h_97_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"258_linE_nu_0.49999_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"258_linE_nu_0.49999_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"259_linE_nu_0.49999_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"259_linE_nu_0.49999_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"260_linE_nu_0.49999_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"260_linE_nu_0.49999_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"261_linE_nu_0.49999_deg_3_h_16_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"261_linE_nu_0.49999_deg_3_h_16_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"262_linE_nu_0.49999_deg_3_h_16_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"262_linE_nu_0.49999_deg_3_h_16_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"263_linE_nu_0.49999_deg_3_h_16_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"263_linE_nu_0.49999_deg_3_h_16_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"264_linE_nu_0.49999_deg_3_h_17_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"264_linE_nu_0.49999_deg_3_h_17_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"265_linE_nu_0.49999_deg_3_h_17_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"265_linE_nu_0.49999_deg_3_h_17_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"266_linE_nu_0.49999_deg_3_h_17_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"266_linE_nu_0.49999_deg_3_h_17_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"267_linE_nu_0.49999_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"267_linE_nu_0.49999_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"268_linE_nu_0.49999_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"268_linE_nu_0.49999_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"269_linE_nu_0.49999_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"269_linE_nu_0.49999_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"270_linE_nu_0.49999_deg_4_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"270_linE_nu_0.49999_deg_4_h_5_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"271_linE_nu_0.49999_deg_4_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"271_linE_nu_0.49999_deg_4_h_5_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"272_linE_nu_0.49999_deg_4_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"272_linE_nu_0.49999_deg_4_h_5_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"273_linE_nu_0.49999_deg_4_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"273_linE_nu_0.49999_deg_4_h_6_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"274_linE_nu_0.49999_deg_4_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"274_linE_nu_0.49999_deg_4_h_6_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"275_linE_nu_0.49999_deg_4_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"275_linE_nu_0.49999_deg_4_h_6_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"276_linE_nu_0.499999_deg_2_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"276_linE_nu_0.499999_deg_2_h_13_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"277_linE_nu_0.499999_deg_2_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"277_linE_nu_0.499999_deg_2_h_13_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"278_linE_nu_0.499999_deg_2_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"278_linE_nu_0.499999_deg_2_h_13_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"279_linE_nu_0.499999_deg_2_h_38_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"279_linE_nu_0.499999_deg_2_h_38_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"280_linE_nu_0.499999_deg_2_h_38_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"280_linE_nu_0.499999_deg_2_h_38_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"281_linE_nu_0.499999_deg_2_h_38_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"281_linE_nu_0.499999_deg_2_h_38_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"282_linE_nu_0.499999_deg_2_h_39_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"282_linE_nu_0.499999_deg_2_h_39_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"283_linE_nu_0.499999_deg_2_h_39_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"283_linE_nu_0.499999_deg_2_h_39_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"284_linE_nu_0.499999_deg_2_h_39_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"284_linE_nu_0.499999_deg_2_h_39_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"285_linE_nu_0.499999_deg_2_h_110_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"285_linE_nu_0.499999_deg_2_h_110_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"286_linE_nu_0.499999_deg_2_h_110_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"286_linE_nu_0.499999_deg_2_h_110_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"287_linE_nu_0.499999_deg_2_h_110_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"287_linE_nu_0.499999_deg_2_h_110_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"288_linE_nu_0.499999_deg_3_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"288_linE_nu_0.499999_deg_3_h_7_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"289_linE_nu_0.499999_deg_3_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"289_linE_nu_0.499999_deg_3_h_7_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"290_linE_nu_0.499999_deg_3_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"290_linE_nu_0.499999_deg_3_h_7_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"291_linE_nu_0.499999_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"291_linE_nu_0.499999_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"292_linE_nu_0.499999_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"292_linE_nu_0.499999_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"293_linE_nu_0.499999_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"293_linE_nu_0.499999_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"294_linE_nu_0.499999_deg_3_h_16_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"294_linE_nu_0.499999_deg_3_h_16_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"295_linE_nu_0.499999_deg_3_h_16_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"295_linE_nu_0.499999_deg_3_h_16_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"296_linE_nu_0.499999_deg_3_h_16_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"296_linE_nu_0.499999_deg_3_h_16_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"297_linE_nu_0.499999_deg_3_h_17_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"297_linE_nu_0.499999_deg_3_h_17_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"298_linE_nu_0.499999_deg_3_h_17_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"298_linE_nu_0.499999_deg_3_h_17_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"299_linE_nu_0.499999_deg_3_h_17_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"299_linE_nu_0.499999_deg_3_h_17_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"300_linE_nu_0.499999_deg_4_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"300_linE_nu_0.499999_deg_4_h_5_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"301_linE_nu_0.499999_deg_4_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"301_linE_nu_0.499999_deg_4_h_5_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"302_linE_nu_0.499999_deg_4_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"302_linE_nu_0.499999_deg_4_h_5_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"303_linE_nu_0.499999_deg_4_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"303_linE_nu_0.499999_deg_4_h_6_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"304_linE_nu_0.499999_deg_4_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"304_linE_nu_0.499999_deg_4_h_6_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"305_linE_nu_0.499999_deg_4_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"305_linE_nu_0.499999_deg_4_h_6_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"306_linE_nu_0.499999_deg_4_h_10_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"306_linE_nu_0.499999_deg_4_h_10_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"307_linE_nu_0.499999_deg_4_h_10_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"307_linE_nu_0.499999_deg_4_h_10_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"308_linE_nu_0.499999_deg_4_h_10_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"308_linE_nu_0.499999_deg_4_h_10_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"309_linE_nu_0.499999_deg_4_h_11_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"309_linE_nu_0.499999_deg_4_h_11_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"310_linE_nu_0.499999_deg_4_h_11_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"310_linE_nu_0.499999_deg_4_h_11_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"311_linE_nu_0.499999_deg_4_h_11_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"311_linE_nu_0.499999_deg_4_h_11_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"312_linE_nu_0.3_deg_1_h_26_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"312_linE_nu_0.3_deg_1_h_26_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"313_linE_nu_0.3_deg_1_h_26_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"313_linE_nu_0.3_deg_1_h_26_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"314_linE_nu_0.3_deg_1_h_26_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"314_linE_nu_0.3_deg_1_h_26_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"315_linE_nu_0.3_deg_1_h_76_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"315_linE_nu_0.3_deg_1_h_76_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"316_linE_nu_0.3_deg_1_h_76_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"316_linE_nu_0.3_deg_1_h_76_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"317_linE_nu_0.3_deg_1_h_76_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"317_linE_nu_0.3_deg_1_h_76_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"318_linE_nu_0.3_deg_1_h_77_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"318_linE_nu_0.3_deg_1_h_77_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"319_linE_nu_0.3_deg_1_h_77_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"319_linE_nu_0.3_deg_1_h_77_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"320_linE_nu_0.3_deg_1_h_77_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"320_linE_nu_0.3_deg_1_h_77_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"321_linE_nu_0.3_deg_1_h_125_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"321_linE_nu_0.3_deg_1_h_125_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"322_linE_nu_0.3_deg_1_h_125_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"322_linE_nu_0.3_deg_1_h_125_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"323_linE_nu_0.3_deg_1_h_125_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"323_linE_nu_0.3_deg_1_h_125_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"324_linE_nu_0.3_deg_2_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"324_linE_nu_0.3_deg_2_h_6_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"325_linE_nu_0.3_deg_2_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"325_linE_nu_0.3_deg_2_h_6_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"326_linE_nu_0.3_deg_2_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"326_linE_nu_0.3_deg_2_h_6_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"327_linE_nu_0.3_deg_2_h_10_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"327_linE_nu_0.3_deg_2_h_10_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"328_linE_nu_0.3_deg_2_h_10_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"328_linE_nu_0.3_deg_2_h_10_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"329_linE_nu_0.3_deg_2_h_10_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"329_linE_nu_0.3_deg_2_h_10_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"330_linE_nu_0.3_deg_2_h_11_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"330_linE_nu_0.3_deg_2_h_11_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"331_linE_nu_0.3_deg_2_h_11_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"331_linE_nu_0.3_deg_2_h_11_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"332_linE_nu_0.3_deg_2_h_11_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"332_linE_nu_0.3_deg_2_h_11_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"333_linE_nu_0.3_deg_2_h_18_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"333_linE_nu_0.3_deg_2_h_18_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"334_linE_nu_0.3_deg_2_h_18_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"334_linE_nu_0.3_deg_2_h_18_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"335_linE_nu_0.3_deg_2_h_18_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"335_linE_nu_0.3_deg_2_h_18_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"336_linE_nu_0.3_deg_2_h_19_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"336_linE_nu_0.3_deg_2_h_19_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"337_linE_nu_0.3_deg_2_h_19_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"337_linE_nu_0.3_deg_2_h_19_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"338_linE_nu_0.3_deg_2_h_19_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"338_linE_nu_0.3_deg_2_h_19_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"339_linE_nu_0.3_deg_3_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"339_linE_nu_0.3_deg_3_h_4_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"340_linE_nu_0.3_deg_3_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"340_linE_nu_0.3_deg_3_h_4_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"341_linE_nu_0.3_deg_3_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"341_linE_nu_0.3_deg_3_h_4_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"342_linE_nu_0.3_deg_3_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"342_linE_nu_0.3_deg_3_h_5_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"343_linE_nu_0.3_deg_3_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"343_linE_nu_0.3_deg_3_h_5_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"344_linE_nu_0.3_deg_3_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"344_linE_nu_0.3_deg_3_h_5_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"345_linE_nu_0.3_deg_3_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"345_linE_nu_0.3_deg_3_h_6_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"346_linE_nu_0.3_deg_3_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"346_linE_nu_0.3_deg_3_h_6_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"347_linE_nu_0.3_deg_3_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"347_linE_nu_0.3_deg_3_h_6_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"348_linE_nu_0.3_deg_3_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"348_linE_nu_0.3_deg_3_h_7_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"349_linE_nu_0.3_deg_3_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"349_linE_nu_0.3_deg_3_h_7_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"350_linE_nu_0.3_deg_3_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"350_linE_nu_0.3_deg_3_h_7_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"351_linE_nu_0.3_deg_4_h_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"351_linE_nu_0.3_deg_4_h_2_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"352_linE_nu_0.3_deg_4_h_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"352_linE_nu_0.3_deg_4_h_2_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"353_linE_nu_0.3_deg_4_h_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"353_linE_nu_0.3_deg_4_h_2_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"354_linE_nu_0.3_deg_4_h_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"354_linE_nu_0.3_deg_4_h_3_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"355_linE_nu_0.3_deg_4_h_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"355_linE_nu_0.3_deg_4_h_3_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"356_linE_nu_0.3_deg_4_h_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"356_linE_nu_0.3_deg_4_h_3_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"357_linE_nu_0.3_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"357_linE_nu_0.3_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"358_linE_nu_0.3_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"358_linE_nu_0.3_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"359_linE_nu_0.3_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"359_linE_nu_0.3_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"360_linE_nu_0.49_deg_2_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"360_linE_nu_0.49_deg_2_h_13_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"361_linE_nu_0.49_deg_2_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"361_linE_nu_0.49_deg_2_h_13_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"362_linE_nu_0.49_deg_2_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"362_linE_nu_0.49_deg_2_h_13_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"363_linE_nu_0.49_deg_2_h_22_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"363_linE_nu_0.49_deg_2_h_22_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"364_linE_nu_0.49_deg_2_h_22_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"364_linE_nu_0.49_deg_2_h_22_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"365_linE_nu_0.49_deg_2_h_22_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"365_linE_nu_0.49_deg_2_h_22_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"366_linE_nu_0.49_deg_2_h_23_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"366_linE_nu_0.49_deg_2_h_23_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"367_linE_nu_0.49_deg_2_h_23_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"367_linE_nu_0.49_deg_2_h_23_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"368_linE_nu_0.49_deg_2_h_23_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"368_linE_nu_0.49_deg_2_h_23_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"369_linE_nu_0.49_deg_2_h_40_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"369_linE_nu_0.49_deg_2_h_40_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"370_linE_nu_0.49_deg_2_h_40_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"370_linE_nu_0.49_deg_2_h_40_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"371_linE_nu_0.49_deg_2_h_40_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"371_linE_nu_0.49_deg_2_h_40_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"372_linE_nu_0.49_deg_2_h_41_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"372_linE_nu_0.49_deg_2_h_41_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"373_linE_nu_0.49_deg_2_h_41_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"373_linE_nu_0.49_deg_2_h_41_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"374_linE_nu_0.49_deg_2_h_41_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"374_linE_nu_0.49_deg_2_h_41_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"375_linE_nu_0.49_deg_3_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"375_linE_nu_0.49_deg_3_h_5_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"376_linE_nu_0.49_deg_3_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"376_linE_nu_0.49_deg_3_h_5_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"377_linE_nu_0.49_deg_3_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"377_linE_nu_0.49_deg_3_h_5_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"378_linE_nu_0.49_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"378_linE_nu_0.49_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"379_linE_nu_0.49_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"379_linE_nu_0.49_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"380_linE_nu_0.49_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"380_linE_nu_0.49_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"381_linE_nu_0.49_deg_3_h_9_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"381_linE_nu_0.49_deg_3_h_9_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"382_linE_nu_0.49_deg_3_h_9_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"382_linE_nu_0.49_deg_3_h_9_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"383_linE_nu_0.49_deg_3_h_9_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"383_linE_nu_0.49_deg_3_h_9_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"384_linE_nu_0.49_deg_3_h_12_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"384_linE_nu_0.49_deg_3_h_12_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"385_linE_nu_0.49_deg_3_h_12_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"385_linE_nu_0.49_deg_3_h_12_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"386_linE_nu_0.49_deg_3_h_12_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"386_linE_nu_0.49_deg_3_h_12_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"387_linE_nu_0.49_deg_3_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"387_linE_nu_0.49_deg_3_h_13_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"388_linE_nu_0.49_deg_3_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"388_linE_nu_0.49_deg_3_h_13_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"389_linE_nu_0.49_deg_3_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"389_linE_nu_0.49_deg_3_h_13_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"390_linE_nu_0.49_deg_4_h_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"390_linE_nu_0.49_deg_4_h_3_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"391_linE_nu_0.49_deg_4_h_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"391_linE_nu_0.49_deg_4_h_3_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"392_linE_nu_0.49_deg_4_h_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"392_linE_nu_0.49_deg_4_h_3_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"393_linE_nu_0.49_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"393_linE_nu_0.49_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"394_linE_nu_0.49_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"394_linE_nu_0.49_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"395_linE_nu_0.49_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"395_linE_nu_0.49_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"396_linE_nu_0.49_deg_4_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"396_linE_nu_0.49_deg_4_h_7_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"397_linE_nu_0.49_deg_4_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"397_linE_nu_0.49_deg_4_h_7_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"398_linE_nu_0.49_deg_4_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"398_linE_nu_0.49_deg_4_h_7_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"399_linE_nu_0.49_deg_4_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"399_linE_nu_0.49_deg_4_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"400_linE_nu_0.49_deg_4_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"400_linE_nu_0.49_deg_4_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"401_linE_nu_0.49_deg_4_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"401_linE_nu_0.49_deg_4_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"402_linE_nu_0.49_deg_4_h_9_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"402_linE_nu_0.49_deg_4_h_9_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"403_linE_nu_0.49_deg_4_h_9_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"403_linE_nu_0.49_deg_4_h_9_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"404_linE_nu_0.49_deg_4_h_9_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"404_linE_nu_0.49_deg_4_h_9_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"405_linE_nu_0.49999_deg_2_h_38_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"405_linE_nu_0.49999_deg_2_h_38_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"406_linE_nu_0.49999_deg_2_h_38_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"406_linE_nu_0.49999_deg_2_h_38_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"407_linE_nu_0.49999_deg_2_h_38_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"407_linE_nu_0.49999_deg_2_h_38_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"408_linE_nu_0.49999_deg_2_h_96_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"408_linE_nu_0.49999_deg_2_h_96_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"409_linE_nu_0.49999_deg_2_h_96_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"409_linE_nu_0.49999_deg_2_h_96_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"410_linE_nu_0.49999_deg_2_h_96_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"410_linE_nu_0.49999_deg_2_h_96_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"411_linE_nu_0.49999_deg_2_h_97_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"411_linE_nu_0.49999_deg_2_h_97_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"412_linE_nu_0.49999_deg_2_h_97_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"412_linE_nu_0.49999_deg_2_h_97_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"413_linE_nu_0.49999_deg_2_h_97_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"413_linE_nu_0.49999_deg_2_h_97_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"414_linE_nu_0.49999_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"414_linE_nu_0.49999_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"415_linE_nu_0.49999_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"415_linE_nu_0.49999_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"416_linE_nu_0.49999_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"416_linE_nu_0.49999_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"417_linE_nu_0.49999_deg_3_h_16_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"417_linE_nu_0.49999_deg_3_h_16_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"418_linE_nu_0.49999_deg_3_h_16_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"418_linE_nu_0.49999_deg_3_h_16_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"419_linE_nu_0.49999_deg_3_h_16_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"419_linE_nu_0.49999_deg_3_h_16_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"420_linE_nu_0.49999_deg_3_h_17_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"420_linE_nu_0.49999_deg_3_h_17_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"421_linE_nu_0.49999_deg_3_h_17_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"421_linE_nu_0.49999_deg_3_h_17_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"422_linE_nu_0.49999_deg_3_h_17_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"422_linE_nu_0.49999_deg_3_h_17_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"423_linE_nu_0.49999_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"423_linE_nu_0.49999_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"424_linE_nu_0.49999_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"424_linE_nu_0.49999_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"425_linE_nu_0.49999_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"425_linE_nu_0.49999_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"426_linE_nu_0.49999_deg_4_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"426_linE_nu_0.49999_deg_4_h_5_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"427_linE_nu_0.49999_deg_4_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"427_linE_nu_0.49999_deg_4_h_5_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"428_linE_nu_0.49999_deg_4_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"428_linE_nu_0.49999_deg_4_h_5_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"429_linE_nu_0.49999_deg_4_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"429_linE_nu_0.49999_deg_4_h_6_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"430_linE_nu_0.49999_deg_4_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"430_linE_nu_0.49999_deg_4_h_6_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"431_linE_nu_0.49999_deg_4_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"431_linE_nu_0.49999_deg_4_h_6_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"432_linE_nu_0.499999_deg_2_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"432_linE_nu_0.499999_deg_2_h_13_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"433_linE_nu_0.499999_deg_2_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"433_linE_nu_0.499999_deg_2_h_13_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"434_linE_nu_0.499999_deg_2_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"434_linE_nu_0.499999_deg_2_h_13_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"435_linE_nu_0.499999_deg_2_h_38_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"435_linE_nu_0.499999_deg_2_h_38_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"436_linE_nu_0.499999_deg_2_h_38_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"436_linE_nu_0.499999_deg_2_h_38_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"437_linE_nu_0.499999_deg_2_h_38_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"437_linE_nu_0.499999_deg_2_h_38_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"438_linE_nu_0.499999_deg_2_h_39_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"438_linE_nu_0.499999_deg_2_h_39_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"439_linE_nu_0.499999_deg_2_h_39_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"439_linE_nu_0.499999_deg_2_h_39_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"440_linE_nu_0.499999_deg_2_h_39_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"440_linE_nu_0.499999_deg_2_h_39_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"441_linE_nu_0.499999_deg_2_h_110_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"441_linE_nu_0.499999_deg_2_h_110_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"442_linE_nu_0.499999_deg_2_h_110_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"442_linE_nu_0.499999_deg_2_h_110_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"443_linE_nu_0.499999_deg_2_h_110_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"443_linE_nu_0.499999_deg_2_h_110_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"444_linE_nu_0.499999_deg_3_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"444_linE_nu_0.499999_deg_3_h_7_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"445_linE_nu_0.499999_deg_3_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"445_linE_nu_0.499999_deg_3_h_7_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"446_linE_nu_0.499999_deg_3_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"446_linE_nu_0.499999_deg_3_h_7_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"447_linE_nu_0.499999_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"447_linE_nu_0.499999_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"448_linE_nu_0.499999_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"448_linE_nu_0.499999_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"449_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"449_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"450_linE_nu_0.499999_deg_3_h_16_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"450_linE_nu_0.499999_deg_3_h_16_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"451_linE_nu_0.499999_deg_3_h_16_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"451_linE_nu_0.499999_deg_3_h_16_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"452_linE_nu_0.499999_deg_3_h_16_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"452_linE_nu_0.499999_deg_3_h_16_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"453_linE_nu_0.499999_deg_3_h_17_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"453_linE_nu_0.499999_deg_3_h_17_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"454_linE_nu_0.499999_deg_3_h_17_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"454_linE_nu_0.499999_deg_3_h_17_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"455_linE_nu_0.499999_deg_3_h_17_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"455_linE_nu_0.499999_deg_3_h_17_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"456_linE_nu_0.499999_deg_4_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"456_linE_nu_0.499999_deg_4_h_5_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"457_linE_nu_0.499999_deg_4_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"457_linE_nu_0.499999_deg_4_h_5_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"458_linE_nu_0.499999_deg_4_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"458_linE_nu_0.499999_deg_4_h_5_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"459_linE_nu_0.499999_deg_4_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"459_linE_nu_0.499999_deg_4_h_6_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"460_linE_nu_0.499999_deg_4_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"460_linE_nu_0.499999_deg_4_h_6_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"461_linE_nu_0.499999_deg_4_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"461_linE_nu_0.499999_deg_4_h_6_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"462_linE_nu_0.499999_deg_4_h_10_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"462_linE_nu_0.499999_deg_4_h_10_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"463_linE_nu_0.499999_deg_4_h_10_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"463_linE_nu_0.499999_deg_4_h_10_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"464_linE_nu_0.499999_deg_4_h_10_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"464_linE_nu_0.499999_deg_4_h_10_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"465_linE_nu_0.499999_deg_4_h_11_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"465_linE_nu_0.499999_deg_4_h_11_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"466_linE_nu_0.499999_deg_4_h_11_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"466_linE_nu_0.499999_deg_4_h_11_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_linE/"467_linE_nu_0.499999_deg_4_h_11_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_linE/"467_linE_nu_0.499999_deg_4_h_11_cpu_64_run_3.log" 

