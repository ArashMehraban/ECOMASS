#!/bin/bash

h_upperlim=15
h_lowerlim=2

p_upperlim=4
p_lowerlim=1

nus=(0.3 0.49 0.49999 0.499999)
for nu in ${nus[@]}; do
echo "For nu = $nu is running ..."	
  for ((p=p_lowerlim; p<=p_upperlim; p++)); do
    echo "   p = $p is running ..."
    for ((h=h_lowerlim; h<=h_upperlim; h++)); do
       	./elasticity degree $p -E 1 -nu $nu -dm_plex_box_faces $h,$h,$h -forcing mms 
    done | grep 'L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations' > log_files/"nu_${nu}_deg_${p}.log" 
    echo 'nu:' $nu | cat - log_files/"nu_${nu}_deg_${p}.log" > temp && mv temp log_files/"nu_${nu}_deg_${p}.log"
    echo 'p:' $p | cat - log_files/"nu_${nu}_deg_${p}.log" > temp && mv temp log_files/"nu_${nu}_deg_${p}.log"
    echo 'h-refinement range:' $h_lowerlim $h_upperlim | cat - log_files/"nu_${nu}_deg_${p}.log" > temp && mv temp log_files/"nu_${nu}_deg_${p}.log"
 done 
done
echo "All runs finished!"


#Write out info file for panda's DataFrame
echo 'h-range:'$'\n'$h_lowerlim $h_upperlim $'\n''p-range:'$'\n'$p_lowerlim $p_upperlim $'\n''nu-range:' &>log_files/run.info
for nu in ${nus[@]}; do
   printf "$nu " >>log_files/run.info
done
