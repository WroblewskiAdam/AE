function [state,options,optchanged] = GaOutputFcn(options,state,flag)
	global min_vector;
	global mean_vector;
	global max_vector;
	global var_vector;
	
	global results;
	global glob_iter;
	global n;
	optchanged = false;
	
	iteration = state.Generation + 1;
	min_vector(iteration,n) = min( - state.Score);
	mean_vector(iteration,n) = mean( - state.Score);
	max_vector(iteration,n) = max( - state.Score);
	var_vector(iteration,n) = var(- state.Score);
	
	% if min(state.Best) ==  -981
	% 	results(glob_iter, 1) = state.Generation;
	% 	results(glob_iter, 2) = state.FunEval;
	% 	state.StopFlag = 'stop';
	% end

end


