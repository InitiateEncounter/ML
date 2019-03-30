function[prev] = PIntegral_2(a, b, err)
    Vx = [];
    Vy = [];
    n = 2;
    m = 1;
    h = (b - a) / n;
    f = false;
    prev = 0;
    while(1)
        S = 0;
        for k = 1 : m
            x = a + 2 * (k - 1) * h;
            S = S + MInt(x) + 4 * MInt(x + h) + MInt(x + 2 * h);
            Vx = [Vx, x];
            Vy = [Vy, MInt(x)];
        end
        Int = S * h / 3;
        if(abs(Int - prev) < err)
            f = true;
        else 
            m = n;
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