import os
import sys
import pandas as pd
import numpy as np
from collections import OrderedDict

class AppCtx:
    pass

def parse_file_content(filename, appCtx):
    pass

def parse_filename(filename, appCtx):
    pass

def parse_log_files(folder_name, appCtx):
    #accumulate all filenames & drop the extension
    filenames=[]
    ext_sz = len(appCtx.filename_ext)
    for f in os.listdir(folder_name):
        if f[-ext_sz:] == appCtx.filename_ext:
            filenames.append(f)
    #extract data from filenames
    filenames_data = []
    parse_filename = appCtx.parse_filename #function pointer
    for filename in filenames:
        filenames_data.append(parse_filename(filename,appCtx))
    
    #change directory to where log files are
    os.chdir(os.path.join(os.getcwd(),folder_name))

    #extract data from file contents
    files_data = []    
    parse_file_content = appCtx.parse_file_content #function pointer
    for filename in filenames:
        files_data.append(parse_file_content(filename, appCtx)) 

    #change durectory back to where you were
    os.chdir("..")

    #return as numpy array
    return np.array(filenames_data), np.array(files_data)

def parse_filename_linE(filename,appCtx):
    ext_sz = len(appCtx.filename_ext)
    f = filename[:-ext_sz].split('_')
    data = [] 
    for i in range(len(f)):
        if i in appCtx.keep_idx:
            if f[i].isdigit() or f[i].replace('.', '', 1).isdigit():
                data.append(digitize(f[i]))
    return data

def parse_file_content_linE(filename, appCtx):
    grep = appCtx.logfile_keywords
    file_data = []
    fd = open(filename, 'r')
    lines = fd.readlines()
    for line in lines:
        ll = line.strip().split()
        if grep[0] in line:
            file_data.append(int(ll[-1]))
        elif grep[1] in line:
            file_data.append(int(ll[-1]))
        elif grep[2] in line:
            file_data.append(float(ll[-3])) 
        elif grep[3] in line:
            file_data.append(float(ll[-3]))
        elif grep[4] in line:
            file_data.append(float(ll[-1])) #"{:.7e}".format(float(ll[-1]))
        elif grep[5] in line:
            file_data.append(int(ll[7]))            
        elif grep[6] in line:
            file_data.append(float(ll[2])) 
        elif grep[7] in line:
            file_data.append(float(ll[-1]))  
    fd.close()
    return file_data

def digitize(item):
    if '.' in item:
        item.replace('.', '', 1).isdigit()
        return float(item)
    elif item.isdigit():
        return int(item)
    else:
        return

def map_create(keywords, save_order):
    if(len(keywords) != len(save_order)):
        print('Error! {} and {} must be same size'.format(keywords, save_order))
        sys.exit(1)
    k2o =OrderedDict()
    for i in range(len(save_order)):
        k2o[keywords[i]] = save_order.index(save_order[i])   
    return k2o


if __name__ == "__main__":

    folder_name = 'log_files'
    filename_ext = '.log'
    #idx: 0   1   2      3     4  5 6 7  8  9  10  11
    #    293_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log
    keep_idx = [3,5,7,11]

    logfile_keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', \
                        'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
    #line containing ./elasticity has number of processors
     
    appCtx=AppCtx()
    #filename atributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_linE #function pointer
    
    #file content atributes for appCtx
    appCtx.parse_file_content = parse_file_content_linE #function pointer
    appCtx.logfile_keywords = logfile_keywords
    #parse files
    filenames_data , files_data = parse_log_files(folder_name, appCtx)

    
    df_vals = np.concatenate((filenames_data , files_data), axis=1)
 
    # re-order columns (personal preference)
    #  0    1     2    3        4               5                        6                 7                 8           9                10            11
    #['nu','deg','h','run', 'Global nodes','Total KSP Iterations', 'SNES Solve Time', 'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
    df_order = [0,1,2,8,11,10,6,5,4,7,9,3];
    df_vals = df_vals[:,df_order]
    df_cols = ['nu', 'p', 'h', 'L2 Error', 'Total Time(s)', 'Petsc Time(s)', 'Solve Time(s)', '#CG', '#DoF', 'MDoFs/Sec', 'np', 'run']
    #create Dof from 'Global nodes'
    df_vals[:,8] *= 3
    
    df = pd.DataFrame(df_vals, columns = df_cols)
    pd.set_option("display.max_rows", None, "display.max_columns", None, 'display.width', None, 'display.max_colwidth', -1)

    df = df.sort_values(["np", "nu", "p", "h", "run"], ascending = (True, True,True,True,True))

    #df.to_csv(r'data.csv', index = False, header=True)
    

    
