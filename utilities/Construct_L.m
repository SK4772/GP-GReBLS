function L=Construct_L(X,gnd)
options = [];
% options.NeighborMode = 'KNN';
% options.k = 3;     %近邻数目
% t=1; 76%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
options.NeighborMode = 'Supervised';
options.gnd = gnd;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
options.WeightMode = 'HeatKernel';
options.t = 10^0;     %热核参数
Q = constructW(X,options);
% [m,n]=size(W);
aa=sum(Q);
DDD=diag(aa);  %Z
L=DDD-Q;     
%%
% options = [];
% options.NeighborMode = 'Supervised';
% options.gnd = gnd;
% options.WeightMode = 'HeatKernel';
% options.t = 1;
% W = constructW(fea,options);