function[I] = monte_carlo(fun, a, b, n)
	m = 1/n;
    yl = min(fun(a:m:b));
    yh = max(fun(a:m:b));
    h = abs(yh - yl);
    S = h*(b - a);
	X = a + (b - a)*rand(1, n);
	Y = yl + (yh - yl)*rand(1, n);    
	L = 0; 
    H = 0;
	for i = 1:n
		if ((fun(X(i)) > 0)&&(fun(X(i)) > Y(i)))
			H = H + 1; 
        elseif ((fun(X(i)) < 0)&&(fun(X(i)) < Y(i)))
			L = L + 1;
		end
	end 
	I = S*(H - L)/n;
end 