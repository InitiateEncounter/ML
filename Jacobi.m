function[X] = Jacobi(A, B, Tolerance)
    n = size(A, 1);
    Y = zeros(1, n);
    k = 0;
    Iteration_stop_flag = false;
    counter = 0;
    for i = 1 : n 
        counter = counter + 1;
        if counter > n + 1
	    disp('система не сходится');
            return;
        end
        if (abs(A(i, i)) <= sum(abs(A(i, :))) - abs(A(i, i)))
            l = i + 1;
            if(l > n)
                l = 1;
            end 
            copy = B(i);
	    B(i) = B(l);
            B(l) = copy;
	    for j = 1 : 1 : n
		copy = A(i, j);
		A(i, j) = A(l, j);
		A(l, j) = copy;
            end
            i = 1;
        end
    end
	while(1)
	    k = k + 1;
	    for i = 1 : n
		S = 0;
		for j = 1 : n
		    if(j ~= i)
			S = S + A(i, j) * Y(j);
		    end
		end
		X(i) = (B(i) - S) / A(i, i);
	    end 
	    i = 1;
	    Tolerance_stop_flag = false;
	    while(1)
		if(abs(X(i) - Y(i)) > Tolerance)
		    Tolerance_stop_flag = true;
		else 
		    i = i + 1;
		end 
		if((i == n) || (Tolerance_stop_flag == true))
		    break;
		end 
	    end
	    if(Tolerance_stop_flag == false)
		Iteration_stop_flag = true;
		fprintf('Число итераций: %d', k);
	    else 
		for i = 1 : n
		    Y(i) = X(i);
		end 
	    end 
	    if((k == 100) || (Iteration_stop_flag == true))
		break;
	    end 
	end 
	if(Iteration_stop_flag == false)
	    fprintf('Слишком много итераций');
	end 
end 