function stop = plot2(xx, optimValues, state)
	global log_matrix log_index

	x = xx(1);
	y = xx(2);
	z = (-x-0.5)^2 + 100*(y-0.5-(x+1.5)^2)^2;
	iter = optimValues.iteration
	log_matrix(iter+1,log_index) = z;

	
	% semilogy(iter, z , '.' ,'Color', 'red', 'MarkerSize', 10);
	plot(iter, z , '.' ,'Color', 'red', 'MarkerSize', 10);
	hold on;
	grid on;
	xlabel('Iteracja');
	ylabel('f(x)');
	set(gca, 'YScale', 'log')
	
	stop = false;
end