function [X] = Gauss_1488(A, B)
    n = size(A, 1);
    for k = 1:(n - 1)
        if (A(k, k) == 0)
            l = k;
            while (1)
                l = l + 1;
                if ((A(l, k) == 0)&&(l == n))
                    disp('система вырождена');
                    return;
                end
                if (A(l, k) ~= 0)
                    break;
                end
            end
            t=B(k);
            B(k)=B(l);
            B(l)=t;
            for j = 1:n
                t=A(k, j);
                A(k, j)=A(l, j);
                A(l, j)=t;
            end
        end
        for i = (k+1):n
            m=A(i, k)/A(k, k);
            for j = (k+1):n
                A(i, j)=A(i, j)-m*A(k, j);
            end
            B(i)=B(i)-m*B(k);
        end
    end
    if (A(n, n) == 0)
        disp('система вырождена');
        return;
    else
        X(n)=B(n)/A(n, n);
        for i = (n-1):-1:1
            S=0;
            for j = (i+1):n
                S=S+A(i, j)*X(j);
            end
            X(i)=(B(i)-S)/A(i, i);
        end
    end
end
