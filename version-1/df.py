import os
import altair as alt
import pandas as pd
import numpy as np
from collections import OrderedDict
from glob import glob

def create_data_frame_from_file(folder_name,meta_data_filename,keywords):
    
    fnames=[]
    for f in os.listdir(folder_name):
        if f[-4:] == '.log':
            fnames.append(f)
    
    logFiles = sorted(fnames)
    
    #change directory to where log files are
    os.chdir(os.path.join(os.getcwd(),folder_name))
    
    #using user-provided meta_data this could be more automated
    f = open(meta_data_filename,'r')
    vals=[]
    for line in f.readlines():
        line_data = line.split()
        for item in line_data:
            if item.isdigit():
                vals.append(int(item))
            elif '.' in item:
                item.replace('.', '', 1).isdigit()
                vals.append(float(item))
            else:
                continue
    f.close()

    #lack of meta_data => a little bit of a hard code. Update later!
    maxh = vals[1]
    minh = vals[0]
    maxp = vals[3]
    minp = vals[2]
    nus = vals[4:]
    sz_nu = len(vals[4:])
    
    #for Matlab plotting use (same data as in run.info)
    ffm= open("for-Matlab.txt","w+")
    for i in range(len(vals)):
        ffm.write("%f\r\n" %vals[i])
    ffm.close()
    
    per_p = []
    per_h = []
    for i in range(sz_nu):
        for j in range(minh, maxh+1):
            per_p.append(i+1)
            per_h.append(j)
   
    p = per_p * sz_nu
    h = per_h * sz_nu
    
    nu=[]
    num_nus = (maxh-minh+1)*(maxp-minp+1)
    for i in range(sz_nu):
        for j in range(num_nus):
            nu.append(nus[i])
    print(maxh,minh,maxp,minp)
    ksp = [] 
    solveTime = []
    snes_dof_per_sec = []
    L2err = []
    for filename in logFiles:
        f = open(filename, 'r')
        lines = f.readlines()
        for line in lines:
            if keywords[0] in line:
                ll = line.strip().split()
                ksp.append(int(ll[-1]))
            elif keywords[1] in line:
                ll = line.strip().split()
                solveTime.append(float(ll[-3]))
            elif keywords[2] in line:
                ll = line.strip().split()
                snes_dof_per_sec.append(float(ll[-3]))
            elif keywords[3] in line:
                ll = line.strip().split()
                L2err.append("{:.7e}".format(float(ll[-1])))
        f.close()
   
    
    print(len(p), len(h), len(nu), len(ksp), len(solveTime), len(snes_dof_per_sec), len(L2err))
    dict_keys = ['nu', 'p', 'h']
    for k in keywords:
        dict_keys.append(k)

    
    dict_vals = [nu, p, h, ksp, solveTime,snes_dof_per_sec,L2err]
    ordered_dict = OrderedDict()
    for i in range(len(dict_keys)):
        ordered_dict[dict_keys[i]] = dict_vals[i]

    dataFrame = pd.DataFrame(ordered_dict)
    #change durectory back to where you were
    os.chdir("..")
    return dataFrame

if __name__ == "__main__":

    folder_name = 'log_files'
    meta_data_filename = 'run.info'
    keywords = ['Total KSP Iterations', 'SNES Solve Time', 'DoFs/Sec in SNES', 'L2 Error']
    df = create_data_frame_from_file(folder_name,meta_data_filename,keywords)
    pd.set_option("display.max_rows", None, "display.max_columns", None)
    pd.set_option('display.width', None)
    pd.set_option('display.max_colwidth', -1)
    print(df)
    df.to_csv (r'data.csv', index = False, header=True)
    
    chart = alt.Chart(df)
    alt.Chart(df).mark_point().encode(x='p',y='h')
    #chart.save('test.png')











