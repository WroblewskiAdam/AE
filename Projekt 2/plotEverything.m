function [] = plotEverything()
global min_vector;
global mean_vector;
global max_vector;
global var_vector;

% % % Dla populacji
% figure(1)
% plot(min_vector)
% hold on
% plot(mean_vector)
% hold on
% plot(max_vector)
% legend('min', 'śr', 'max')
% xlabel('Nr pokolenia')
% title('Min, max, śr f.celu dla populacji 20')
% grid on
% xlim([1,length(max_vector)])
% print('pop20_mma.png','-dpng','-r800')
% 
% 
% figure(2)
% plot(var_vector)
% grid on
% title('Wariancja f.celu dla populacji 20')
% legend('Wariancja')
% xlabel('Nr pokolenia')
% xlim([1,length(max_vector)])
% print('pop20_war.png','-dpng','-r800')




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % Dla selekcji
% figure(1)
% plot(min_vector(:,1))
% hold on
% plot(min_vector(:,2))
% legend('ruletkowa','turniejowa')
% xlabel('Nr pokolenia')
% title('Min f.celu w funkcji nr. pokolenia')
% grid on
% xlim([1,length(max_vector)])
% print('sel_min.png','-dpng','-r800')
% 
% figure(2)
% plot(max_vector(:,1))
% hold on
% plot(nonzeros(max_vector(:,2)))
% hold on
% legend('ruletkowa', 'turniejowa',Location='southeast')
% xlabel('Nr pokolenia')
% title('Max f.celu w funkcji nr. pokolenia')
% grid on
% xlim([1,length(max_vector)])
% print('sel_max.png','-dpng','-r800')
% 
% figure(3)
% plot(mean_vector(:,1))
% hold on
% plot(nonzeros(mean_vector(:,2)))
% hold on
% legend('ruletkowa', 'turniejowa',Location='southeast')
% xlabel('Nr pokolenia')
% title('Średnia f.celu w funkcji nr. pokolenia')
% grid on
% xlim([1,length(max_vector)])
% print('sel_mean.png','-dpng','-r800')
% 
% figure(4)
% plot(var_vector(:,1))
% hold on
% plot(nonzeros(var_vector(:,2)))
% hold on
% legend('ruletkowa', 'turniejowa',Location='southeast')
% xlabel('Nr pokolenia')
% title('Wariancja f.celu w funkcji nr. pokolenia')
% grid on
% xlim([1,length(max_vector)])
% print('sel_war.png','-dpng','-r800')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Dla crossoverFraction
figure(1)
plot(min_vector(:,1))
hold on
plot(min_vector(:,2))
hold on
plot(min_vector(:,3))
legend('0,2','0,5', '0,8')
xlabel('Nr pokolenia')
title('Min f.celu w zależności od parametru "CrossoverFrac"')
grid on
xlim([1,length(max_vector)])
print('cross_min.png','-dpng','-r800')

figure(2)
plot(max_vector(:,1))
hold on
plot(nonzeros(max_vector(:,2)))
hold on
plot(nonzeros(max_vector(:,3)))
hold on
legend('0,2','0,5', '0,8',Location='southeast')
xlabel('Nr pokolenia')
title('Max f.celu w zależności od parametru "CrossoverFrac"')
grid on
xlim([1,length(max_vector)])
print('cross_max.png','-dpng','-r800')

figure(3)
plot(mean_vector(:,1))
hold on
plot(nonzeros(mean_vector(:,2)))
hold on
plot(nonzeros(mean_vector(:,3)))
hold on
legend('0,2','0,5', '0,8',Location='southeast')
xlabel('Nr pokolenia')
title('Średnia f.celu w zależności od parametru "CrossoverFrac"')
grid on
xlim([1,length(max_vector)])
print('cross_mean.png','-dpng','-r800')

figure(4)
plot(var_vector(:,1))
hold on
plot(nonzeros(var_vector(:,2)))
hold on
plot(nonzeros(var_vector(:,3)))
hold on
legend('0,2','0,5', '0,8',Location='southeast')
xlabel('Nr pokolenia')
title('Wariancja f.celu w zależności od parametru "CrossoverFrac"')
grid on
xlim([1,length(max_vector)])
print('cross_war.png','-dpng','-r800')

end

