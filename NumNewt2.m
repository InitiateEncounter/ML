function [r] = NumNewt2(a, b, h)
    if (System(a)*SystemDif2(a)<0 || System(b)*SystemDif2(b)>0)
        x0=a;
    else
        x0=b;
    end;
    iter=0;
    while (abs(System(x0))>h)
        iter=iter+1;
        x=x0-System(x0)/SystemDif1(x0);
        if (iter>=1000)
            fprintf('Too many iterations, answer may not be correct. Probably wrong interval?');
            break;
        end;
        x0=x;
    end
    r=[x0, iter];
end