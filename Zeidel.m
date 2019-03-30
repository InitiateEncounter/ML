function[x] = Zeidel(A, B, tolerance)
    n = size(A, 1);
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
    iterations = 1; 
    x0 = zeros(1, n); 
    x = zeros(1, n); 
    for i = 1 : n 
        x0(i) = B(i) / A(i, i); 
    end 
    for i = 1 : n 
        S = 0; 
        for j = 1 : n 
            if(i ~= j) 
                S = S + (A(i, j) * x0(j)); 
            end
        end
        x(i) = (B(i) - S) / A(i, i); 
    end 
    while(1) 
        k = 0; 
        for i = 1 : n 
            if abs(x(i) - x0(i)) >= tolerance 
                k = k + 1; 
            end
        end
        if k == n
            for i = 1 : n 
                x0(i) = x(i); 
            end
            for i = 1 : n
                S = 0; 
                for j = 1 : n
                    if(i ~= j) 
                        S = S + (A(i, j) * x(j)); 
                    end
                end
            x(i) = (B(i) - S) / A(i, i); 
            end
            iterations = iterations + 1; 
        else 
            break; 
        end
    end
    fprintf('Число итераций: %d', iterations);
end