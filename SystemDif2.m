function [y] = SystemDif2(x)
    y=(2*(sqrt(0.5-0.3*x^2)-(0.3*x^2)/sqrt(0.5-0.3*x^2))^2)*tan(x*sqrt(0.5-0.3*x^2)+0.4)*(sec(x*sqrt(0.5-0.3*x^2)+0.4))^2+(-0.9*x/sqrt(0.5-0.3*x^2)-0.09*x^3/((0.5-0.3*x^2)^(3/2)))*(sec(x*sqrt(0.5-0.3*x^2)+0.4))^2-2;
end
