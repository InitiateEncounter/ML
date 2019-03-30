function [R] = Trapezium(fun, x_h, x_l, e)
    if ((x_l >= x_h)||(e <= 0)||(e >= 1))
        disp('Wrong interval or error assignment')
        return
    end
    n = 2;
    h = (x_h - x_l)/n;
    ISF = 0;
    Int_prev = 0;
    while (ISF == 0)
        S = (fun(x_l) + fun(x_h))/2;
        for k = 1:n-1
            x = x_l + k*h;
            S = S + fun(x);
        end
        Int = S*h;
        if (abs(Int - Int_prev) < e)
            ISF = 1;
        else
            n = n*2;
            h = h/2;
            Int_prev = Int;
        end
    end
    R = [Int, n];
end