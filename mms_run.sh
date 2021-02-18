#!/bin/bash

if [ ! -d "log_files/" ]
then
   mkdir log_files/
fi

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"000_linE_nu_0.3_deg_1_h_26_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"000_linE_nu_0.3_deg_1_h_26_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"001_linE_nu_0.3_deg_1_h_26_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"001_linE_nu_0.3_deg_1_h_26_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"002_linE_nu_0.3_deg_1_h_26_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"002_linE_nu_0.3_deg_1_h_26_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"003_linE_nu_0.3_deg_1_h_76_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"003_linE_nu_0.3_deg_1_h_76_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"004_linE_nu_0.3_deg_1_h_76_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"004_linE_nu_0.3_deg_1_h_76_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"005_linE_nu_0.3_deg_1_h_76_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"005_linE_nu_0.3_deg_1_h_76_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"006_linE_nu_0.3_deg_1_h_77_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"006_linE_nu_0.3_deg_1_h_77_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"007_linE_nu_0.3_deg_1_h_77_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"007_linE_nu_0.3_deg_1_h_77_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"008_linE_nu_0.3_deg_1_h_77_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"008_linE_nu_0.3_deg_1_h_77_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"009_linE_nu_0.3_deg_1_h_125_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"009_linE_nu_0.3_deg_1_h_125_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"010_linE_nu_0.3_deg_1_h_125_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"010_linE_nu_0.3_deg_1_h_125_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"011_linE_nu_0.3_deg_1_h_125_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"011_linE_nu_0.3_deg_1_h_125_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"012_linE_nu_0.3_deg_2_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"012_linE_nu_0.3_deg_2_h_6_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"013_linE_nu_0.3_deg_2_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"013_linE_nu_0.3_deg_2_h_6_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"014_linE_nu_0.3_deg_2_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"014_linE_nu_0.3_deg_2_h_6_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"015_linE_nu_0.3_deg_2_h_10_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"015_linE_nu_0.3_deg_2_h_10_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"016_linE_nu_0.3_deg_2_h_10_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"016_linE_nu_0.3_deg_2_h_10_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"017_linE_nu_0.3_deg_2_h_10_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"017_linE_nu_0.3_deg_2_h_10_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"018_linE_nu_0.3_deg_2_h_11_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"018_linE_nu_0.3_deg_2_h_11_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"019_linE_nu_0.3_deg_2_h_11_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"019_linE_nu_0.3_deg_2_h_11_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"020_linE_nu_0.3_deg_2_h_11_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"020_linE_nu_0.3_deg_2_h_11_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"021_linE_nu_0.3_deg_2_h_18_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"021_linE_nu_0.3_deg_2_h_18_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"022_linE_nu_0.3_deg_2_h_18_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"022_linE_nu_0.3_deg_2_h_18_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"023_linE_nu_0.3_deg_2_h_18_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"023_linE_nu_0.3_deg_2_h_18_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"024_linE_nu_0.3_deg_2_h_19_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"024_linE_nu_0.3_deg_2_h_19_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"025_linE_nu_0.3_deg_2_h_19_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"025_linE_nu_0.3_deg_2_h_19_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"026_linE_nu_0.3_deg_2_h_19_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"026_linE_nu_0.3_deg_2_h_19_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"027_linE_nu_0.3_deg_3_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"027_linE_nu_0.3_deg_3_h_4_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"028_linE_nu_0.3_deg_3_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"028_linE_nu_0.3_deg_3_h_4_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"029_linE_nu_0.3_deg_3_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"029_linE_nu_0.3_deg_3_h_4_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"030_linE_nu_0.3_deg_3_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"030_linE_nu_0.3_deg_3_h_5_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"031_linE_nu_0.3_deg_3_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"031_linE_nu_0.3_deg_3_h_5_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"032_linE_nu_0.3_deg_3_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"032_linE_nu_0.3_deg_3_h_5_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"033_linE_nu_0.3_deg_3_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"033_linE_nu_0.3_deg_3_h_6_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"034_linE_nu_0.3_deg_3_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"034_linE_nu_0.3_deg_3_h_6_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"035_linE_nu_0.3_deg_3_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"035_linE_nu_0.3_deg_3_h_6_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"036_linE_nu_0.3_deg_3_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"036_linE_nu_0.3_deg_3_h_7_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"037_linE_nu_0.3_deg_3_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"037_linE_nu_0.3_deg_3_h_7_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"038_linE_nu_0.3_deg_3_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"038_linE_nu_0.3_deg_3_h_7_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"039_linE_nu_0.3_deg_4_h_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"039_linE_nu_0.3_deg_4_h_2_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"040_linE_nu_0.3_deg_4_h_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"040_linE_nu_0.3_deg_4_h_2_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"041_linE_nu_0.3_deg_4_h_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"041_linE_nu_0.3_deg_4_h_2_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"042_linE_nu_0.3_deg_4_h_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"042_linE_nu_0.3_deg_4_h_3_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"043_linE_nu_0.3_deg_4_h_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"043_linE_nu_0.3_deg_4_h_3_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"044_linE_nu_0.3_deg_4_h_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"044_linE_nu_0.3_deg_4_h_3_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"045_linE_nu_0.3_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"045_linE_nu_0.3_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"046_linE_nu_0.3_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"046_linE_nu_0.3_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"047_linE_nu_0.3_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"047_linE_nu_0.3_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"048_linE_nu_0.49_deg_2_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"048_linE_nu_0.49_deg_2_h_13_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"049_linE_nu_0.49_deg_2_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"049_linE_nu_0.49_deg_2_h_13_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"050_linE_nu_0.49_deg_2_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"050_linE_nu_0.49_deg_2_h_13_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"051_linE_nu_0.49_deg_2_h_22_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"051_linE_nu_0.49_deg_2_h_22_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"052_linE_nu_0.49_deg_2_h_22_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"052_linE_nu_0.49_deg_2_h_22_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"053_linE_nu_0.49_deg_2_h_22_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"053_linE_nu_0.49_deg_2_h_22_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"054_linE_nu_0.49_deg_2_h_23_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"054_linE_nu_0.49_deg_2_h_23_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"055_linE_nu_0.49_deg_2_h_23_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"055_linE_nu_0.49_deg_2_h_23_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"056_linE_nu_0.49_deg_2_h_23_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"056_linE_nu_0.49_deg_2_h_23_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"057_linE_nu_0.49_deg_2_h_40_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"057_linE_nu_0.49_deg_2_h_40_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"058_linE_nu_0.49_deg_2_h_40_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"058_linE_nu_0.49_deg_2_h_40_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"059_linE_nu_0.49_deg_2_h_40_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"059_linE_nu_0.49_deg_2_h_40_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"060_linE_nu_0.49_deg_2_h_41_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"060_linE_nu_0.49_deg_2_h_41_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"061_linE_nu_0.49_deg_2_h_41_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"061_linE_nu_0.49_deg_2_h_41_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"062_linE_nu_0.49_deg_2_h_41_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"062_linE_nu_0.49_deg_2_h_41_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"063_linE_nu_0.49_deg_3_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"063_linE_nu_0.49_deg_3_h_5_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"064_linE_nu_0.49_deg_3_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"064_linE_nu_0.49_deg_3_h_5_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"065_linE_nu_0.49_deg_3_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"065_linE_nu_0.49_deg_3_h_5_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"066_linE_nu_0.49_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"066_linE_nu_0.49_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"067_linE_nu_0.49_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"067_linE_nu_0.49_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"068_linE_nu_0.49_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"068_linE_nu_0.49_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"069_linE_nu_0.49_deg_3_h_9_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"069_linE_nu_0.49_deg_3_h_9_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"070_linE_nu_0.49_deg_3_h_9_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"070_linE_nu_0.49_deg_3_h_9_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"071_linE_nu_0.49_deg_3_h_9_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"071_linE_nu_0.49_deg_3_h_9_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"072_linE_nu_0.49_deg_3_h_12_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"072_linE_nu_0.49_deg_3_h_12_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"073_linE_nu_0.49_deg_3_h_12_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"073_linE_nu_0.49_deg_3_h_12_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"074_linE_nu_0.49_deg_3_h_12_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"074_linE_nu_0.49_deg_3_h_12_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"075_linE_nu_0.49_deg_3_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"075_linE_nu_0.49_deg_3_h_13_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"076_linE_nu_0.49_deg_3_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"076_linE_nu_0.49_deg_3_h_13_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"077_linE_nu_0.49_deg_3_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"077_linE_nu_0.49_deg_3_h_13_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"078_linE_nu_0.49_deg_4_h_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"078_linE_nu_0.49_deg_4_h_3_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"079_linE_nu_0.49_deg_4_h_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"079_linE_nu_0.49_deg_4_h_3_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"080_linE_nu_0.49_deg_4_h_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"080_linE_nu_0.49_deg_4_h_3_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"081_linE_nu_0.49_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"081_linE_nu_0.49_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"082_linE_nu_0.49_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"082_linE_nu_0.49_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"083_linE_nu_0.49_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"083_linE_nu_0.49_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"084_linE_nu_0.49_deg_4_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"084_linE_nu_0.49_deg_4_h_7_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"085_linE_nu_0.49_deg_4_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"085_linE_nu_0.49_deg_4_h_7_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"086_linE_nu_0.49_deg_4_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"086_linE_nu_0.49_deg_4_h_7_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"087_linE_nu_0.49_deg_4_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"087_linE_nu_0.49_deg_4_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"088_linE_nu_0.49_deg_4_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"088_linE_nu_0.49_deg_4_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"089_linE_nu_0.49_deg_4_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"089_linE_nu_0.49_deg_4_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"090_linE_nu_0.49_deg_4_h_9_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"090_linE_nu_0.49_deg_4_h_9_cpu_16_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"091_linE_nu_0.49_deg_4_h_9_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"091_linE_nu_0.49_deg_4_h_9_cpu_16_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"092_linE_nu_0.49_deg_4_h_9_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"092_linE_nu_0.49_deg_4_h_9_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"093_linE_nu_0.49999_deg_2_h_38_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"093_linE_nu_0.49999_deg_2_h_38_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"094_linE_nu_0.49999_deg_2_h_38_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"094_linE_nu_0.49999_deg_2_h_38_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"095_linE_nu_0.49999_deg_2_h_38_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"095_linE_nu_0.49999_deg_2_h_38_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"096_linE_nu_0.49999_deg_2_h_96_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"096_linE_nu_0.49999_deg_2_h_96_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"097_linE_nu_0.49999_deg_2_h_96_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"097_linE_nu_0.49999_deg_2_h_96_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"098_linE_nu_0.49999_deg_2_h_96_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"098_linE_nu_0.49999_deg_2_h_96_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"099_linE_nu_0.49999_deg_2_h_97_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"099_linE_nu_0.49999_deg_2_h_97_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"100_linE_nu_0.49999_deg_2_h_97_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"100_linE_nu_0.49999_deg_2_h_97_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"101_linE_nu_0.49999_deg_2_h_97_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"101_linE_nu_0.49999_deg_2_h_97_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"102_linE_nu_0.49999_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"102_linE_nu_0.49999_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"103_linE_nu_0.49999_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"103_linE_nu_0.49999_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"104_linE_nu_0.49999_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"104_linE_nu_0.49999_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"105_linE_nu_0.49999_deg_3_h_16_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"105_linE_nu_0.49999_deg_3_h_16_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"106_linE_nu_0.49999_deg_3_h_16_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"106_linE_nu_0.49999_deg_3_h_16_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"107_linE_nu_0.49999_deg_3_h_16_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"107_linE_nu_0.49999_deg_3_h_16_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"108_linE_nu_0.49999_deg_3_h_17_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"108_linE_nu_0.49999_deg_3_h_17_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"109_linE_nu_0.49999_deg_3_h_17_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"109_linE_nu_0.49999_deg_3_h_17_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"110_linE_nu_0.49999_deg_3_h_17_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"110_linE_nu_0.49999_deg_3_h_17_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"111_linE_nu_0.49999_deg_4_h_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"111_linE_nu_0.49999_deg_4_h_4_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"112_linE_nu_0.49999_deg_4_h_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"112_linE_nu_0.49999_deg_4_h_4_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"113_linE_nu_0.49999_deg_4_h_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"113_linE_nu_0.49999_deg_4_h_4_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"114_linE_nu_0.49999_deg_4_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"114_linE_nu_0.49999_deg_4_h_5_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"115_linE_nu_0.49999_deg_4_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"115_linE_nu_0.49999_deg_4_h_5_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"116_linE_nu_0.49999_deg_4_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"116_linE_nu_0.49999_deg_4_h_5_cpu_16_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"117_linE_nu_0.49999_deg_4_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"117_linE_nu_0.49999_deg_4_h_6_cpu_16_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"118_linE_nu_0.49999_deg_4_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"118_linE_nu_0.49999_deg_4_h_6_cpu_16_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"119_linE_nu_0.49999_deg_4_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"119_linE_nu_0.49999_deg_4_h_6_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"120_linE_nu_0.499999_deg_2_h_13_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"120_linE_nu_0.499999_deg_2_h_13_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"121_linE_nu_0.499999_deg_2_h_13_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"121_linE_nu_0.499999_deg_2_h_13_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"122_linE_nu_0.499999_deg_2_h_13_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"122_linE_nu_0.499999_deg_2_h_13_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"123_linE_nu_0.499999_deg_2_h_38_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"123_linE_nu_0.499999_deg_2_h_38_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"124_linE_nu_0.499999_deg_2_h_38_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"124_linE_nu_0.499999_deg_2_h_38_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"125_linE_nu_0.499999_deg_2_h_38_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"125_linE_nu_0.499999_deg_2_h_38_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"126_linE_nu_0.499999_deg_2_h_39_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"126_linE_nu_0.499999_deg_2_h_39_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"127_linE_nu_0.499999_deg_2_h_39_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"127_linE_nu_0.499999_deg_2_h_39_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"128_linE_nu_0.499999_deg_2_h_39_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"128_linE_nu_0.499999_deg_2_h_39_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"129_linE_nu_0.499999_deg_2_h_110_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"129_linE_nu_0.499999_deg_2_h_110_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"130_linE_nu_0.499999_deg_2_h_110_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"130_linE_nu_0.499999_deg_2_h_110_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"131_linE_nu_0.499999_deg_2_h_110_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"131_linE_nu_0.499999_deg_2_h_110_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"132_linE_nu_0.499999_deg_3_h_7_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"132_linE_nu_0.499999_deg_3_h_7_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"133_linE_nu_0.499999_deg_3_h_7_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"133_linE_nu_0.499999_deg_3_h_7_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"134_linE_nu_0.499999_deg_3_h_7_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"134_linE_nu_0.499999_deg_3_h_7_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"135_linE_nu_0.499999_deg_3_h_8_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"135_linE_nu_0.499999_deg_3_h_8_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"136_linE_nu_0.499999_deg_3_h_8_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"136_linE_nu_0.499999_deg_3_h_8_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"137_linE_nu_0.499999_deg_3_h_8_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"137_linE_nu_0.499999_deg_3_h_8_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"138_linE_nu_0.499999_deg_3_h_16_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"138_linE_nu_0.499999_deg_3_h_16_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"139_linE_nu_0.499999_deg_3_h_16_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"139_linE_nu_0.499999_deg_3_h_16_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"140_linE_nu_0.499999_deg_3_h_16_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"140_linE_nu_0.499999_deg_3_h_16_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"141_linE_nu_0.499999_deg_3_h_17_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"141_linE_nu_0.499999_deg_3_h_17_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"142_linE_nu_0.499999_deg_3_h_17_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"142_linE_nu_0.499999_deg_3_h_17_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"143_linE_nu_0.499999_deg_3_h_17_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"143_linE_nu_0.499999_deg_3_h_17_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"144_linE_nu_0.499999_deg_4_h_5_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"144_linE_nu_0.499999_deg_4_h_5_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"145_linE_nu_0.499999_deg_4_h_5_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"145_linE_nu_0.499999_deg_4_h_5_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"146_linE_nu_0.499999_deg_4_h_5_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"146_linE_nu_0.499999_deg_4_h_5_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"147_linE_nu_0.499999_deg_4_h_6_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"147_linE_nu_0.499999_deg_4_h_6_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"148_linE_nu_0.499999_deg_4_h_6_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"148_linE_nu_0.499999_deg_4_h_6_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"149_linE_nu_0.499999_deg_4_h_6_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"149_linE_nu_0.499999_deg_4_h_6_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"150_linE_nu_0.499999_deg_4_h_10_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"150_linE_nu_0.499999_deg_4_h_10_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"151_linE_nu_0.499999_deg_4_h_10_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"151_linE_nu_0.499999_deg_4_h_10_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"152_linE_nu_0.499999_deg_4_h_10_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"152_linE_nu_0.499999_deg_4_h_10_cpu_16_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 1..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"153_linE_nu_0.499999_deg_4_h_11_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"153_linE_nu_0.499999_deg_4_h_11_cpu_16_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 2..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"154_linE_nu_0.499999_deg_4_h_11_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"154_linE_nu_0.499999_deg_4_h_11_cpu_16_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 16 cores run 3..."
START=$(date +%s.%N)
mpirun -n 16 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"155_linE_nu_0.499999_deg_4_h_11_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"155_linE_nu_0.499999_deg_4_h_11_cpu_16_run_3.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"156_linE_nu_0.3_deg_1_h_26_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"156_linE_nu_0.3_deg_1_h_26_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"157_linE_nu_0.3_deg_1_h_26_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"157_linE_nu_0.3_deg_1_h_26_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"158_linE_nu_0.3_deg_1_h_26_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"158_linE_nu_0.3_deg_1_h_26_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"159_linE_nu_0.3_deg_1_h_76_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"159_linE_nu_0.3_deg_1_h_76_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"160_linE_nu_0.3_deg_1_h_76_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"160_linE_nu_0.3_deg_1_h_76_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"161_linE_nu_0.3_deg_1_h_76_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"161_linE_nu_0.3_deg_1_h_76_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"162_linE_nu_0.3_deg_1_h_77_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"162_linE_nu_0.3_deg_1_h_77_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"163_linE_nu_0.3_deg_1_h_77_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"163_linE_nu_0.3_deg_1_h_77_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"164_linE_nu_0.3_deg_1_h_77_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"164_linE_nu_0.3_deg_1_h_77_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"165_linE_nu_0.3_deg_1_h_125_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"165_linE_nu_0.3_deg_1_h_125_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"166_linE_nu_0.3_deg_1_h_125_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"166_linE_nu_0.3_deg_1_h_125_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"167_linE_nu_0.3_deg_1_h_125_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"167_linE_nu_0.3_deg_1_h_125_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"168_linE_nu_0.3_deg_2_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"168_linE_nu_0.3_deg_2_h_6_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"169_linE_nu_0.3_deg_2_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"169_linE_nu_0.3_deg_2_h_6_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"170_linE_nu_0.3_deg_2_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"170_linE_nu_0.3_deg_2_h_6_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"171_linE_nu_0.3_deg_2_h_10_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"171_linE_nu_0.3_deg_2_h_10_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"172_linE_nu_0.3_deg_2_h_10_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"172_linE_nu_0.3_deg_2_h_10_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"173_linE_nu_0.3_deg_2_h_10_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"173_linE_nu_0.3_deg_2_h_10_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"174_linE_nu_0.3_deg_2_h_11_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"174_linE_nu_0.3_deg_2_h_11_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"175_linE_nu_0.3_deg_2_h_11_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"175_linE_nu_0.3_deg_2_h_11_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"176_linE_nu_0.3_deg_2_h_11_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"176_linE_nu_0.3_deg_2_h_11_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"177_linE_nu_0.3_deg_2_h_18_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"177_linE_nu_0.3_deg_2_h_18_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"178_linE_nu_0.3_deg_2_h_18_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"178_linE_nu_0.3_deg_2_h_18_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"179_linE_nu_0.3_deg_2_h_18_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"179_linE_nu_0.3_deg_2_h_18_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"180_linE_nu_0.3_deg_2_h_19_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"180_linE_nu_0.3_deg_2_h_19_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"181_linE_nu_0.3_deg_2_h_19_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"181_linE_nu_0.3_deg_2_h_19_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"182_linE_nu_0.3_deg_2_h_19_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"182_linE_nu_0.3_deg_2_h_19_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"183_linE_nu_0.3_deg_3_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"183_linE_nu_0.3_deg_3_h_4_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"184_linE_nu_0.3_deg_3_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"184_linE_nu_0.3_deg_3_h_4_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"185_linE_nu_0.3_deg_3_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"185_linE_nu_0.3_deg_3_h_4_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"186_linE_nu_0.3_deg_3_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"186_linE_nu_0.3_deg_3_h_5_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"187_linE_nu_0.3_deg_3_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"187_linE_nu_0.3_deg_3_h_5_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"188_linE_nu_0.3_deg_3_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"188_linE_nu_0.3_deg_3_h_5_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"189_linE_nu_0.3_deg_3_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"189_linE_nu_0.3_deg_3_h_6_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"190_linE_nu_0.3_deg_3_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"190_linE_nu_0.3_deg_3_h_6_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"191_linE_nu_0.3_deg_3_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"191_linE_nu_0.3_deg_3_h_6_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"192_linE_nu_0.3_deg_3_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"192_linE_nu_0.3_deg_3_h_7_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"193_linE_nu_0.3_deg_3_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"193_linE_nu_0.3_deg_3_h_7_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"194_linE_nu_0.3_deg_3_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"194_linE_nu_0.3_deg_3_h_7_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"195_linE_nu_0.3_deg_4_h_2_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"195_linE_nu_0.3_deg_4_h_2_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"196_linE_nu_0.3_deg_4_h_2_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"196_linE_nu_0.3_deg_4_h_2_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"197_linE_nu_0.3_deg_4_h_2_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"197_linE_nu_0.3_deg_4_h_2_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"198_linE_nu_0.3_deg_4_h_3_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"198_linE_nu_0.3_deg_4_h_3_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"199_linE_nu_0.3_deg_4_h_3_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"199_linE_nu_0.3_deg_4_h_3_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"200_linE_nu_0.3_deg_4_h_3_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"200_linE_nu_0.3_deg_4_h_3_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"201_linE_nu_0.3_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"201_linE_nu_0.3_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"202_linE_nu_0.3_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"202_linE_nu_0.3_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"203_linE_nu_0.3_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"203_linE_nu_0.3_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"204_linE_nu_0.49_deg_2_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"204_linE_nu_0.49_deg_2_h_13_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"205_linE_nu_0.49_deg_2_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"205_linE_nu_0.49_deg_2_h_13_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"206_linE_nu_0.49_deg_2_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"206_linE_nu_0.49_deg_2_h_13_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"207_linE_nu_0.49_deg_2_h_22_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"207_linE_nu_0.49_deg_2_h_22_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"208_linE_nu_0.49_deg_2_h_22_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"208_linE_nu_0.49_deg_2_h_22_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"209_linE_nu_0.49_deg_2_h_22_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"209_linE_nu_0.49_deg_2_h_22_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"210_linE_nu_0.49_deg_2_h_23_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"210_linE_nu_0.49_deg_2_h_23_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"211_linE_nu_0.49_deg_2_h_23_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"211_linE_nu_0.49_deg_2_h_23_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"212_linE_nu_0.49_deg_2_h_23_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"212_linE_nu_0.49_deg_2_h_23_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"213_linE_nu_0.49_deg_2_h_40_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"213_linE_nu_0.49_deg_2_h_40_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"214_linE_nu_0.49_deg_2_h_40_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"214_linE_nu_0.49_deg_2_h_40_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"215_linE_nu_0.49_deg_2_h_40_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"215_linE_nu_0.49_deg_2_h_40_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"216_linE_nu_0.49_deg_2_h_41_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"216_linE_nu_0.49_deg_2_h_41_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"217_linE_nu_0.49_deg_2_h_41_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"217_linE_nu_0.49_deg_2_h_41_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"218_linE_nu_0.49_deg_2_h_41_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"218_linE_nu_0.49_deg_2_h_41_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"219_linE_nu_0.49_deg_3_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"219_linE_nu_0.49_deg_3_h_5_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"220_linE_nu_0.49_deg_3_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"220_linE_nu_0.49_deg_3_h_5_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"221_linE_nu_0.49_deg_3_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"221_linE_nu_0.49_deg_3_h_5_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"222_linE_nu_0.49_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"222_linE_nu_0.49_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"223_linE_nu_0.49_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"223_linE_nu_0.49_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"224_linE_nu_0.49_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"224_linE_nu_0.49_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"225_linE_nu_0.49_deg_3_h_9_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"225_linE_nu_0.49_deg_3_h_9_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"226_linE_nu_0.49_deg_3_h_9_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"226_linE_nu_0.49_deg_3_h_9_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"227_linE_nu_0.49_deg_3_h_9_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"227_linE_nu_0.49_deg_3_h_9_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"228_linE_nu_0.49_deg_3_h_12_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"228_linE_nu_0.49_deg_3_h_12_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"229_linE_nu_0.49_deg_3_h_12_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"229_linE_nu_0.49_deg_3_h_12_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"230_linE_nu_0.49_deg_3_h_12_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"230_linE_nu_0.49_deg_3_h_12_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"231_linE_nu_0.49_deg_3_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"231_linE_nu_0.49_deg_3_h_13_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"232_linE_nu_0.49_deg_3_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"232_linE_nu_0.49_deg_3_h_13_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"233_linE_nu_0.49_deg_3_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"233_linE_nu_0.49_deg_3_h_13_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"234_linE_nu_0.49_deg_4_h_3_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"234_linE_nu_0.49_deg_4_h_3_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"235_linE_nu_0.49_deg_4_h_3_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"235_linE_nu_0.49_deg_4_h_3_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"236_linE_nu_0.49_deg_4_h_3_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"236_linE_nu_0.49_deg_4_h_3_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"237_linE_nu_0.49_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"237_linE_nu_0.49_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"238_linE_nu_0.49_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"238_linE_nu_0.49_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"239_linE_nu_0.49_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"239_linE_nu_0.49_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"240_linE_nu_0.49_deg_4_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"240_linE_nu_0.49_deg_4_h_7_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"241_linE_nu_0.49_deg_4_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"241_linE_nu_0.49_deg_4_h_7_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"242_linE_nu_0.49_deg_4_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"242_linE_nu_0.49_deg_4_h_7_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"243_linE_nu_0.49_deg_4_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"243_linE_nu_0.49_deg_4_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"244_linE_nu_0.49_deg_4_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"244_linE_nu_0.49_deg_4_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"245_linE_nu_0.49_deg_4_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"245_linE_nu_0.49_deg_4_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"246_linE_nu_0.49_deg_4_h_9_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"246_linE_nu_0.49_deg_4_h_9_cpu_32_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"247_linE_nu_0.49_deg_4_h_9_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"247_linE_nu_0.49_deg_4_h_9_cpu_32_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"248_linE_nu_0.49_deg_4_h_9_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"248_linE_nu_0.49_deg_4_h_9_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"249_linE_nu_0.49999_deg_2_h_38_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"249_linE_nu_0.49999_deg_2_h_38_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"250_linE_nu_0.49999_deg_2_h_38_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"250_linE_nu_0.49999_deg_2_h_38_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"251_linE_nu_0.49999_deg_2_h_38_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"251_linE_nu_0.49999_deg_2_h_38_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"252_linE_nu_0.49999_deg_2_h_96_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"252_linE_nu_0.49999_deg_2_h_96_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"253_linE_nu_0.49999_deg_2_h_96_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"253_linE_nu_0.49999_deg_2_h_96_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"254_linE_nu_0.49999_deg_2_h_96_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"254_linE_nu_0.49999_deg_2_h_96_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"255_linE_nu_0.49999_deg_2_h_97_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"255_linE_nu_0.49999_deg_2_h_97_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"256_linE_nu_0.49999_deg_2_h_97_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"256_linE_nu_0.49999_deg_2_h_97_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"257_linE_nu_0.49999_deg_2_h_97_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"257_linE_nu_0.49999_deg_2_h_97_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"258_linE_nu_0.49999_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"258_linE_nu_0.49999_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"259_linE_nu_0.49999_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"259_linE_nu_0.49999_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"260_linE_nu_0.49999_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"260_linE_nu_0.49999_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"261_linE_nu_0.49999_deg_3_h_16_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"261_linE_nu_0.49999_deg_3_h_16_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"262_linE_nu_0.49999_deg_3_h_16_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"262_linE_nu_0.49999_deg_3_h_16_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"263_linE_nu_0.49999_deg_3_h_16_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"263_linE_nu_0.49999_deg_3_h_16_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"264_linE_nu_0.49999_deg_3_h_17_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"264_linE_nu_0.49999_deg_3_h_17_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"265_linE_nu_0.49999_deg_3_h_17_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"265_linE_nu_0.49999_deg_3_h_17_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"266_linE_nu_0.49999_deg_3_h_17_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"266_linE_nu_0.49999_deg_3_h_17_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"267_linE_nu_0.49999_deg_4_h_4_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"267_linE_nu_0.49999_deg_4_h_4_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"268_linE_nu_0.49999_deg_4_h_4_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"268_linE_nu_0.49999_deg_4_h_4_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"269_linE_nu_0.49999_deg_4_h_4_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"269_linE_nu_0.49999_deg_4_h_4_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"270_linE_nu_0.49999_deg_4_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"270_linE_nu_0.49999_deg_4_h_5_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"271_linE_nu_0.49999_deg_4_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"271_linE_nu_0.49999_deg_4_h_5_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"272_linE_nu_0.49999_deg_4_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"272_linE_nu_0.49999_deg_4_h_5_cpu_32_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"273_linE_nu_0.49999_deg_4_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"273_linE_nu_0.49999_deg_4_h_6_cpu_32_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"274_linE_nu_0.49999_deg_4_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"274_linE_nu_0.49999_deg_4_h_6_cpu_32_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"275_linE_nu_0.49999_deg_4_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"275_linE_nu_0.49999_deg_4_h_6_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"276_linE_nu_0.499999_deg_2_h_13_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"276_linE_nu_0.499999_deg_2_h_13_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"277_linE_nu_0.499999_deg_2_h_13_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"277_linE_nu_0.499999_deg_2_h_13_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"278_linE_nu_0.499999_deg_2_h_13_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"278_linE_nu_0.499999_deg_2_h_13_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"279_linE_nu_0.499999_deg_2_h_38_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"279_linE_nu_0.499999_deg_2_h_38_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"280_linE_nu_0.499999_deg_2_h_38_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"280_linE_nu_0.499999_deg_2_h_38_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"281_linE_nu_0.499999_deg_2_h_38_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"281_linE_nu_0.499999_deg_2_h_38_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"282_linE_nu_0.499999_deg_2_h_39_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"282_linE_nu_0.499999_deg_2_h_39_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"283_linE_nu_0.499999_deg_2_h_39_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"283_linE_nu_0.499999_deg_2_h_39_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"284_linE_nu_0.499999_deg_2_h_39_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"284_linE_nu_0.499999_deg_2_h_39_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"285_linE_nu_0.499999_deg_2_h_110_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"285_linE_nu_0.499999_deg_2_h_110_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"286_linE_nu_0.499999_deg_2_h_110_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"286_linE_nu_0.499999_deg_2_h_110_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"287_linE_nu_0.499999_deg_2_h_110_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"287_linE_nu_0.499999_deg_2_h_110_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"288_linE_nu_0.499999_deg_3_h_7_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"288_linE_nu_0.499999_deg_3_h_7_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"289_linE_nu_0.499999_deg_3_h_7_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"289_linE_nu_0.499999_deg_3_h_7_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"290_linE_nu_0.499999_deg_3_h_7_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"290_linE_nu_0.499999_deg_3_h_7_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"291_linE_nu_0.499999_deg_3_h_8_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"291_linE_nu_0.499999_deg_3_h_8_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"292_linE_nu_0.499999_deg_3_h_8_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"292_linE_nu_0.499999_deg_3_h_8_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"293_linE_nu_0.499999_deg_3_h_8_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"293_linE_nu_0.499999_deg_3_h_8_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"294_linE_nu_0.499999_deg_3_h_16_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"294_linE_nu_0.499999_deg_3_h_16_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"295_linE_nu_0.499999_deg_3_h_16_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"295_linE_nu_0.499999_deg_3_h_16_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"296_linE_nu_0.499999_deg_3_h_16_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"296_linE_nu_0.499999_deg_3_h_16_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"297_linE_nu_0.499999_deg_3_h_17_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"297_linE_nu_0.499999_deg_3_h_17_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"298_linE_nu_0.499999_deg_3_h_17_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"298_linE_nu_0.499999_deg_3_h_17_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"299_linE_nu_0.499999_deg_3_h_17_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"299_linE_nu_0.499999_deg_3_h_17_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"300_linE_nu_0.499999_deg_4_h_5_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"300_linE_nu_0.499999_deg_4_h_5_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"301_linE_nu_0.499999_deg_4_h_5_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"301_linE_nu_0.499999_deg_4_h_5_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"302_linE_nu_0.499999_deg_4_h_5_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"302_linE_nu_0.499999_deg_4_h_5_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"303_linE_nu_0.499999_deg_4_h_6_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"303_linE_nu_0.499999_deg_4_h_6_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"304_linE_nu_0.499999_deg_4_h_6_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"304_linE_nu_0.499999_deg_4_h_6_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"305_linE_nu_0.499999_deg_4_h_6_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"305_linE_nu_0.499999_deg_4_h_6_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"306_linE_nu_0.499999_deg_4_h_10_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"306_linE_nu_0.499999_deg_4_h_10_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"307_linE_nu_0.499999_deg_4_h_10_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"307_linE_nu_0.499999_deg_4_h_10_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"308_linE_nu_0.499999_deg_4_h_10_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"308_linE_nu_0.499999_deg_4_h_10_cpu_32_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 1..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"309_linE_nu_0.499999_deg_4_h_11_cpu_32_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"309_linE_nu_0.499999_deg_4_h_11_cpu_32_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 2..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"310_linE_nu_0.499999_deg_4_h_11_cpu_32_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"310_linE_nu_0.499999_deg_4_h_11_cpu_32_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 32 cores run 3..."
START=$(date +%s.%N)
mpirun -n 32 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"311_linE_nu_0.499999_deg_4_h_11_cpu_32_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"311_linE_nu_0.499999_deg_4_h_11_cpu_32_run_3.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"312_linE_nu_0.3_deg_1_h_26_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"312_linE_nu_0.3_deg_1_h_26_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"313_linE_nu_0.3_deg_1_h_26_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"313_linE_nu_0.3_deg_1_h_26_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 26 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 26,26,26 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"314_linE_nu_0.3_deg_1_h_26_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"314_linE_nu_0.3_deg_1_h_26_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"315_linE_nu_0.3_deg_1_h_76_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"315_linE_nu_0.3_deg_1_h_76_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"316_linE_nu_0.3_deg_1_h_76_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"316_linE_nu_0.3_deg_1_h_76_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 76 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 76,76,76 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"317_linE_nu_0.3_deg_1_h_76_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"317_linE_nu_0.3_deg_1_h_76_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"318_linE_nu_0.3_deg_1_h_77_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"318_linE_nu_0.3_deg_1_h_77_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"319_linE_nu_0.3_deg_1_h_77_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"319_linE_nu_0.3_deg_1_h_77_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 77 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 77,77,77 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"320_linE_nu_0.3_deg_1_h_77_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"320_linE_nu_0.3_deg_1_h_77_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"321_linE_nu_0.3_deg_1_h_125_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"321_linE_nu_0.3_deg_1_h_125_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"322_linE_nu_0.3_deg_1_h_125_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"322_linE_nu_0.3_deg_1_h_125_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 1 h: 125 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 1 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 125,125,125 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"323_linE_nu_0.3_deg_1_h_125_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"323_linE_nu_0.3_deg_1_h_125_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"324_linE_nu_0.3_deg_2_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"324_linE_nu_0.3_deg_2_h_6_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"325_linE_nu_0.3_deg_2_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"325_linE_nu_0.3_deg_2_h_6_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"326_linE_nu_0.3_deg_2_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"326_linE_nu_0.3_deg_2_h_6_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"327_linE_nu_0.3_deg_2_h_10_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"327_linE_nu_0.3_deg_2_h_10_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"328_linE_nu_0.3_deg_2_h_10_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"328_linE_nu_0.3_deg_2_h_10_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 10 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"329_linE_nu_0.3_deg_2_h_10_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"329_linE_nu_0.3_deg_2_h_10_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"330_linE_nu_0.3_deg_2_h_11_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"330_linE_nu_0.3_deg_2_h_11_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"331_linE_nu_0.3_deg_2_h_11_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"331_linE_nu_0.3_deg_2_h_11_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 11 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"332_linE_nu_0.3_deg_2_h_11_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"332_linE_nu_0.3_deg_2_h_11_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"333_linE_nu_0.3_deg_2_h_18_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"333_linE_nu_0.3_deg_2_h_18_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"334_linE_nu_0.3_deg_2_h_18_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"334_linE_nu_0.3_deg_2_h_18_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 18 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 18,18,18 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"335_linE_nu_0.3_deg_2_h_18_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"335_linE_nu_0.3_deg_2_h_18_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"336_linE_nu_0.3_deg_2_h_19_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"336_linE_nu_0.3_deg_2_h_19_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"337_linE_nu_0.3_deg_2_h_19_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"337_linE_nu_0.3_deg_2_h_19_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 2 h: 19 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 19,19,19 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"338_linE_nu_0.3_deg_2_h_19_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"338_linE_nu_0.3_deg_2_h_19_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"339_linE_nu_0.3_deg_3_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"339_linE_nu_0.3_deg_3_h_4_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"340_linE_nu_0.3_deg_3_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"340_linE_nu_0.3_deg_3_h_4_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"341_linE_nu_0.3_deg_3_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"341_linE_nu_0.3_deg_3_h_4_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"342_linE_nu_0.3_deg_3_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"342_linE_nu_0.3_deg_3_h_5_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"343_linE_nu_0.3_deg_3_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"343_linE_nu_0.3_deg_3_h_5_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"344_linE_nu_0.3_deg_3_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"344_linE_nu_0.3_deg_3_h_5_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"345_linE_nu_0.3_deg_3_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"345_linE_nu_0.3_deg_3_h_6_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"346_linE_nu_0.3_deg_3_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"346_linE_nu_0.3_deg_3_h_6_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"347_linE_nu_0.3_deg_3_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"347_linE_nu_0.3_deg_3_h_6_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"348_linE_nu_0.3_deg_3_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"348_linE_nu_0.3_deg_3_h_7_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"349_linE_nu_0.3_deg_3_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"349_linE_nu_0.3_deg_3_h_7_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 3 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"350_linE_nu_0.3_deg_3_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"350_linE_nu_0.3_deg_3_h_7_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"351_linE_nu_0.3_deg_4_h_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"351_linE_nu_0.3_deg_4_h_2_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"352_linE_nu_0.3_deg_4_h_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"352_linE_nu_0.3_deg_4_h_2_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 2,2,2 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"353_linE_nu_0.3_deg_4_h_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"353_linE_nu_0.3_deg_4_h_2_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"354_linE_nu_0.3_deg_4_h_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"354_linE_nu_0.3_deg_4_h_3_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"355_linE_nu_0.3_deg_4_h_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"355_linE_nu_0.3_deg_4_h_3_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"356_linE_nu_0.3_deg_4_h_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"356_linE_nu_0.3_deg_4_h_3_cpu_64_run_3.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"357_linE_nu_0.3_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"357_linE_nu_0.3_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"358_linE_nu_0.3_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"358_linE_nu_0.3_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.3 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.3 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"359_linE_nu_0.3_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"359_linE_nu_0.3_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"360_linE_nu_0.49_deg_2_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"360_linE_nu_0.49_deg_2_h_13_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"361_linE_nu_0.49_deg_2_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"361_linE_nu_0.49_deg_2_h_13_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"362_linE_nu_0.49_deg_2_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"362_linE_nu_0.49_deg_2_h_13_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"363_linE_nu_0.49_deg_2_h_22_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"363_linE_nu_0.49_deg_2_h_22_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"364_linE_nu_0.49_deg_2_h_22_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"364_linE_nu_0.49_deg_2_h_22_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 22 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 22,22,22 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"365_linE_nu_0.49_deg_2_h_22_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"365_linE_nu_0.49_deg_2_h_22_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"366_linE_nu_0.49_deg_2_h_23_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"366_linE_nu_0.49_deg_2_h_23_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"367_linE_nu_0.49_deg_2_h_23_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"367_linE_nu_0.49_deg_2_h_23_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 23 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 23,23,23 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"368_linE_nu_0.49_deg_2_h_23_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"368_linE_nu_0.49_deg_2_h_23_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"369_linE_nu_0.49_deg_2_h_40_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"369_linE_nu_0.49_deg_2_h_40_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"370_linE_nu_0.49_deg_2_h_40_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"370_linE_nu_0.49_deg_2_h_40_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 40 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 40,40,40 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"371_linE_nu_0.49_deg_2_h_40_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"371_linE_nu_0.49_deg_2_h_40_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"372_linE_nu_0.49_deg_2_h_41_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"372_linE_nu_0.49_deg_2_h_41_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"373_linE_nu_0.49_deg_2_h_41_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"373_linE_nu_0.49_deg_2_h_41_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 2 h: 41 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 41,41,41 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"374_linE_nu_0.49_deg_2_h_41_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"374_linE_nu_0.49_deg_2_h_41_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"375_linE_nu_0.49_deg_3_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"375_linE_nu_0.49_deg_3_h_5_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"376_linE_nu_0.49_deg_3_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"376_linE_nu_0.49_deg_3_h_5_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"377_linE_nu_0.49_deg_3_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"377_linE_nu_0.49_deg_3_h_5_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"378_linE_nu_0.49_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"378_linE_nu_0.49_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"379_linE_nu_0.49_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"379_linE_nu_0.49_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"380_linE_nu_0.49_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"380_linE_nu_0.49_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"381_linE_nu_0.49_deg_3_h_9_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"381_linE_nu_0.49_deg_3_h_9_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"382_linE_nu_0.49_deg_3_h_9_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"382_linE_nu_0.49_deg_3_h_9_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 9 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"383_linE_nu_0.49_deg_3_h_9_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"383_linE_nu_0.49_deg_3_h_9_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"384_linE_nu_0.49_deg_3_h_12_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"384_linE_nu_0.49_deg_3_h_12_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"385_linE_nu_0.49_deg_3_h_12_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"385_linE_nu_0.49_deg_3_h_12_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 12 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 12,12,12 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"386_linE_nu_0.49_deg_3_h_12_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"386_linE_nu_0.49_deg_3_h_12_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"387_linE_nu_0.49_deg_3_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"387_linE_nu_0.49_deg_3_h_13_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"388_linE_nu_0.49_deg_3_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"388_linE_nu_0.49_deg_3_h_13_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 3 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"389_linE_nu_0.49_deg_3_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"389_linE_nu_0.49_deg_3_h_13_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"390_linE_nu_0.49_deg_4_h_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"390_linE_nu_0.49_deg_4_h_3_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"391_linE_nu_0.49_deg_4_h_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"391_linE_nu_0.49_deg_4_h_3_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 3,3,3 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"392_linE_nu_0.49_deg_4_h_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"392_linE_nu_0.49_deg_4_h_3_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"393_linE_nu_0.49_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"393_linE_nu_0.49_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"394_linE_nu_0.49_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"394_linE_nu_0.49_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"395_linE_nu_0.49_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"395_linE_nu_0.49_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"396_linE_nu_0.49_deg_4_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"396_linE_nu_0.49_deg_4_h_7_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"397_linE_nu_0.49_deg_4_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"397_linE_nu_0.49_deg_4_h_7_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"398_linE_nu_0.49_deg_4_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"398_linE_nu_0.49_deg_4_h_7_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"399_linE_nu_0.49_deg_4_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"399_linE_nu_0.49_deg_4_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"400_linE_nu_0.49_deg_4_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"400_linE_nu_0.49_deg_4_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"401_linE_nu_0.49_deg_4_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"401_linE_nu_0.49_deg_4_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"402_linE_nu_0.49_deg_4_h_9_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"402_linE_nu_0.49_deg_4_h_9_cpu_64_run_1.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"403_linE_nu_0.49_deg_4_h_9_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"403_linE_nu_0.49_deg_4_h_9_cpu_64_run_2.log" 

echo "running nu: 0.49 p: 4 h: 9 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49 -dm_plex_box_faces 9,9,9 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"404_linE_nu_0.49_deg_4_h_9_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"404_linE_nu_0.49_deg_4_h_9_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"405_linE_nu_0.49999_deg_2_h_38_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"405_linE_nu_0.49999_deg_2_h_38_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"406_linE_nu_0.49999_deg_2_h_38_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"406_linE_nu_0.49999_deg_2_h_38_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 38 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"407_linE_nu_0.49999_deg_2_h_38_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"407_linE_nu_0.49999_deg_2_h_38_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"408_linE_nu_0.49999_deg_2_h_96_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"408_linE_nu_0.49999_deg_2_h_96_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"409_linE_nu_0.49999_deg_2_h_96_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"409_linE_nu_0.49999_deg_2_h_96_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 96 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 96,96,96 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"410_linE_nu_0.49999_deg_2_h_96_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"410_linE_nu_0.49999_deg_2_h_96_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"411_linE_nu_0.49999_deg_2_h_97_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"411_linE_nu_0.49999_deg_2_h_97_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"412_linE_nu_0.49999_deg_2_h_97_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"412_linE_nu_0.49999_deg_2_h_97_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 2 h: 97 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 97,97,97 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"413_linE_nu_0.49999_deg_2_h_97_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"413_linE_nu_0.49999_deg_2_h_97_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"414_linE_nu_0.49999_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"414_linE_nu_0.49999_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"415_linE_nu_0.49999_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"415_linE_nu_0.49999_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"416_linE_nu_0.49999_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"416_linE_nu_0.49999_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"417_linE_nu_0.49999_deg_3_h_16_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"417_linE_nu_0.49999_deg_3_h_16_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"418_linE_nu_0.49999_deg_3_h_16_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"418_linE_nu_0.49999_deg_3_h_16_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 16 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"419_linE_nu_0.49999_deg_3_h_16_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"419_linE_nu_0.49999_deg_3_h_16_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"420_linE_nu_0.49999_deg_3_h_17_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"420_linE_nu_0.49999_deg_3_h_17_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"421_linE_nu_0.49999_deg_3_h_17_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"421_linE_nu_0.49999_deg_3_h_17_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 3 h: 17 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"422_linE_nu_0.49999_deg_3_h_17_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"422_linE_nu_0.49999_deg_3_h_17_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"423_linE_nu_0.49999_deg_4_h_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"423_linE_nu_0.49999_deg_4_h_4_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"424_linE_nu_0.49999_deg_4_h_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"424_linE_nu_0.49999_deg_4_h_4_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 4,4,4 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"425_linE_nu_0.49999_deg_4_h_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"425_linE_nu_0.49999_deg_4_h_4_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"426_linE_nu_0.49999_deg_4_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"426_linE_nu_0.49999_deg_4_h_5_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"427_linE_nu_0.49999_deg_4_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"427_linE_nu_0.49999_deg_4_h_5_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"428_linE_nu_0.49999_deg_4_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"428_linE_nu_0.49999_deg_4_h_5_cpu_64_run_3.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"429_linE_nu_0.49999_deg_4_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"429_linE_nu_0.49999_deg_4_h_6_cpu_64_run_1.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"430_linE_nu_0.49999_deg_4_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"430_linE_nu_0.49999_deg_4_h_6_cpu_64_run_2.log" 

echo "running nu: 0.49999 p: 4 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.49999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"431_linE_nu_0.49999_deg_4_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"431_linE_nu_0.49999_deg_4_h_6_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"432_linE_nu_0.499999_deg_2_h_13_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"432_linE_nu_0.499999_deg_2_h_13_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"433_linE_nu_0.499999_deg_2_h_13_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"433_linE_nu_0.499999_deg_2_h_13_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 13 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 13,13,13 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"434_linE_nu_0.499999_deg_2_h_13_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"434_linE_nu_0.499999_deg_2_h_13_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"435_linE_nu_0.499999_deg_2_h_38_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"435_linE_nu_0.499999_deg_2_h_38_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"436_linE_nu_0.499999_deg_2_h_38_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"436_linE_nu_0.499999_deg_2_h_38_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 38 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 38,38,38 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"437_linE_nu_0.499999_deg_2_h_38_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"437_linE_nu_0.499999_deg_2_h_38_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"438_linE_nu_0.499999_deg_2_h_39_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"438_linE_nu_0.499999_deg_2_h_39_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"439_linE_nu_0.499999_deg_2_h_39_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"439_linE_nu_0.499999_deg_2_h_39_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 39 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 39,39,39 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"440_linE_nu_0.499999_deg_2_h_39_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"440_linE_nu_0.499999_deg_2_h_39_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"441_linE_nu_0.499999_deg_2_h_110_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"441_linE_nu_0.499999_deg_2_h_110_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"442_linE_nu_0.499999_deg_2_h_110_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"442_linE_nu_0.499999_deg_2_h_110_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 2 h: 110 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 2 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 110,110,110 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"443_linE_nu_0.499999_deg_2_h_110_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"443_linE_nu_0.499999_deg_2_h_110_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"444_linE_nu_0.499999_deg_3_h_7_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"444_linE_nu_0.499999_deg_3_h_7_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"445_linE_nu_0.499999_deg_3_h_7_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"445_linE_nu_0.499999_deg_3_h_7_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 7 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 7,7,7 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"446_linE_nu_0.499999_deg_3_h_7_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"446_linE_nu_0.499999_deg_3_h_7_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"447_linE_nu_0.499999_deg_3_h_8_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"447_linE_nu_0.499999_deg_3_h_8_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"448_linE_nu_0.499999_deg_3_h_8_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"448_linE_nu_0.499999_deg_3_h_8_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 8 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 8,8,8 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"449_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"449_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"450_linE_nu_0.499999_deg_3_h_16_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"450_linE_nu_0.499999_deg_3_h_16_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"451_linE_nu_0.499999_deg_3_h_16_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"451_linE_nu_0.499999_deg_3_h_16_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 16 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 16,16,16 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"452_linE_nu_0.499999_deg_3_h_16_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"452_linE_nu_0.499999_deg_3_h_16_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"453_linE_nu_0.499999_deg_3_h_17_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"453_linE_nu_0.499999_deg_3_h_17_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"454_linE_nu_0.499999_deg_3_h_17_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"454_linE_nu_0.499999_deg_3_h_17_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 3 h: 17 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 3 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 17,17,17 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"455_linE_nu_0.499999_deg_3_h_17_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"455_linE_nu_0.499999_deg_3_h_17_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"456_linE_nu_0.499999_deg_4_h_5_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"456_linE_nu_0.499999_deg_4_h_5_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"457_linE_nu_0.499999_deg_4_h_5_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"457_linE_nu_0.499999_deg_4_h_5_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 5 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 5,5,5 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"458_linE_nu_0.499999_deg_4_h_5_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"458_linE_nu_0.499999_deg_4_h_5_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"459_linE_nu_0.499999_deg_4_h_6_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"459_linE_nu_0.499999_deg_4_h_6_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"460_linE_nu_0.499999_deg_4_h_6_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"460_linE_nu_0.499999_deg_4_h_6_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 6 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 6,6,6 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"461_linE_nu_0.499999_deg_4_h_6_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"461_linE_nu_0.499999_deg_4_h_6_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"462_linE_nu_0.499999_deg_4_h_10_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"462_linE_nu_0.499999_deg_4_h_10_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"463_linE_nu_0.499999_deg_4_h_10_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"463_linE_nu_0.499999_deg_4_h_10_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 10 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 10,10,10 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"464_linE_nu_0.499999_deg_4_h_10_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"464_linE_nu_0.499999_deg_4_h_10_cpu_64_run_3.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 1..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"465_linE_nu_0.499999_deg_4_h_11_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"465_linE_nu_0.499999_deg_4_h_11_cpu_64_run_1.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 2..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"466_linE_nu_0.499999_deg_4_h_11_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"466_linE_nu_0.499999_deg_4_h_11_cpu_64_run_2.log" 

echo "running nu: 0.499999 p: 4 h: 11 on 64 cores run 3..."
START=$(date +%s.%N)
mpirun -n 64 ./elasticity -degree 4 -E 1.00e+08 -nu 0.499999 -dm_plex_box_faces 11,11,11 -forcing mms -log_view | grep "L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files/"467_linE_nu_0.499999_deg_4_h_11_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files/"467_linE_nu_0.499999_deg_4_h_11_cpu_64_run_3.log" 

