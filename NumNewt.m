function [r] = NumNewt(a, b, h)
    if (MyFunction2(a)*SecDif2(a)<0 || MyFunction2(b)*SecDif2(b)>0)
        x0=a;
    else
        x0=b;
    end;
    iter=0;
    while (abs(MyFunction2(x0))>h)
        iter=iter+1;
        x=x0-MyFunction2(x0)/Dif2(x0);
        if (iter>=1000)
            fprintf('Too many iterations, answer may not be correct. Probably wrong interval?');
            break;
        end;
        x0=x;
    end
    r=[x0, iter];
end

