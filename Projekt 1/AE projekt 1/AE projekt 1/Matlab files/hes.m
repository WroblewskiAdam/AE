function [h] = hes(a)
 x = a(1);
 y = a(2);
 h = [2 + 800 (1.5 + x)^2 - 400 (-0.5 - (1.5 + x)^2 + y), -400 (1.5 + x)
            -400 (1.5 + x), 200];
end
