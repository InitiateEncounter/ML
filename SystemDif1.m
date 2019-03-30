function [y] = SystemDif1(x)
    y=-2*x+(-(0.3*x^2)/sqrt(0.5-0.3*x^2)+sqrt(0.5-0.3*x^2))*(sec(0.4+x*sqrt(0.5-0.3*x^2)))^2;
end

