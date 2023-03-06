% to open gui type 'optimtool'

start_point = 4;
switch start_point
    case 1
        start_points = [0.5, 1.5];
    case 2
        start_points = [-0.5, -0.5];
    case 3
        start_points = [-2.5, -0.5];
    case 4
        start_points = [-2.5, 1.5];
end

options = optimset(options,'MaxFunEvals', 100, 'MaxIter', Inf, 'TolFun', 1e-10, 'TolX', 1e-10);
options = optimset(options,'PlotFcns', { @plot1 @plot2 @optimplotfunccount @optimplotfval });
[xx,fval,exitflag,output] = fminsearch(@f, start_points, options);

fprintf(output.algorithm)
fprintf('\n punkty początkowe:  x1 = %.2f, y1 = %.2f', start_points(1), start_points(2))
fprintf('\n')
fprintf(output.message)
fprintf('\n Liczba obliczeń funkcji celu:  %.0f',output.funcCount)
fprintf('\n Liczba iteracji:  %.0f',output.iterations)

fprintf('\n wynik x = (%.10f, %.10f)\n',xx(1),xx(2))
fval
