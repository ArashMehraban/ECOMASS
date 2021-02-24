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

    df = df.sort_values(["np", "nu", "p", "h", "run"], ascending = (True, True,True,True,True))

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

#3D plots are NOT appropriate for this study
def plot_linE_noether_3D(df):
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

    num_nps = np.unique(df['np'])
    nps = [np1, np4, np16, np32, np64]

    plt_marker = ['p', '*' , 'o', '^' , 'x']
    plt_linestyle = ['--g','--r', '--b','--k', '--m' ]
    plt_color = ['g','r', 'b','k', 'm' ]
    #fig = plt.figure()
    
    # FOR nu = 0.3 & error :10^(-4)       
    ax = fig.add_subplot(2, 2, 1, projection='3d')
    for i in range(len(nps)):
        h = df.where((nps[i] & nu3 & err_4))['h'].dropna()
        p = df.where((nps[i] & nu3 & err_4))['p'].dropna()
        t = df.where((nps[i] & nu3 & err_4))['Total Time(s)'].dropna()
        #surf = ax.plot(p, h, t, plt_linestyle[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        scat = ax.scatter(p,h,t, c=plt_color[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        ax.set_xlabel('poly order')
        ax.set_ylabel('h')        
        ax.set_zlabel('Time(s)')
        ax.set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
        #ax.set_title(r'$\nu = 0.3$')
        ax.legend(loc="upper left", title='L$^2$ Error: 10$^{-4}$', shadow=True)

    # FOR nu = 0.3 & error :10^(-5)       
    ax = fig.add_subplot(2, 2, 2, projection='3d')
    for i in range(len(nps)):
        h = df.where((nps[i] & nu3 & err_5))['h'].dropna()
        p = df.where((nps[i] & nu3 & err_5))['p'].dropna()
        t = df.where((nps[i] & nu3 & err_5))['Total Time(s)'].dropna()
        #surf = ax.plot(p, h, t, plt_linestyle[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        scat = ax.scatter(p,h,t, c=plt_color[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        ax.set_xlabel('poly order')
        ax.set_ylabel('h')        
        ax.set_zlabel('Time(s)')
        ax.set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
        #ax.set_title(r'$\nu = 0.3$')
        ax.legend(loc="upper left", title='L$^2$ Error: 10$^{-5}$', shadow=True)

    # FOR nu = 0.3 & error :10^(-6)       
    ax = fig.add_subplot(2, 2, 3, projection='3d')
    for i in range(len(nps)):
        h = df.where((nps[i] & nu3 & err_6))['h'].dropna()
        p = df.where((nps[i] & nu3 & err_6))['p'].dropna()
        t = df.where((nps[i] & nu3 & err_6))['Total Time(s)'].dropna()
        #surf = ax.plot(p, h, t, plt_linestyle[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        scat = ax.scatter(p,h,t, c=plt_color[i], label="np = {}".format(num_nps[i]), marker=plt_marker[i])
        ax.set_xlabel('poly order')
        ax.set_ylabel('h')        
        ax.set_zlabel('Time(s)')
        ax.set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
        #ax.set_title(r'$\nu = 0.3$')
        ax.legend(loc="upper left", title='L$^2$ Error: 10$^{-6}$', shadow=True)

    fig.suptitle(r'$\nu = 0.3$')
    plt.show()
##    #Best time for 10^(-4)
##    df4 = df.where((nu3 & err_4)).dropna()
##    print(df.where(df4['Total Time(s)'] == df4['Total Time(s)'].min()).dropna())
##
##   # df = df.                              .sort_values(["np", "nu", "p", "h", "run"], ascending = (True, True,True,True,True))
##    dftt = df.where((nu3 & err_4)).dropna().sort_values(['Total Time(s)'], ascending = (True))
##    print(dftt)



def plot_linE_noether_2D(df):
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

    nps = [np1, np4, np16, np32, np64]

    proc=[1,4,16,32,64]
    pComp = [p1,p2,p3,p4]
    pIncomp = [p2,p3,p4]

    legend_elements = [Line2D([0], [0], marker='p', label='p1',markersize=10),
                       Line2D([0], [0], marker='*', label='p2',markersize=10),
                       Line2D([0], [0], marker='o', label='p3',markersize=10),
                       Line2D([0], [0], marker='^', label='p4',markersize=10),
                       Line2D([0], [0], marker='s', color='k', label='1 cpu'),
                       Line2D([0], [0], marker='s', color='b', label='4 cpu'),
                       Line2D([0], [0], marker='s', color='r', label='16 cpu'),
                       Line2D([0], [0], marker='s', color='g', label='32 cpu'),
                       Line2D([0], [0], marker='s', color='orange', label='64 cpu'),] 
                # p1   p2    p3   p4
    plt_marker = ['p', '*' , 'o', '^']    
    plt_color = ['k', 'b', 'r', 'g', 'orange']
    fig, ax = plt.subplots(2,2)
    for i in range(len(pComp)):
        for j in range(len(nps)):
            h = df.where((nu3 & pComp[i] & nps[j] & err_4))['h'].dropna()
            t = df.where((nu3 & pComp[i] & nps[j] & err_4))['Total Time(s)'].dropna()          
            ax[0][0].scatter(h, t, c=plt_color[j], marker=plt_marker[i]) #, label=pl_label) #"p{}".format(i+1))
            ax[0][0].set_ylabel('Time(s)')
            ax[0][0].set_xlabel('h')
            ax[0][0].set_title(r'$\nu = 0.3$')
            ax[0][0].legend(ncol=10, handles=legend_elements, loc="upper center", bbox_to_anchor=(1.1, 1.25), shadow=True)
            #ax[0][0].legend( ncol=4, handleheight=0.5, labelspacing=0.05, loc="upper center", bbox_to_anchor=(1.1, 1.25), shadow=True)

    for i in range(len(pIncomp)):
        for j in range(len(nps)):
            h = df.where((nu49 & pIncomp[i] & nps[j] & err_4))['h'].dropna()
            t = df.where((nu49 & pIncomp[i] & nps[j] & err_4))['Total Time(s)'].dropna()          
            ax[0][1].scatter(h, t, c=plt_color[j], marker=plt_marker[i+1]) 
            ax[0][1].set_ylabel('Time(s)')
            ax[0][1].set_xlabel('h')
            ax[0][1].set_title(r'$\nu = 0.49$')

    for i in range(len(pIncomp)):
        for j in range(len(nps)):
            h = df.where((nu49999 & pIncomp[i] & nps[j] & err_4))['h'].dropna()
            t = df.where((nu49999 & pIncomp[i] & nps[j] & err_4))['Total Time(s)'].dropna()          
            ax[1][0].scatter(h, t, c=plt_color[j], marker=plt_marker[i+1]) 
            ax[1][0].set_ylabel('Time(s)')
            ax[1][0].set_xlabel('h')
            ax[1][0].set_title(r'$\nu = 0.49999$')
            
    for i in range(len(pIncomp)):
        for j in range(len(nps)):
            h = df.where((nu499999 & pIncomp[i] & nps[j] & err_4))['h'].dropna()
            t = df.where((nu499999 & pIncomp[i] & nps[j] & err_4))['Total Time(s)'].dropna()          
            ax[1][1].scatter(h, t, c=plt_color[j], marker=plt_marker[i+1]) 
            ax[1][1].set_ylabel('Time(s)')
            ax[1][1].set_xlabel('h')
            ax[1][1].set_title(r'$\nu = 0.499999$')
    manager = plt.get_current_fig_manager()
    #manager.resize(*manager.window.maxsize())
    
    figure = plt.gcf()  # get current figure
    figure.set_size_inches(32, 18) # set figure's size manually to your full screen (32x18)
    plt.show()

    plt.savefig('hp.eps', format='eps')
        
    
    

##    P_i_nu_3 = []
##    err_i_nu_3 = []
##    tot_time_i_nu_3 = []
##    for i in range(len(pComp_filter)):
##        h_p_i_nu3_np64 = df.where((np64 & nu3 & pComp_filter[i]))['h'].dropna()
##        P_i_nu_3.append(df.where((np64 & nu3 & h_p_i_nu3_np64))['p'].dropna())
##        err_i_nu_3.append(df.where((np64 & nu3 & pComp_filter[i]))['L2 Error'].dropna())
##        tot_time_i_nu_3.append(df.where((np64 & nu3 & pComp_filter[i]))['Total Time(s)'].dropna())
##  
##                # p1   p2    p3   p4
##    plt_marker = ['s', '*' , 'o', '^'] 
##    plt_linestyle = ['g','r', 'b','k' ]
##    
##    plt_color = ['orange','b','r','g','b','k' ]
##    fig, ax = plt.subplots(2,2)
##    for i in range(len(pComp_filter)):
##        h = df.where((nu3, pComp_filter[i], nps[i] & err_4))['h'].dropna()
##        ax[0][0].scatter(P_i_nu_3[i], err_i_nu_3[i], c=plt_color[i], marker=plt_marker[i], label="p{}".format(i+1))
##        ax[0][0].set_ylabel('Time(s)')
##        ax[0][0].set_xlabel('h')
##        ax[0][0].set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
##        ax[0][0].set_title(r'$\nu = 0.3$')
##        ax[0][0].legend(loc="upper right", shadow=True)
##
##    pIncomp_filter = [p2,p3,p4]
##
##    P_i_nu_49 = []
##    err_i_nu_49 = []
##    tot_time_i_nu_49 = []
##    for i in range(len(pIncomp_filter)):
##        h_p_i_nu49_np64 = df.where((np64 & nu49 & pIncomp_filter[i]))['h'].dropna()
##        P_i_nu_49.append(df.where((np64 & nu49 & h_p_i_nu49_np64))['p'].dropna())
##        err_i_nu_49.append(df.where((np64 & nu49 & pIncomp_filter[i]))['L2 Error'].dropna())
##        tot_time_i_nu_49.append(df.where((np64 & nu49 & pIncomp_filter[i]))['Total Time(s)'].dropna())
##  
##    for i in range(len(P_i_nu_49)):
##        ax[0][1].semilogy(P_i_nu_49[i], err_i_nu_49[i], plt_linestyle[i+1], marker=plt_marker[i+1], label="p{}".format(i+2))
##        ax[0][1].set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
##        ax[0][1].set_title(r'$\nu = 0.49$')
##        ax[0][1].legend(loc="upper right", shadow=True)
##
##    P_i_nu_49999 = []
##    err_i_nu_49999 = []
##    tot_time_i_nu_49999 = []
##    for i in range(len(pIncomp_filter)):
##        h_p_i_nu49999_np64 = df.where((np64 & nu49999 & pIncomp_filter[i]))['h'].dropna()
##        P_i_nu_49999.append(df.where((np64 & nu49999 & h_p_i_nu49999_np64))['p'].dropna())
##        err_i_nu_49999.append(df.where((np64 & nu49999 & pIncomp_filter[i]))['L2 Error'].dropna())
##        tot_time_i_nu_49999.append(df.where((np64 & nu49999 & pIncomp_filter[i]))['Total Time(s)'].dropna())
##  
##    for i in range(len(P_i_nu_49999)):
##        ax[1][0].semilogy(P_i_nu_49999[i], err_i_nu_49999[i], plt_linestyle[i+1], marker=plt_marker[i+1], label="p{}".format(i+2))
##        ax[1][0].set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
##        ax[1][0].set_ylabel('L2 Error')
##        ax[1][0].set_xlabel('poly order')
##        ax[1][0].set_title(r'$\nu = 0.49999$')
##        ax[1][0].legend(loc="upper right", shadow=True)
##
##    P_i_nu_499999 = []
##    err_i_nu_499999 = []
##    tot_time_i_nu_499999 = []
##    for i in range(len(pIncomp_filter)):
##        h_p_i_nu499999_np64 = df.where((np64 & nu499999 & pIncomp_filter[i]))['h'].dropna()
##        P_i_nu_499999.append(df.where((np64 & nu499999 & h_p_i_nu499999_np64))['p'].dropna())
##        err_i_nu_499999.append(df.where((np64 & nu499999 & pIncomp_filter[i]))['L2 Error'].dropna())
##        tot_time_i_nu_499999.append(df.where((np64 & nu499999 & pIncomp_filter[i]))['Total Time(s)'].dropna())
##  
##    for i in range(len(P_i_nu_499999)):
##        ax[1][1].semilogy(P_i_nu_499999[i], err_i_nu_499999[i], plt_linestyle[i+1], marker=plt_marker[i+1], label="p{}".format(i+2))
##        ax[1][1].set_xticks([0, 1, 2, 3, 4, 5], ['1', '2','3','4','5'])
##        ax[1][1].set_xlabel('poly order')
##        ax[1][1].set_title(r'$\nu = 0.499999$')
##        ax[1][1].legend(loc="upper right", shadow=True)

##    #fig.suptitle('Polynomial order vs. $L^2$ Error on 64 processors')
##    plt.savefig('pVSerr.eps', format='eps')
##    manager = plt.get_current_fig_manager()
##    manager.resize(*manager.window.maxsize())
##    plt.show()
##    figure = plt.gcf()  # get current figure
##    figure.set_size_inches(32, 18) # set figure's size manually to your full screen (32x18)
##    plt.savefig('pVSerr.png', bbox_inches='tight')
##    plt.savefig('pVSerr.eps', format='eps')

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



def create_hp_tables(df):
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

    nps = [np1, np4, np16, np32, np64]

    print('For nu = 0.3, errors: 1e-4, 1e-5, 1e-6--------------------------')
    pComp = [p1, p2,p3,p4]    
    compErrors = [err_4,err_5,err_6]
    for err in compErrors:
        #time and work for nu3 for all polys
        nu3_time = []
        nu3_work = []
        for p in pComp:
            for proc in nps:
                t = df.where((nu3 & p & proc & err))['Total Time(s)'].dropna()
                wnpt = df.where((nu3 & p & proc & err))['np'].dropna()
                if t.empty:
                    nu3_time.append(1000000)
                    nu3_work.append(1000000)
                else:
                    work = t*wnpt
                    nu3_time.append(min(t))
                    nu3_work.append(min(work))

        nu3_time = np.array(nu3_time)
        nu3_work = np.array(nu3_work)
        pvals = [1,2,3,4]
        psz = len(pvals)
        np_vals = [1,4,16,32,64]
        npsz = len(np_vals)
        np_dict = {}
        for i in range(len(np_vals)):
            np_dict[i] = np_vals[i]
        nu3_table = []
        for i in range(psz):
            tmp_t = nu3_time[i*npsz:(i+1)*npsz]
            tmp_w = nu3_work[i*npsz:(i+1)*npsz]
            nu3_table.append(min(tmp_t))
            nu3_table.append(np_dict[tmp_t.argmin(axis=None)])
            nu3_table.append(min(tmp_w))
            nu3_table.append(np_dict[tmp_w.argmin(axis=None)])

        nu3_table = np.array(nu3_table)
        nu3_table = np.reshape(nu3_table, (-1,4))
        #np.set_printoptions(formatter={'float': lambda x: "{0:0.2f}".format(x)})

        df_nu3_cols = ['Min Time(s)', 'Min Time #Procs', 'Min Work(s)', 'Min Work #Procs' ]
        df_nu3 = pd.DataFrame(nu3_table, columns = df_nu3_cols)
        df_nu3['Min Time #Procs'] = df_nu3['Min Time #Procs'].astype(int)
        df_nu3['Min Work #Procs' ] = df_nu3['Min Work #Procs' ].astype(int)
        df_nu3['Min Time(s)'] = df_nu3['Min Time(s)'] #.apply(lambda x: round(x, 2))
        df_nu3['Min Work(s)'] = df_nu3['Min Work(s)'] #.apply(lambda x: round(x, 2))
        print(df_nu3.to_latex())

    errMsg = ['1e-4', '1e-5', '1e-6']
    print('For nu = 0.49, errors: 1e-4, 1e-5, 1e-6--------------------------')
    pInComp = [p2,p3,p4]    
    incompErrors = [err_4,err_5,err_6]
    for err in incompErrors:
        #time and work for nu3 for all polys
        nu3_time = []
        nu3_work = []
        for p in pInComp:
            for proc in nps:
                t = df.where((nu49 & p & proc & err))['Total Time(s)'].dropna()
                wnpt = df.where((nu49 & p & proc & err))['np'].dropna()
                if t.empty:
                    nu3_time.append(1000000)
                    nu3_work.append(1000000)
                else:
                    work = t*wnpt
                    nu3_time.append(min(t))
                    nu3_work.append(min(work))

        nu3_time = np.array(nu3_time)
        nu3_work = np.array(nu3_work)
        pvals = [2,3,4]
        psz = len(pvals)
        np_vals = [1,4,16,32,64]
        npsz = len(np_vals)
        np_dict = {}
        for i in range(len(np_vals)):
            np_dict[i] = np_vals[i]
        nu3_table = []
        for i in range(psz):
            tmp_t = nu3_time[i*npsz:(i+1)*npsz]
            tmp_w = nu3_work[i*npsz:(i+1)*npsz]
            nu3_table.append(min(tmp_t))
            nu3_table.append(np_dict[tmp_t.argmin(axis=None)])
            nu3_table.append(min(tmp_w))
            nu3_table.append(np_dict[tmp_w.argmin(axis=None)])

        nu3_table = np.array(nu3_table)
        nu3_table = np.reshape(nu3_table, (-1,4))
        #np.set_printoptions(formatter={'float': lambda x: "{0:0.2f}".format(x)})

        df_nu3_cols = ['Min Time(s)', 'Min Time #Procs', 'Min Work(s)', 'Min Work #Procs' ]
        df_nu3 = pd.DataFrame(nu3_table, columns = df_nu3_cols)
        df_nu3['Min Time #Procs'] = df_nu3['Min Time #Procs'].astype(int)
        df_nu3['Min Work #Procs' ] = df_nu3['Min Work #Procs' ].astype(int)
        df_nu3['Min Time(s)'] = df_nu3['Min Time(s)'] #.apply(lambda x: round(x, 2))
        df_nu3['Min Work(s)'] = df_nu3['Min Work(s)'] #.apply(lambda x: round(x, 2))
        print(df_nu3.to_latex())

    print('\n')
    
    print('For nu = 0.49999 & nu = 0.499999, errors: 1e-4, 1e-5--------------------------')
    nuIncomp = [nu49999, nu499999]
    pInComp = [p2,p3,p4]    
    incompErrors = [err_4,err_5]
    for nu in nuIncomp:
        for err in incompErrors:
            #time and work for nu3 for all polys
            nu3_time = []
            nu3_work = []
            for p in pInComp:
                for proc in nps:
                    t = df.where((nu & p & proc & err))['Total Time(s)'].dropna()
                    wnpt = df.where((nu & p & proc & err))['np'].dropna()
                    if t.empty:
                        nu3_time.append(1000000)
                        nu3_work.append(1000000)
                    else:
                        work = t*wnpt
                        nu3_time.append(min(t))
                        nu3_work.append(min(work))

            nu3_time = np.array(nu3_time)
            nu3_work = np.array(nu3_work)
            pvals = [2,3,4]
            psz = len(pvals)
            np_vals = [1,4,16,32,64]
            npsz = len(np_vals)
            np_dict = {}
            for i in range(len(np_vals)):
                np_dict[i] = np_vals[i]
            nu3_table = []
            for i in range(psz):
                tmp_t = nu3_time[i*npsz:(i+1)*npsz]
                tmp_w = nu3_work[i*npsz:(i+1)*npsz]
                nu3_table.append(min(tmp_t))
                nu3_table.append(np_dict[tmp_t.argmin(axis=None)])
                nu3_table.append(min(tmp_w))
                nu3_table.append(np_dict[tmp_w.argmin(axis=None)])

            nu3_table = np.array(nu3_table)
            nu3_table = np.reshape(nu3_table, (-1,4))
            #np.set_printoptions(formatter={'float': lambda x: "{0:0.2f}".format(x)})

            df_nu3_cols = ['Min Time(s)', 'Min Time #Procs', 'Min Work(s)', 'Min Work #Procs' ]
            df_nu3 = pd.DataFrame(nu3_table, columns = df_nu3_cols)
            df_nu3['Min Time #Procs'] = df_nu3['Min Time #Procs'].astype(int)
            df_nu3['Min Work #Procs' ] = df_nu3['Min Work #Procs' ].astype(int)
            df_nu3['Min Time(s)'] = df_nu3['Min Time(s)']#.apply(lambda x: round(x, 2))
            df_nu3['Min Work(s)'] = df_nu3['Min Work(s)']#.apply(lambda x: round(x, 2))
            print(df_nu3.to_latex())

    
    


    

if __name__ == "__main__":

    folder_name = 'log_files'
    #folder_name = 'log_files_linE_cpus_1_and_4_small_meshes'
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

    #Does not look good
    #plot_linE_noether_3D(df)

    #plot_linE_noether_2D(df)
    #print(df)
    create_hp_tables(df)

    

    
    

    

    


    #df.to_csv(r'data.csv', index = False, header=True)
    

    
