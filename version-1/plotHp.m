clear
clc

df = readmatrix('data.csv');
nu = df(:,1);
deg = df(:,2);
href = df(:,3);
num_cg = df(:,4);
time = df(:,5);
MDof_per_sec = df(:,6);
L2err = df(:,7);

info_id = fopen('log_files/for-Matlab.txt','r');
metaData = fscanf(info_id,'%f');

h = metaData(1):metaData(2);
sz_h = size(h,2);
p = metaData(3):metaData(4);
sz_p = size(p,2);
nus = metaData(5:end);
sz_nu = size(nus,1);
idx_start = (sz_h*(0:sz_nu*sz_p-1))+1;
idx_end = sz_h*(1:sz_nu*sz_p);


% x=1:10;
% y=2*x;
% plot(x,y,'r--o')
% saveas(gcf,'delme.png')
fname = {'nu_03.png','nu_049.png','nu_049999.png','nu_0499999.png'};
nuname = {'\nu= 0.3','\nu= 0.49','\nu= 0.49999','\nu= 0.499999'};
for j=1:sz_nu
  subplot(2,2,j)
  yyaxis right 
  ylim([1/href(sz_h), 1/href(1)])
  ylabel('h-refinement')
  yyaxis left
  semilogy(deg(idx_start(j):idx_end(j)), L2err(idx_start(j):idx_end(j)),'r-o', ...
           deg(idx_start(j+1):idx_end(j+1)), L2err(idx_start(j+1):idx_end(j+1)), 'b--*', ...
           deg(idx_start(j+2):idx_end(j+2)), L2err(idx_start(j+2):idx_end(j+2)), 'g--^', ...
           deg(idx_start(j+3):idx_end(j+3)), L2err(idx_start(j+3):idx_end(j+3)), 'k--x' )
  xlim([0,5]);
  ylabel('L2 error')
  xlabel('poly degree') 
  legend('p=1','p=2','p=3','p=4','Location','northeast');
  title(nuname{j})
  %saveas(gcf,'hp-ref.png')
end

