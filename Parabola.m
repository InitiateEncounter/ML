function [R] = Parabola(fun, x_h, x_l, e)
    if ((x_l >= x_h)||(e <= 0)||(e >= 1))
        disp('Wrong interval or error assignment')
        return
    end
    n = 2;
    m = 1;
    h = (x_h - x_l)/n;
    ISF = 0;
    Int_prev = 0;
    while (ISF == 0)
        S = (fun(x_l) + fun(x_h))/2;
        for k = 1:m
            x = x_l + 2*(k - 1)*h;
            S = S + fun(x) + 4* fun(x + h) + fun(x + 2*h) ;
        end
        Int = S*h/3;
        if (abs(Int - Int_prev) < e)
            ISF = 1;
        else
            m = n;
            n = n*2;
            h = h/2;
            Int_prev = Int;
        end
    end
    R = [Int, n];
end