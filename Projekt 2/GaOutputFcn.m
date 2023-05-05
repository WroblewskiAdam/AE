function [state,options,optchanged] = GaOutputFcn(options,state,flag)
global min_vector;
global mean_vector;
global max_vector;
global var_vector;

optchanged = false;

% switch flag
%  case 'init'
%         disp('Starting the algorithm');
%     case {'iter','interrupt'}
%         disp('Iterating ...')
%     case 'done'
%         disp('Performing final task');
% end

iter = state.Generation + 1;
min_vector(iter) = min( - state.Score);
mean_vector(iter) = mean( - state.Score);
max_vector(iter) = max( - state.Score);
var_vector(iter) = var(- state.Score);


