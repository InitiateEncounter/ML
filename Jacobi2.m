function [ roots ] = Jacobi2( A, B, e)
n = size(A, 1);
roots = zeros(1, n);
    for i = 1:n
        roots(i) = B(i)/A(i, i);
    end
    next_i = 1;
    while next_i == 1
        next_i = 0;
        roots_n = zeros(1, n);
        for i = 1:n
            for j = 1:n
                if (j ~= i)
                    roots_n(i) = roots_n(i) + A(i, j)*roots(j);
                end        
            end
            roots_n(i) = (B(i) - roots_n(i))/A(i,i);
        end
        for i = 1:n
            if abs(roots_n(i) - roots(i)) > e
                next_i = 1;
            end
        end
        roots = roots_n
    end
end

