function[prev] = TIntegral(a, b, err)
    Vx = [];
    Vy = [];
    n = 2;
    h = (b - a) / n;
    f = false;
    prev = 0;
    while(1)
        S = (MInt(a) + MInt(b)) / 2;
        for k = 1 : n - 1
            x = a + k * h;
            S = S + MInt(x);
            Vx = [Vx, x];
            Vy = [Vy, MInt(x)];
        end
        Int = S * h;
        if(abs(Int - prev) < err)
            f = true;
        else 
            n = n * 2;
            h = h / 2;
            prev = Int;
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