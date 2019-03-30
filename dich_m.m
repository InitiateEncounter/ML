function[a,b]=dich_m(a,b,h)
x0=(a+b)/2;
i=0;
while (abs(MyFunction(x0))>h)
    x0=(a+b)/2;
    if MyFunction(x0)*MyFunction(a)<0
        b=x0;
    else 
        a=x0;
    end
    i=i+1;  
end
fprintf('\nThe root is %f\n',x0);
fprintf('\nThe number of iterations is %d\n',i);
end

