#!/bin/bash

hp1nu3=(25 26 75 76 100 125)
hp2nu3=(10 11 18 19 32 33)
hp3nu3=(4 5 6 7 10 11)
hp4nu3=(2 3 4 5 6 8)

nus=(0.3 0.49 0.49999 0.499999)
deg=(1 2 3 4)

echo "nu=0.3 and p=1 refinement is running ..."
for h in ${hp1nu3[@]};do
   mpirun -n 64 ./elasticity -degree 1 -E 1 -nu 0.3 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"001_nu_0.3_deg_1.log"

echo "nu=0.3 and p=2 refinement is running ..."
for h in ${hp2nu3[@]};do
   mpirun -n 64 ./elasticity -degree 2 -E 1 -nu 0.3 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"002_nu_0.3_deg_2.log"

echo "nu=0.3 and p=3 refinement is running ..."
for h in ${hp3nu3[@]};do
   mpirun -n 64 ./elasticity -degree 3 -E 1 -nu 0.3 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"003_nu_0.3_deg_3.log"

echo "nu=0.3 and p=4 refinement is running ..."
for h in ${hp4nu3[@]};do
   mpirun -n 64 ./elasticity -degree 4 -E 1 -nu 0.3 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"004_nu_0.3_deg_4.log"

echo "All runs for nu=0.3 finished!"

echo "p nu h" &>log_files/run.info
for p in ${deg[@]};do
   printf "$p " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for nu in ${nus[@]};do
   printf "$nu " >>log_files/run.info
done

printf "\n------------\n" >>log_files/run.info

for h in ${hp1nu3[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp2nu3[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp3nu3[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp4nu3[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n------------\n" >>log_files/run.info



hp2nu49=(11 12 22 23 40 41)
hp3nu49=(5 6 8 9 12 13)
hp4nu49=(4 7 8 9 12 13)

echo "nu=0.49 and p=2 refinement is running ..."
for h in ${hp2nu49[@]};do
   mpirun -n 64 ./elasticity -degree 2 -E 1 -nu 0.49 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"005_nu_0.49_deg_2.log"

echo "nu=0.49 and p=3 refinement is running ..."
for h in ${hp3nu49[@]};do
   mpirun -n 64 ./elasticity -degree 3 -E 1 -nu 0.49 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"006_nu_0.49_deg_3.log"

echo "nu=0.49 and p=4 refinement is running ..."
for h in ${hp4nu49[@]};do
   mpirun -n 64 ./elasticity -degree 4 -E 1 -nu 0.49 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"007_nu_0.49_deg_4.log"

echo "All runs for nu=0.49 finished!"

for h in ${hp2nu49[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp3nu49[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp4nu49[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n------------\n" >>log_files/run.info



hp2nu49999=(12 13 37 38)
hp3nu49999=(7 8 16 17)
hp4nu49999=(5 6 10 11)

echo "nu=0.49999 and p=2 refinement is running ..."
for h in ${hp2nu49999[@]};do
   mpirun -n 64 ./elasticity -degree 2 -E 1 -nu 0.49999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"008_nu_0.49999_deg_2.log"

echo "nu=0.49999 and p=3 refinement is running ..."
for h in ${hp3nu49999[@]};do
   mpirun -n 64 ./elasticity -degree 3 -E 1 -nu 0.49999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"009_nu_0.49999_deg_3.log"

echo "nu=0.49999 and p=4 refinement is running ..."
for h in ${hp4nu49999[@]};do
   mpirun -n 64 ./elasticity -degree 4 -E 1 -nu 0.49999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"010_nu_0.49999_deg_4.log"

echo "All runs for nu=0.49999 finished!"

for h in ${hp2nu49999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp3nu49999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp4nu49999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n------------\n" >>log_files/run.info


hp2nu499999=(12 13 38 39)
hp3nu499999=(4 5 7 8)
hp4nu499999=(5 6 10 11)

echo "nu=0.499999 and p=2 refinement is running ..."
for h in ${hp2nu499999[@]};do
   mpirun -n 64 ./elasticity -degree 2 -E 1 -nu 0.499999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"011_nu_0.499999_deg_2.log"

echo "nu=0.499999 and p=3 refinement is running ..."
for h in ${hp3nu499999[@]};do
   mpirun -n 64 ./elasticity -degree 3 -E 1 -nu 0.499999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"012_nu_0.499999_deg_3.log"

echo "nu=0.499999 and p=4 refinement is running ..."
for h in ${hp4nu499999[@]};do
   mpirun -n 64 ./elasticity -degree 4 -E 1 -nu 0.499999 -dm_plex_box_faces $h,$h,$h -forcing mms -log_view
done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with' > log_files/"013_nu_0.499999_deg_4.log"

echo "All runs for nu=0.499999 finished!"

for h in ${hp2nu499999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp3nu499999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info

for h in ${hp4nu499999[@]}; do
   printf "$h " >>log_files/run.info
done

printf "\n" >>log_files/run.info



