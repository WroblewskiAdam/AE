clear;
clc;
global min_vector;
global mean_vector;
global max_vector;
global var_vector;
global results;
global glob_iter
global n;
min_vector = [];
mean_vector = [];
max_vector = [];
var_vector = [];
results = [];
glob_iter = 0;
means = [];
% pop_sizes = [20, 100, 1000,  10000 ];
% selections = {'selectionroulette', 'selectiontournament'};
% crossovers_vals = [0.2, 0.5, 0.8];

items = Skrypt1();
maxWeight = 0.3*sum(items(:,1));
N = 32;
% for n = 1:length(crossovers_vals)
	% for glob_iter = 1:30
		options = optimoptions('ga', ...
    		'CrossoverFraction', 0.8, ...
    		'Display','iter', ...
    		'EliteCount',1, ...
    		'SelectionFcn','selectiontournament', ...
    		'MaxGenerations',100000, ...
    		'MaxStallGenerations',100000, ...
    		'MutationFcn', {@mutationuniform, 0.2}, ...
    		'PopulationSize',20000,...
    		'OutputFcn',@GaOutputFcn);
		intcon= (1:1:32);
		lb = zeros(1,N);
		ub = ones(1,N);
		solution = ga(@(solution) BackpackFcn(solution, items, maxWeight), N, [], [], [], [], lb, ub, [], intcon, options);
		% plotEverything()
		
		value = BackpackFcn(solution, items, maxWeight);
		weight = calcWeight(solution, items);
		disp(['Wartość: ', num2str(value), ', waga: ', num2str(weight), ', rozw: ', num2str(solution)]);
	% end
	% srednia_generacji = mean(results(:,1))
	% srednia_f_cel = mean(results(:,2))

	% means(n,1) = crossovers_vals(n);
	% means(n,2) = srednia_generacji;
	% means(n,3) = srednia_f_cel;
% end
% plotEverything();







