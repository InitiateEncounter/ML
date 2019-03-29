function [r] = NumDich(a, b, h)
    x1=a;
    x2=b;
    x0=a;
    iter=0;
    while (abs(MyFunction(x0))>h)
        x0=(x1+x2)/2;
        iter=iter+1;
        if (iter>1000)
            disp('Too many iterations, answer may not be correct. Probably wrong interval?')
            break;
        end
        if (MyFunction(x1)*MyFunction(x0)<0)
            x2=x0;
        else
            x1=x0;
        end
    end
    r=[x0, iter];
end

