function [] = plotEverything()
global min_vector;
global mean_vector;
global max_vector;
global var_vector;

plot(min_vector)
hold on
plot(mean_vector)
hold on
plot(max_vector)
hold on
plot(var_vector)
hold on
legend('min', 'śr', 'max', 'wariancja')
xlabel('Generacja')
end

