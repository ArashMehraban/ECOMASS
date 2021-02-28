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

def parse_filename_linE_conv(filename,appCtx):
    ext_sz = len(appCtx.filename_ext)
    f = filename[:-ext_sz].split('_')
    data = [] 
    for i in range(len(f)):
        if i in appCtx.keep_idx:
            if f[i].isdigit() or f[i].replace('.', '', 1).isdigit():
                data.append(digitize(f[i]))
    return data

def parse_file_content_linE_conv(filename, appCtx):
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

def digitize(item):
    if '.' in item:
        item.replace('.', '', 1).isdigit()
        return float(item)
    elif item.isdigit():
        return int(item)
    else:
        return

def plot_linE_conv(df):

    p1 = df['p']==1
    p2 = df['p']==2
    p3 = df['p']==3
    p4 = df['p']==4

    err_p1 = df.where((p1))['L2 Error'].dropna()
    err_p2 = df.where((p2))['L2 Error'].dropna()
    err_p3 = df.where((p3))['L2 Error'].dropna()
    err_p4 = df.where((p4))['L2 Error'].dropna()

    errs = [ err_p1, err_p2, err_p3, err_p4]   
    
    leg_reg = ['O($h$)','O($h^2$)','O($h^3$)','O($h^4$)']

    plt_marker = [ '*','o', '^', 'p']
    plt_linestyle = ['.g','.r', '.b', '.k']
    reg_linestyle = ['g', 'r', 'b', 'k']    

    h = df.where((p1))['h'].dropna()
    H = 1.0/h.to_numpy()
    for i in range(len(errs)):
        plt.loglog(H, errs[i], plt_linestyle[i], marker=plt_marker[i], label='p{}'.format(i+1))
        m , b = lin_reg_fit(H,errs[i])
        reg_y = m*H
        #reg_H = m * H + b
        plt.loglog(H, reg_y, reg_linestyle[i], marker='1') #, label='O({})'.format(m))

    plt.title('Error vs. 1/h (loglog)')
    plt.legend(ncol = 2, loc="upper left", shadow=True)
    plt.xlabel('1/h')
    plt.ylabel(r'$L^2$ Error')    
    plt.savefig('conv.eps', format='eps')
    plt.show()


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
    



if __name__ == "__main__":

    folder_name = 'convergence'
    #folder_name = 'log_files_linE_cpus_1_and_4_small_meshes'
    filename_ext = '.log'
    #idx: 0   1    2  3   4  5 6 7  8  9 10  11
    #    047_linE_nu_0.3_deg_4_h_6_cpu_1_run_3.log
    keep_idx = [3,5,7,11]

    logfile_keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', \
                        'DoFs/Sec in SNES', 'L2 Error', './elasticity', 'Time (sec):', 'script']
                                        #line containing ./elasticity has number of processors
     
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_linE_conv #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_linE_conv #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)

   
    #create a dataframe
    df = create_df_linE_noether(filenames_data , files_data)
    print(df)
    plot_linE_conv(df)

    

    
    

    

    


    #df.to_csv(r'data.csv', index = False, header=True)
    

    
