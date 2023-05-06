function stop = plot1(xx, optimValues, state)
global prev_x prev_y start_point

switch start_point
    case 1
        [X,Y] = meshgrid(-1:0.2:1, 1:0.2:3);
    case 2
        [X,Y] = meshgrid(-2:0.2:0, -1:0.2:2);
    case 3
        [X,Y] = meshgrid(-3:0.2:0, -1:0.2:2);
    case 4
        [X,Y] = meshgrid(-3:0.2:0, 0:0.2:2);
end
Z = (-X-0.5).^2 + 100*(Y-0.5-(X+1.5).^2).^2;

contour(X,Y,Z,60);
hold on;
grid on;
x = xx(1);
y = xx(2);
z = (-x-0.5).^2 + 100*(y-0.5-(x+1.5).^2).^2;
plot3(x, y, z , '.' ,'Color', 'red', 'MarkerSize', 12);

dx = prev_x - x;
dy = prev_y - y;
quiver(prev_x, prev_y, -dx, -dy,0,LineWidth=1,MaxHeadSize=0.5,AutoScale="on" ,Color='green');
xlabel('x');
ylabel('y');
zlabel('z');

prev_x = x;
prev_y = y;
stop = false;
end