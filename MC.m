function[Y] = Func(X)
	N = length(x);
	Y = [];
	for i = 1 : N
		Y = [Y, X(i) - 2];
	end 
end 
function[INT] = Mc(A, B)
	N = 1000;
	St = 0.001;
	Ls = 0; Hs = 0;
	X = A + (B - A) * rand(1, N);
	Y = min(Func(A:St:B)) + (max(Func(A:St:B)) - min(Func(A:St:B))) * rand(1, N);
	for i = 1 : N
		if((Func(X(i)) > 0) && (Func(X(i)) > Y(i)))
			Hs = Hs + 1;
		end 
		if((Func(X(i)) < 0) && (Func(X(i)) < Y(i)))
			Ls = Ls + 1;
		end
	end 
	Sr = abs(max(Func(A:St:B)) - min(Func(A:St:B))) * (B - A);
	INT = Sr * (Hs - Ls) / N;
end 