function [R] = APPRX(X, Y, n)
    m = length(X);
    if (n > m - 1)
        disp('Input lesser approximation value')
        return
    end
    l = n + 1;
    A = zeros(l, l);
    B = zeros(1, l);
    C = zeros(l, l);
    D = zeros(1, l);
    R = zeros(l, 2);
    for k = 1:m
        for i = 1:l
            B(i) = B(i) + Y(k) * (X(k))^(i-1);
            for j = 1:l
                A(i,j) = A(i,j) + (X(k))^(i+j-2);
            end
        end
    end
    for i = 1:l
        D(i) = B(i);
        for j = 1:l
            C(i, j) = A(i, j);
        end
    end
    Z = Gauss_1488(A, B);
    Z = flipud(Z');
    for i = 1:l
        S = 0;
        for j = 1:l
            S = S + C(i, j) * Z(j);
        end
        R(i, 1) = Z(i);
        R(i, 2) = D(i) - S;
    end
    XX = linspace(X(1), X(end), 100);
    YY = polyval(Z, XX);
    plot(X, Y, 'o', XX, YY);
end
