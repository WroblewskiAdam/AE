function stop = plot2(xx, optimValues, state)
hold on;
grid on;
x = xx(1);
y = xx(2);
z = (-x-0.5)^2 + 100*(y-0.5-(x+1.5)^2)^2;
iter = optimValues.iteration;
% semilogy(iter, z , '.' ,'Color', 'red', 'MarkerSize', 20);
plot(iter, z , '.' ,'Color', 'red', 'MarkerSize', 20);
xlabel('iteration');
ylabel('f(x)');
set(gca, 'YScale', 'log')

stop = false;
end