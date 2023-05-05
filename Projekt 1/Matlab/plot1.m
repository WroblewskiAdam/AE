function stop = plot1(xx, optimValues, state)
[X,Y] = meshgrid(-3:0.2:3, -3:0.2:3);
Z = (-X-0.5).^2 + 100*(Y-0.5-(X+1.5).^2).^2;
surf(X,Y,Z);
hold on;
grid on;

x = xx(1);
y = xx(2);
plot3(x, y, (-x-0.5)^2 + 100*(y-0.5-(x+1.5)^2)^2 , '.' ,'Color', 'red', 'MarkerSize', 20);
xlabel('x');
ylabel('y');
zlabel('z');
% 
axis([-3 3 -3 3]);
axis equal;
view(0,90)
axis equal;

stop = false;
end