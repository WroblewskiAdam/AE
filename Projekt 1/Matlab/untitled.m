function [x,fval,exitflag,output] = untitled(x0,MaxFunEvals_Data,MaxIter_Data,TolFun_Data,TolX_Data)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimset;
%% Modify options setting
options = optimset(options,'Display', 'off');
options = optimset(options,'MaxFunEvals', MaxFunEvals_Data);
options = optimset(options,'MaxIter', MaxIter_Data);
options = optimset(options,'TolFun', TolFun_Data);
options = optimset(options,'TolX', TolX_Data);
options = optimset(options,'PlotFcns', {  @optimplotx @optimplotfunccount @optimplotfval });
[x,fval,exitflag,output] = ...
fminsearch(@f,x0,options);
