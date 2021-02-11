import os
import altair as alt
import pandas as pd
import numpy as np
from collections import OrderedDict
from glob import glob

def create_data_frame_from_file(folder_name,meta_data_filename, parse_meta_data_fun, parse_content_fun, keywords, df_col_names, appCtx):
    
    fnames=[]
    for f in os.listdir(folder_name):
        if f[-4:] == '.log':
            fnames.append(f)
    
    logFiles = sorted(fnames)
    
    #change directory to where log files are
    os.chdir(os.path.join(os.getcwd(),folder_name))
    
    #parse user meta-data using user-defined function
    nu_vals, h_lght, odh, odp = parse_meta_linE(meta_data_filename)

    h = []
    for k in odh:
        for el in odh[k]:
            h.append(digitize(el))

    psz=[]
    for k in odh:
        psz.append(len(odh[k]))

    ps=[]
    for k in odp:
        for el in odp[k]:
            ps.append(el)

    p=[]
    for i in range(len(ps)):
        for j in range(psz[i]):
            p.append(ps[i])

    nusz=[] 
    counter = 0
    for item in h_lght:
        k=0
        for i in range(item):
            k=k+psz[counter]
            counter=counter+1
        nusz.append(k)

    nu = []
    for i in range(len(nu_vals)):
        for j in range(nusz[i]):
            nu.append(nu_vals[i])

    dof = []        
    ksp = [] 
    solveTime = []
    snes_dof_per_sec = []
    L2err = []
    num_proc = []
    total_time = []
    for filename in logFiles:
        f = open(filename, 'r')
        lines = f.readlines()
        for line in lines:
            if keywords[0] in line:
                ll = line.strip().split()
                dof.append(int(ll[-1])*appCtx)
            elif keywords[1] in line:
                ll = line.strip().split()
                ksp.append(int(ll[-1]))
            elif keywords[2] in line:
                ll = line.strip().split()
                solveTime.append(float(ll[-3]))
            elif keywords[3] in line:
                ll = line.strip().split()
                snes_dof_per_sec.append(float(ll[-3]))
            elif keywords[4] in line:
                ll = line.strip().split()
                L2err.append("{:.7e}".format(float(ll[-1])))
            elif keywords[5] in line:
                ll = line.strip().split()
                num_proc.append(int(ll[7]))
            elif keywords[6] in line:
                ll = line.strip().split()
                total_time.append("{:.4e}".format(float(ll[2])))
        f.close()
    
        
    dict_vals = [nu, p, h, dof, ksp, solveTime,snes_dof_per_sec,L2err,total_time]
    ordered_dict = OrderedDict()
    for i in range(len(df_col_names)):
        ordered_dict[df_col_names[i]] = dict_vals[i]

    dataFrame = pd.DataFrame(ordered_dict)

    #change durectory back to where you were
    os.chdir("..")

    return dataFrame



def parse_meta_linE(meta_data_filename):

    #run.info format:
    #
    #vaiables used in run script
    #polynomials
    #nu's
    #p1 p2 ... pn   <--n values
    #h's for p1
    #h's for p2
    #...
    #h's for pn      <--nth row after
    #p1 p2 ... pn   <--n values
    #...
    #...

    md_lst = []
    f = open(meta_data_filename,'r')
    for line in f.readlines():
        md_lst.append(line.split())
    f.close()
    
    var_names = md_lst[0]
    deg_vals = []
    nu_vals = []
    for i in range(len(md_lst[1])):
        deg_vals.append(digitize(md_lst[1][i]))

    for i in range(len(md_lst[2])):
        nu_vals.append(digitize(md_lst[2][i]))

   
    #md_lst[3] is 1st occurance of p's used
    counter = 3
    p_idx =[]
    h_lght=[]
    for i in range(len(md_lst)):
        if i < counter:
            continue
        else:
            p_idx.append(counter)
            counter = counter+len(md_lst[i])+1
            h_lght.append(len(md_lst[i]))

    odp = OrderedDict()
    k=0
    for idx in p_idx:
        tmpv=[]
        for v in md_lst[idx]:
            tmpv.append(digitize(v))            
        odp[k] = tmpv
        k=k+1
    
    partial_var_names=[]
    for idx in p_idx:
        for thing in md_lst[idx]:
            partial_var_names.append('hp'+thing+'nu')

    nu_str = md_lst[2]

    #running out of time:
    #hard code a little. Fix later!
    #Need much better meta-data really
    vnm=partial_var_names
    vnm[0] = vnm[0] + nu_str[0]
    vnm[1] = vnm[1] + nu_str[0]
    vnm[2] = vnm[2] + nu_str[0]
    vnm[3] = vnm[3] + nu_str[0]
    vnm[4] = vnm[4] + nu_str[1]
    vnm[5] = vnm[5] + nu_str[1]
    vnm[6] = vnm[6] + nu_str[1]
    vnm[7] = vnm[7] + nu_str[2]
    vnm[8] = vnm[8] + nu_str[2]
    vnm[9] = vnm[9] + nu_str[2]
    vnm[10] = vnm[10] + nu_str[3]
    vnm[11] = vnm[11] + nu_str[3]
    vnm[12] = vnm[12] + nu_str[3]

    data_idx = list(range(3, len(md_lst)))
    for val in p_idx:
        data_idx.remove(val)
    
    odh = OrderedDict()
    for i in range(len(vnm)):
        odh[vnm[i]] = md_lst[data_idx[i]]
    
    return nu_vals, h_lght, odh , odp 
    
        
def parse_linE():
    pass

#helper function to convert str numbers to int or float
def digitize(item):
    if '.' in item:
        item.replace('.', '', 1).isdigit()
        return float(item)
    elif item.isdigit():
        return int(item)
    else:
        return
                

if __name__ == "__main__":

    folder_name = 'log_files'
    meta_data_filename = 'run.info'
    parse_meta_data_fun = parse_meta_linE #function pointer
    keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', 'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):']
    df_col_names= ['nu', 'p', 'h', 'DoF', '#CG', 'Solve Time(s)', 'MDoFs/Sec', 'L2 Error', 'Total Time']
    parse_content_fun = parse_linE #function pointer
    #pass in do (make a struct/class later)
    appCtx = 3

    df = create_data_frame_from_file(folder_name,meta_data_filename, parse_meta_data_fun, parse_content_fun, keywords, df_col_names, appCtx)

    pd.set_option("display.max_rows", None, "display.max_columns", None)
    pd.set_option('display.width', None)
    pd.set_option('display.max_colwidth', -1)

    print(df)

    df.to_csv (r'data.csv', index = False, header=True)












