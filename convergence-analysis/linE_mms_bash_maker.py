from collections import OrderedDict
import subprocess

#nu Dict: {poly : h-list}
nu3 = OrderedDict({1:[3,4,5,6], 2:[3,4,5,6], 3:[3,4,5,6], 4:[3,4,5,6]})


nus = OrderedDict({0.3:nu3})

repeat = 3
nproc = [1]

hsz = len([h for nu in nus for p in nus[nu] for h in nus[nu][p]])

total_runs = repeat * len(nproc) * hsz

prefix = ["{0:03}".format(i) for i in range(total_runs)]

bash_file = "conv-analysis.sh"

E = "{:.2e}".format(1e8)

#extract below keywords and values from code AND indicate which folder to store them in
grep = " | grep \"L2 Error\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with\" > "
folder_name = "convergence/"

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






