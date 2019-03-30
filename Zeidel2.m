function [ roots ] = Zeidel2( A, B, e)
n = size(A, 1);
roots = zeros(1, n);
roots_p = zeros(1, n);
    for i = 1:n
        roots(i) = B(i)/A(i, i);
        roots_p(i) = roots(i) + 1;
    end
    next_i = 1;
    while next_i == 1
        next_i = 0;
        for i = 1:n
            roots(i) = 0;
            for j = 1:n
                if (j ~= i)
                    roots(i) = roots(i) + A(i, j)*roots(j);
                end        
            end
            roots(i) = (B(i) - roots(i))/A(i,i);
        end
        for i = 1:n
            if abs(roots_p(i) - roots(i)) > e
                next_i = 1;
            end
        end
        roots_p = roots;
    end
end