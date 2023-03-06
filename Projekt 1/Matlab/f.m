function [z] = f(a)
    x = a(1);
    y = a(2);
    z = (-x-0.5)^2 + 100*(y-0.5-(x+1.5)^2)^2;
    end

