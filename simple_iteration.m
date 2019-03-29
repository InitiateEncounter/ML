function [r] = Num_Iter(a, b, h)
    if (FiDif(a)>=1)||(FiDif(b)>=1)
        disp('Расходится');
        return;
    end
    t=a;
    x0=t;
    x1=b;
    iter=0;
    while(abs(x1-x0)>=h)
        x0=t;
        x1=Fi(t);
        iter=iter+1;
        t=x1;
    end
    r=[x1, iter];
end

