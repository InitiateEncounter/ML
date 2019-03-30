function [Z] = UNDCF(X, Y)
    n=length(X);
    A=zeros(n, n);
    for i=1:n
        for j=1:n
            A(i,j)=X(i)^(j-1);
        end
    end
    Z = Gauss_1488(A, Y);
    Z = flipud(Z');
    XX=linspace(X(1),X(end),100);
    YY=polyval(Z,XX);
    plot(X,Y,'o',XX,YY);
end
