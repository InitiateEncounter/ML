function [r] = PROST(a, b, h)
    if (fi_dif(a)>=1)||(fi_dif(b)>=1)
        disp('Расходится');
        return;
    end
    t=a;
    x0=t;
    x1=b;
    iter=0;
    while(abs(x1-x0)>=h)
        x0=t;
        x1=fi(t);
        iter=iter+1;
        t=x1;
    end
    r=[x1, iter];
end

