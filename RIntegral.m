function[prev] = CIntegral(a, b, err)
    Vx = [];
    Vy = [];
    n = 2;
    h = (b - a) / n;
    f = false;
    prev = 0;
    while(1)
        S = 0;
        for k = 1 : n
            x = a + k * h;
            S = S + MInt(x);
            Vx = [Vx, x];
            Vy = [Vy, MInt(x)];
        end
        int = S * h;
        if(abs(int - prev) < err)
            f = true;
        else 
            n = n * 2;
            h = h / 2;
            prev = int;
            Vx = [];
            Vy = [];
        end 
    if(f == true)
        break;
    end 
    end 
    bar(Vx, Vy);
    disp(n);
end