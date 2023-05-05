% to open gui type 'optimtool'
clear;
clc;
start_point = 3;
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

%% fminsearch
fprintf('#########################  fminsearch ##############################')
options = optimset;
options = optimset(options,'MaxFunEvals', Inf, 'MaxIter', Inf, 'TolFun', 1e-10, 'TolX', 1e-10);
% options = optimset(options,'PlotFcns', { @plot1 @plot2 @optimplotfunccount @optimplotfval });
% options = optimset(options,'PlotFcns', { @plot1 });
options = optimset(options,'PlotFcns', { @plot2 });
[xx,fval,exitflag,output] = fminsearch(@f, start_points, options);

fprintf(output.algorithm)
fprintf('\n punkty początkowe:  x1 = %.2f, y1 = %.2f', start_points(1), start_points(2))
fprintf('\n')
fprintf(output.message)
fprintf('\n Liczba obliczeń funkcji celu:  %.0f',output.funcCount)
fprintf('\n Liczba iteracji:  %.0f',output.iterations)

fprintf('\n wynik x = (%.20f, %.20f)\n',xx(1),xx(2))
fval

%% Fminunc 1 - quasi-newton
fprintf('#########################  fminunc ##############################')
options = optimset;
options = optimset(options,'MaxFunEvals', 1000, 'MaxIter', Inf, 'TolFun', 1e-10, 'TolX', 1e-10);
options = optimset(options,'PlotFcns', { @plot2 });
[xx,fval,exitflag,output] = fminunc(@f, start_points, options);

fprintf(output.algorithm)
fprintf('\n punkty początkowe:  x1 = %.2f, y1 = %.2f', start_points(1), start_points(2))
fprintf('\n')
fprintf(output.message)
fprintf('\n Liczba obliczeń funkcji celu:  %.0f',output.funcCount)
fprintf('\n Liczba iteracji:  %.0f',output.iterations)

fprintf('\n wynik x = (%.10f, %.10f)\n',xx(1),xx(2))
fval


%% Fminunc 2 - quasi-newton with gradient supplied
fprintf('#########################  fminunc ##############################')
options = optimoptions('fminunc');
options = optimoptions(options,'Algorithm', 'quasi-newton');
options = optimoptions(options, 'MaxFunEvals', 1000, 'MaxIter', Inf, 'TolFun', 1e-10, 'TolX', 1e-10);
options = optimoptions(options, 'SpecifyObjectiveGradient', true);
options = optimoptions(options, 'PlotFcns', { @plot2});
[xx,fval,exitflag,output] = fminunc(@f, start_points, options);

fprintf(output.algorithm)
fprintf('\n punkty początkowe:  x1 = %.2f, y1 = %.2f', start_points(1), start_points(2))
fprintf('\n')
fprintf(output.message)
fprintf('\n Liczba obliczeń funkcji celu:  %.0f',output.funcCount)
fprintf('\n Liczba iteracji:  %.0f',output.iterations)

fprintf('\n wynik x = (%.10f, %.10f)\n',xx(1),xx(2))
fval


%% Fminunc 3- trust-region with gradient supplied
fprintf('#########################  fminunc ##############################')
options = optimoptions('fminunc');
options = optimoptions(options,'Algorithm', 'trust-region');
options = optimoptions(options, 'MaxFunEvals', 1000, 'MaxIter', Inf, 'TolFun', 1e-10, 'TolX', 1e-10);
options = optimoptions(options, 'SpecifyObjectiveGradient', true);
options = optimoptions(options, 'PlotFcns', { @plot2 });
[xx,fval,exitflag,output] = fminunc(@f, start_points, options);

fprintf(output.algorithm)
fprintf('\n punkty początkowe:  x1 = %.2f, y1 = %.2f', start_points(1), start_points(2))
fprintf('\n')
fprintf(output.message)
fprintf('\n Liczba obliczeń funkcji celu:  %.0f',output.funcCount)
fprintf('\n Liczba iteracji:  %.0f',output.iterations)

fprintf('\n wynik x = (%.10f, %.10f)\n',xx(1),xx(2))
fval
