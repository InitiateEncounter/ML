function [r] = NumHord(a, b, h)
    if (MyFunction(a)*Dif(a)<0 || MyFunction(b)*Dif(b)>0) 
        x0=a;
        x1=b;
        x2=a;
    else 
        x0=b; 
        x1=a;
        x2=b;
    end
    iter=0;
    while (abs(MyFunction(x0))>h)
        x0=x1-((x2-x1)/(MyFunction(x2)-MyFunction(x1)))*MyFunction(x1);
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

