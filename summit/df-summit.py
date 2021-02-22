import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt 

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

def parse_filename_summit(filename,appCtx):
    ext_sz = len(appCtx.filename_ext)
    f = filename[:-ext_sz].split('_')
    data = []
    data.append('0.' + f[4][2:])
    data.append(f[3][3:])                
    return data

def parse_file_content_summit(filename,appCtx):
    grep = appCtx.logfile_keywords
    file_data = []
    fd = open(filename, 'r')
    lines = fd.readlines()
    for line in lines:
        ll = line.strip().split()
        if grep[0] in line:
            file_data.append(int(ll[-1]))
        elif grep[1] in line:
            file_data.append(int(ll[-1][11:]))
        elif grep[2] in line:
            file_data.append(float(ll[-3])) 
        elif grep[3] in line:
            file_data.append(float(ll[-1])) #"{:.7e}".format(float(ll[-1]))
        elif grep[4] in line:
            file_data.append(int(ll[7]))            
    if len(file_data) < len(grep):
        print(filename)
    fd.close()
    return file_data

def create_df_summit(filenames_data , files_data):
    df_vals = np.concatenate((filenames_data , files_data), axis=1).astype(np.float)
    
    #create DoF from 'Global nodes'
    df_vals[:,2] *= 3
    
    #rename columns
    df_cols = ['nu', 'p' , '#DoF', '#CG', 'Solve Time(s)' , 'L2 Error', 'np']
    df = pd.DataFrame(df_vals, columns = df_cols)
    df["nu"] = df["nu"].astype(float)
    df["p"] = df["p"].astype(int)    
    df["#DoF"] = df["#DoF"].astype(int)
    df["#CG"] = df["#CG"].astype(int)
    df["Solve Time(s)"] = df["Solve Time(s)"].astype(float)
    df["np"] = df["np"].astype(int)

    df = df.sort_values(["nu", "p"], ascending = (True, True))    
    pd.set_option("display.max_rows", None, "display.max_columns", None, 'display.width', None, 'display.max_colwidth', -1)
    return df

def plot_linE_mms_31K_summit(df):
    # nu
    nu3 = df['nu']==0.3
    nu49 = df['nu']==0.49
    nu49999 = df['nu']==0.49999
    nu499999 = df['nu']>(0.49999) #For some reason nu499999 = df['nu']==0.499999 does not work!

    nu3_t = df.where((nu3))['Solve Time(s)'].dropna()
    nu3_err = df.where((nu3))['L2 Error'].dropna()

    nu49_t = df.where((nu49))['Solve Time(s)'].dropna()
    nu49_err = df.where((nu49))['L2 Error'].dropna()

    nu49999_t = df.where((nu49999))['Solve Time(s)'].dropna()
    nu49999_err = df.where((nu49999))['L2 Error'].dropna()

    nu499999_t = df.where((nu499999))['Solve Time(s)'].dropna()
    nu499999_err = df.where((nu499999))['L2 Error'].dropna()

    nus = np.unique(df['nu'])

    ts = [nu3_t, nu49_t, nu49999_t, nu499999_t]
    errs = [nu3_err, nu49_err, nu49999_err, nu499999_err]
    plt_marker = [ '*' , 'o', '^' , 'p']
    plt_linestyle = ['--g','--r', '--b','--k' ]
    for i in range(len(ts)):
        plt.loglog(ts[i], errs[i], plt_linestyle[i], marker=plt_marker[i], label="$\\nu$= {}".format(nus[i]))

    plt.title('Error vs. Time (loglog)')
    plt.legend(loc="upper right", shadow=True)
    plt.xlabel('Time(s)')
    plt.ylabel(r'$L^2$ Error')
    #plt.grid()
    plt.savefig('pVSerr.eps', format='eps')
    plt.show()
    plt.figure()


def mms_31K_summit():
    folder_name = 'mms_31K'
    filename_ext = '.log'
    #idx:  0     1   2    3   4  
    #     test_mms_31Ke_deg1_nu3.log
    keep_idx = [3,4]

    logfile_keywords = ['Global nodes','total number of linear solver iterations', \
                        'SNES Solve Time', 'L2 Error', './elasticity', ]
                         #line containing ./elasticity has number of processors
     
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_summit #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_summit #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)
   
    #create a dataframe
    df = create_df_summit(filenames_data , files_data)
  
    plot_linE_mms_31K_summit(df)


def parse_file_content_summit_bend(filename,appCtx):
    grep = appCtx.logfile_keywords
    file_data = []
    fd = open(filename, 'r')
    lines = fd.readlines()
    for line in lines:
        ll = line.strip().split()
        if grep[0] in line:
            file_data.append(int(ll[-1]))
        elif grep[1] in line:
            file_data.append(int(ll[-1][11:]))
        elif grep[2] in line:
            file_data.append(float(ll[-3])) 
        elif grep[3] in line:
            file_data.append(int(ll[7]))            
    if len(file_data) < len(grep):
        print(filename)
    fd.close()
    return file_data

def create_df_summit_bend(filenames_data , files_data):
    df_vals = np.concatenate((filenames_data , files_data), axis=1).astype(np.float)
    
    #create DoF from 'Global nodes'
    df_vals[:,2] *= 3
    
    #rename columns
    df_cols = ['nu', 'p' , '#DoF', '#CG', 'Solve Time(s)', 'np']
    df = pd.DataFrame(df_vals, columns = df_cols)
    df["nu"] = df["nu"].astype(float)
    df["p"] = df["p"].astype(int)    
    df["#DoF"] = df["#DoF"].astype(int)
    df["#CG"] = df["#CG"].astype(int)
    df["Solve Time(s)"] = df["Solve Time(s)"].astype(float)
    df["np"] = df["np"].astype(int)

    df = df.sort_values(["nu", "p", "np"], ascending = (True, True, True))    
    pd.set_option("display.max_rows", None, "display.max_columns", None, 'display.width', None, 'display.max_colwidth', -1)
    return df

def plot_linE_summit_bend_409K(df):
    #p
    p1 = df['p']==1
    p2 = df['p']==2
    p3 = df['p']==3
    p4 = df['p']==4
    # nu
    nu3 = df['nu']==0.3

    nu3_t_p1 = df.where((nu3 & p1))['Solve Time(s)'].dropna()
    nu3_t_p2 = df.where((nu3 & p2))['Solve Time(s)'].dropna()
    nu3_t_p3 = df.where((nu3 & p3))['Solve Time(s)'].dropna()
    nu3_t_p4 = df.where((nu3 & p4))['Solve Time(s)'].dropna()
    nu3_cp = df.where((nu3 & p1))['np'].dropna()

    million = 1000000
    nu3_dof = np.unique(df.where((nu3))['#DoF'].dropna())
    plt_dof = ['{0:.2f}'.format(item/million) for item in nu3_dof]       
   
    ts = [nu3_t_p1, nu3_t_p2, nu3_t_p3, nu3_t_p4]
    plt_marker = [ '*' , 'o', '^' , 'p']
    plt_linestyle = ['--g','--b' ,'--r','--k' ]
    k=0
    for item in ts:
        spdup = []
        for i in range(len(item)):
            spdup.append(item.iloc[0]/item.iloc[i])
        plt.plot(nu3_cp, spdup, plt_linestyle[k], marker=plt_marker[k], label="p{} : {}M DoFs".format(k+1, plt_dof[k]))
        k=k+1

    cg_min = df.where((nu3))['#CG'].min()
    cg_max = df.where((nu3))['#CG'].max()

    plt.title('Tube Bending: 409K Hex8 elements, $\\nu = 0.3$,  %d - %d CG iters' % (cg_min, cg_max))
    plt.legend(loc="upper left", shadow=True)
    plt.xlabel('#CPU cores (1 Compute Node = 24 CPU cores)')
    plt.ylabel('Speed-up')
    plt.xticks([0, 24, 48, 96, 192, 216], ['0', '24', '48', '96', '192', '216'])
    plt.grid()
    plt.savefig('strongScaling.eps', format='eps')
    plt.show()
    plt.figure()

def bend_409K_summit():
    folder_name = 'bend_409k'
    filename_ext = '.log'
    #idx:  0     1        2    3   4     5
    #     test_TubeBend_409Ke_deg1_nu3_1Node.log
    keep_idx = [3,4]

    keep_idx = [3,4]

    logfile_keywords = ['Global nodes','total number of linear solver iterations', \
                        'SNES Solve Time', './elasticity', ]
                         #line containing ./elasticity has number of processors
     
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_summit #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_summit_bend #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)
   
    #create a dataframe
    df = create_df_summit_bend(filenames_data , files_data)
  
    plot_linE_summit_bend_409K(df)

def plot_linE_summit_bend_weak(df):
     #p
    p1 = df['p']==1
    p2 = df['p']==2
    p3 = df['p']==3
    p4 = df['p']==4
    # nu
    nu3 = df['nu']==0.3

    nu3_t_p1 = df.where((nu3 & p1))['Solve Time(s)'].dropna()
    nu3_t_p2 = df.where((nu3 & p2))['Solve Time(s)'].dropna()
    nu3_t_p3 = df.where((nu3 & p3))['Solve Time(s)'].dropna()
    nu3_t_p4 = df.where((nu3 & p4))['Solve Time(s)'].dropna()
    nu3_cp = df.where((nu3 & p1))['np'].dropna()

    million = 1000000
    nu3_dof = np.unique(df.where((nu3))['#DoF'].dropna())
    plt_dof = ['{0:.2f}'.format(item/million) for item in nu3_dof]
   
    ts = [nu3_t_p1, nu3_t_p2, nu3_t_p3, nu3_t_p4]
    plt_marker = [ '*' , 'o', '^' , 'p']
    plt_linestyle = ['--g','--b' ,'--r','--k' ]
    k=0
    a=0
    for item in ts:
        spdup = []
        for i in range(len(item)):
            spdup.append(item.iloc[i]/item.iloc[0])
        plt.plot(nu3_cp, spdup, plt_linestyle[k], marker=plt_marker[k], label="p{}".format(k+1))
        k=k+1

    cg_min = df.where((nu3))['#CG'].min()
    cg_max = df.where((nu3))['#CG'].max()

    plt.title('Tube Bending: $\\nu = 0.3$,  %d - %d CG iters' % (cg_min, cg_max))
    plt.legend(loc="upper left", shadow=True)
    plt.xlabel('#CPU cores (1 Compute Node = 24 CPU cores)')
    plt.ylabel('Speed-up')
    plt.xticks([0, 24, 48, 96, 110], ['0', '24', '48', '96', '110'])
    plt.grid()
    plt.savefig('weakScaling.eps', format='eps')
    plt.show()
    plt.figure()


def bend_weak_summit():
    folder_name = 'weak'
    filename_ext = '.log'
    #idx:  0     1        2    3   4     5
    #     test_TubeBend_409Ke_deg1_nu3_1Node.log
    keep_idx = [3,4]

    keep_idx = [3,4]

    logfile_keywords = ['Global nodes','total number of linear solver iterations', \
                        'SNES Solve Time', './elasticity', ]
                         #line containing ./elasticity has number of processors
     
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_summit #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_summit_bend #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)
   
    #create a dataframe
    df = create_df_summit_bend(filenames_data , files_data)
  
    plot_linE_summit_bend_weak(df)


if __name__ == "__main__":

    mms_31K_summit()
    bend_409K_summit()
    bend_weak_summit()

    

    
    

    

    


    #df.to_csv(r'data.csv', index = False, header=True)
    

    
