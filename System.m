function [y] = System(x)
    y=tan(x*sqrt(0.5-0.3*x^2)+0.4)-x^2;
end

