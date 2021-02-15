from collections import OrderedDict
import subprocess

nu3 = OrderedDict({1:[26,76,77,125], 2:[6,10,11,18,19], 3:[4,5,6,7], 4:[2, 3, 4]})
nu49 = OrderedDict({2:[13,22,23,40,41], 3:[5,8,9,12,13], 4:[3,4,7,8,9]})
nu49999 = OrderedDict({2:[38,96,97], 3:[8,16,17], 4:[4,5,6]})
nu499999 = OrderedDict({2:[13,38,39,110], 3:[7,8,16,17], 4:[5,6,10,11]})

nus = OrderedDict({0.3:nu3, 0.49:nu49, 0.49999:nu49999, 0.499999:nu499999})

repeat = 3
nproc = [32, 64]

hsz = len([h for nu in nus for p in nus[nu] for h in nus[nu][p]])

total_runs = repeat * len(nproc) * hsz

prefix = ["{0:03}".format(i) for i in range(total_runs)]

bash_file = "mms_run.sh"

E = "{:.2e}".format(1e8)

#extract below keywords and values from code AND indicate which folder to store them in
grep = " | grep \"L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with\" > "
folder_name = "log_files_linE/"

# Write bash file to be run 
f = open(bash_file, "w")
f.write("#!/bin/bash")
f.write("\n\n")

#create user-defined folder_ame if it does not exists
f.write("if [ ! -d \"" + folder_name + "\" ]")
f.write("\n")
f.write("then")
f.write("\n")
f.write("   mkdir " + folder_name)
f.write("\n")
f.write("fi")
f.write("\n\n")

#for Pandas data frame
all_nps = []
all_nus = []
all_ps =[]
all_hs = []
all_rs = []

#create run-scrip AND log files
#log files: (ordered) prefix_problem_nu_deg_h_#cpu_#run.log
#  Example: 023_linE_nu_0.3_deg_2_h_18_cpu_4_run_2.log
k=0
for np in nproc:
    for nu in nus:
        for p in nus[nu]:
            for h in nus[nu][p]:
                for r in range(1,repeat+1):
                    all_nps.append(np)
                    all_nus.append(nu)
                    all_ps.append(p)
                    all_hs.append(h)
                    all_rs.append(r)
                    #Screen output while running
                    f.write("echo \"running nu: " + str(nu) + " p: " + str(p) + " h: " + str(h) + \
                            " on " + str(np) + " cores run " + str(r) + "...\"")
                    f.write("\n")
                    #store the start of the run time in script (per run)
                    f.write("START=$(date +%s.%N)")
                    f.write("\n")
                    output_file = "\"" + prefix[k] + "_linE_nu_" + str(nu) + "_deg_" + str(p) + \
                                  "_h_" + str(h) + "_cpu_" + str(np) + "_run_" + str(r) + ".log\" "
                    f.write("mpirun -n " + str(np) + " ./elasticity -degree " + str(p) + \
                            " -E " + str(E) + " -nu " + str(nu) +  \
                            " -dm_plex_box_faces " + str(h) + "," + str(h) + "," + str(h) + \
                            " -forcing mms -log_view" + \
                            grep + folder_name + output_file)
                    k=k+1
                    f.write("\n")
                    f.write("command")
                    f.write("\n")
                    #store the end of the run time in script (per run)
                    f.write("END=$(date +%s.%N)")
                    f.write("\n")
                    f.write("DIFF=$(echo \"$END - $START\" | bc)")
                    f.write("\n")
                    #Append the time difference from script to the end of log file
                    f.write("echo \"script run time: \"${DIFF} >> " + folder_name + output_file)
                    f.write("\n\n")
f.close()
#make bash_file executable
bash_cmd = ["chmod", "+x", bash_file]
process = subprocess.Popen(bash_cmd, stdout=subprocess.PIPE)






