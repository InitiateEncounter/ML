function [y] = Row(x, e)
    y = 0;
    n = 0;
    an = 1;
    A = [];
    while(1)
        y = y + an;
        A = [A, an];
        n = n + 1;
        an = an * (x^2)/((2*n)*(2*n - 1));
        if (abs(an)<=e)
            break;
        end
    end
    bar(A);
end

