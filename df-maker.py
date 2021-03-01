import os
import sys
import pandas as pd
import numpy as np
from collections import OrderedDict
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib.lines import Line2D

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

    filenames_data = []
    if(appCtx.parse_filename):
        #extract data from filenames
        parse_filename = appCtx.parse_filename #function pointer
        for filename in filenames:
            filenames_data.append(parse_filename(filename,appCtx))
    
    #change directory to where log files are
    os.chdir(os.path.join(os.getcwd(),folder_name))

    #extract data from file contents
    files_data = []
    if(appCtx.parse_file_content):
        parse_file_content = appCtx.parse_file_content #function pointer
        for filename in filenames:
            files_data.append(parse_file_content(filename, appCtx)) 

    #change durectory back to where you were
    os.chdir("..")

    #return as numpy array
    return np.array(filenames_data), np.array(files_data)

def parse_filename_linE_noether(filename,appCtx):
    ext_sz = len(appCtx.filename_ext)
    f = filename[:-ext_sz].split('_')
    data = [] 
    for i in range(len(f)):
        if i in appCtx.keep_idx:
            if f[i].isdigit() or f[i].replace('.', '', 1).isdigit():
                data.append(digitize(f[i]))
    return data

def parse_file_content_linE_noether(filename, appCtx):
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
    if len(file_data) < len(grep):
        print(filename)
    fd.close()
    return file_data

def create_df_linE_noether(filenames_data , files_data):
    df_vals = np.concatenate((filenames_data , files_data), axis=1)
 
    # re-order columns (personal preference)
    #  0    1     2    3        4               5                        6                 7                 8           9                10            11
    #['nu','deg','h','run', 'Global nodes','Total KSP Iterations', 'SNES Solve Time', 'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
    df_order = [0,1,2,8,11,10,6,5,4,7,9,3];
    df_vals = df_vals[:,df_order]
    #rename columns
    df_cols = ['nu', 'p', 'h', 'L2 Error', 'Total Time(s)', 'Petsc Time(s)', 'Solve Time(s)', '#CG', '#DoF', 'MDoFs/Sec', 'np', 'run']

    #create DoF from 'Global nodes'
    df_vals[:,8] *= 3
    
    df = pd.DataFrame(df_vals, columns = df_cols)
    pd.set_option("display.max_rows", None, "display.max_columns", None, 'display.width', None, 'display.max_colwidth', -1)

    df = df.sort_values(['np', 'nu', 'p', 'h', 'run'], ascending = (True, True,True,True,True))

    repeat = 3
    df_tmp = df.to_numpy()
    r,c = df_tmp.shape

    df_np_vals = np.zeros((int(r/repeat), int(c-1)))
    k=0
    for i in range(0,r,repeat):
        for j in range(repeat):
            df_np_vals[k] += (df_tmp[i+j,0:-1])/repeat 
        k=k+1

    df_np_cols = df_cols[0:-1] #drop 'run' column
    #create a final dataframe to return
    dff = pd.DataFrame(df_np_vals, columns = df_np_cols)

    dff["p"] = dff["p"].astype(int)
    dff["h"] = dff["h"].astype(int)
    dff["#CG"] = dff["#CG"].astype(int)
    dff["#DoF"] = dff["#DoF"].astype(int)
    dff["np"] = dff["np"].astype(int)
    return dff

def digitize(item):
    if '.' in item:
        item.replace('.', '', 1).isdigit()
        return float(item)
    elif item.isdigit():
        return int(item)
    else:
        return
        
  
def plot_conv_2D(df):
    #filters:
    #p 
    p1 = df['p']==1
    p2 = df['p']==2
    p3 = df['p']==3
    p4 = df['p']==4
    
    #err_4 means error with the order of 10^(-4) 
    err_4 = ((df['L2 Error'] < 1e-3) & (df['L2 Error'] > 1e-4))
    #err_5 means error with the order of 10^(-5)
    err_5 = ((df['L2 Error'] < 1e-4) & (df['L2 Error'] > 1e-5))
    #err_5 means error with the order of 10^(-6)
    err_6 = ((df['L2 Error'] < 1e-5) & (df['L2 Error'] > 1e-6))

    hp1 = df.where((p1))['h'].dropna().to_numpy()
    ep1 = df.where((p1))['L2 Error'].dropna().to_numpy()
    hp2 = df.where((p2))['h'].dropna().to_numpy()
    ep2 = df.where((p2))['L2 Error'].dropna().to_numpy()
    hp3 = df.where((p3))['h'].dropna().to_numpy()
    ep3 = df.where((p3))['L2 Error'].dropna().to_numpy()
    hp4 = df.where((p4))['h'].dropna().to_numpy()
    ep4 = df.where((p4))['L2 Error'].dropna().to_numpy()

    print('slope for p1 by truncating superlinear data:')
    s,bb = lin_reg_fit(np.log10(1./hp1[-6:-1]), np.log10(ep1[-6:-1]))
    print(s)

    hs= [hp1,hp2,hp3,hp4]
    errs = [ep1,ep2,ep3,ep4]

    plt_marker = [ '*','o', '^', 'p']
    plt_linestyle = ['.g','.r', '.b', '.k']
    for i in range(len(errs)):
        plt.loglog(1.0/hs[i], errs[i], plt_linestyle[i], marker=plt_marker[i], label='p{}'.format(i+1))
        if i == 0:
            continue
        else:
            print('slope for p{} based on all data:'.format(i+1))
            m , b = lin_reg_fit(np.log10(1.0/hs[i]),np.log10(errs[i]))
            print(m)
 
    plt.title('Error vs. h where h = 1/n')
    plt.legend(ncol = 2, loc="upper left", shadow=True)
    plt.xlabel('h')
    plt.ylabel('Error', rotation=90)
    plt.savefig('conv.eps', format='eps')
    plt.savefig('conv.png')
    #plt.show()


def lin_reg_fit(x,y):

    if x.shape != y.shape:
        print('input size mismatch')
    else:
        n = x.size
    xy = x * y
    x_sq = x**2
    sum_x = np.sum(x)
    sum_y = np.sum(y)
    sum_xy = np.sum(x*y)
    sum_x_sq = np.sum(x_sq)
    #slope
    m = (n * sum_xy - sum_x * sum_y) /(n * sum_x_sq - sum_x**2)
    #b
    b = (sum_y - m * sum_x) / n
    return m, b

def run_conv():
    folder_name = 'convergence'
    filename_ext = '.log'
    #idx: 0   1   2      3     4  5 6 7  8  9  10  11
    #    293_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log
    keep_idx = [3,5,7,11]

    logfile_keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', \
                        'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
                                        #line containing ./elasticity has number of processors
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_linE_noether #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_linE_noether #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)   
    #create a dataframe
    df = create_df_linE_noether(filenames_data , files_data)
    plot_conv_2D(df)

def plot_time_err(df):
    #filters:
    #p 
    p1 = df['p']==1
    p2 = df['p']==2
    p3 = df['p']==3
    p4 = df['p']==4
    # np (num processors)
    np1 = df['np']== 1
    np4 = df['np']== 4
    np16 = df['np']==16
    np32 = df['np']==32
    np64 = df['np']==64
    # nu
    nu3 = df['nu']==0.3
    nu49 = df['nu']==0.49
    nu49999 = df['nu']==0.49999
    nu499999 = df['nu']>(0.49999) #For some reason nu499999 = df['nu']==0.499999 does not work!
    #
    #err_4 means error with the order of 10^(-4) 
    err_4 = ((df['L2 Error'] < 1e-3) & (df['L2 Error'] > 1e-4))
    #err_5 means error with the order of 10^(-5)
    err_5 = ((df['L2 Error'] < 1e-4) & (df['L2 Error'] > 1e-5))
    #err_5 means error with the order of 10^(-6)
    err_6 = ((df['L2 Error'] < 1e-5) & (df['L2 Error'] > 1e-6))

    #np
    nps = [np1, np4, np16, np32, np64]

    #We have err_4, err_5 and err_6 for nu = 0.3 and nu = 0.49
    err_nu_comp = [err_4,err_5,err_6]    

    proc=[1,4,16,32,64]
    pComp = [p1,p2,p3,p4]
    
    legend_elements = [Line2D([0], [0], marker='s', color='k', label='p1'),
                       Line2D([0], [0], marker='s', color='b', label='p2'),
                       Line2D([0], [0], marker='s', color='r', label='p3'),
                       Line2D([0], [0], marker='s', color='g', label='p4'),
                       Line2D([0], [0], marker='p', label='1 cpu', markersize=10),
                       Line2D([0], [0], marker='*', label='4 cpu', markersize=10),
                       Line2D([0], [0], marker='o', label='16 cpu', markersize=10),
                       Line2D([0], [0], marker='^', label='32 cpu', markersize=10),
                       Line2D([0], [0], marker='8', label='64 cpu', markersize=10)]

    #We'd plot accuracy versus time on a log-log chart with color for degree and marker size for number of cores.
    
                
    plt_marker = ['p', '*' , 'o', '^', '8']
                # p1   p2    p3   p4
    plt_color = ['k', 'b', 'r', 'g'] 
    fig, ax = plt.subplots(2,2)
    for err in err_nu_comp:
        for i in range(len(pComp)):
            for j in range(len(nps)):
                tt = df.where((nu3 & pComp[i] & nps[j] & err))['Total Time(s)'].dropna()
                ee = df.where((nu3 & pComp[i] & nps[j] & err))['L2 Error'].dropna()
                ax[0][0].loglog(tt, ee, c=plt_color[i], marker=plt_marker[j]) 
                ax[0][0].set_ylabel('Error')
                #ax[0][0].set_xlabel('Time(s)')
                ax[0][0].set_title(r'$\nu = 0.3$')
                ax[0][0].legend(ncol=10, handles=legend_elements, loc="upper center", bbox_to_anchor=(1.1, 1.25), shadow=True)

    #We have err_4 and err_5 for nu = 0.49999 and nu = 0.499999
    err_nu_incomp = [err_4,err_5]
    pIncomp = [p2,p3,p4]
    for err in err_nu_incomp:
        for i in range(len(pIncomp)):
            for j in range(len(nps)):
                tt = df.where((nu49 & pIncomp[i] & nps[j] & err))['Total Time(s)'].dropna()
                ee = df.where((nu49 & pIncomp[i] & nps[j] & err))['L2 Error'].dropna()
                ax[0][1].loglog(tt, ee, c=plt_color[i], marker=plt_marker[j]) 
                ax[0][1].set_ylabel('Error')
                #ax[0][1].set_xlabel('Time(s)')
                ax[0][1].set_title(r'$\nu = 0.49$')

    for err in err_nu_incomp:
        for i in range(len(pIncomp)):
            for j in range(len(nps)):
                tt = df.where((nu49999 & pIncomp[i] & nps[j] & err))['Total Time(s)'].dropna()
                ee = df.where((nu49999 & pIncomp[i] & nps[j] & err))['L2 Error'].dropna()
                ax[1][0].loglog(tt, ee, c=plt_color[i], marker=plt_marker[j]) 
                ax[1][0].set_ylabel('Error')
                ax[1][0].set_xlabel('Time(s)')
                ax[1][0].set_title(r'$\nu = 0.49999$')

    for err in err_nu_incomp:
        for i in range(len(pIncomp)):
            for j in range(len(nps)):
                tt = df.where((nu499999 & pIncomp[i] & nps[j] & err))['Total Time(s)'].dropna()
                ee = df.where((nu499999 & pIncomp[i] & nps[j] & err))['L2 Error'].dropna()
                ax[1][1].loglog(tt, ee, c=plt_color[i], marker=plt_marker[j]) 
                ax[1][1].set_ylabel('Error')
                ax[1][1].set_xlabel('Time(s)')
                ax[1][1].set_title(r'$\nu = 0.499999$')
 
    figure = plt.gcf()  # get current figure
    figure.set_size_inches(32, 18) # set figure's size manually to your full screen (32x18)
    plt.show()

##  plt.savefig('hp.eps', format='eps')

def run_time_err():
    folder_name = 'log_files'
    filename_ext = '.log'
    #idx: 0   1   2      3     4  5 6 7  8  9  10  11
    #    293_linE_nu_0.499999_deg_3_h_8_cpu_64_run_3.log
    keep_idx = [3,5,7,11]

    logfile_keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', \
                        'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
                                        #line containing ./elasticity has number of processors
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_linE_noether #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_linE_noether #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)   
    #create a dataframe
    df = create_df_linE_noether(filenames_data , files_data)
    plot_time_err(df)
    
       

if __name__ == "__main__":

    #convergence plot
    #run_conv()
    # Jed's requested plot
    run_time_err()

    
    


    

    
