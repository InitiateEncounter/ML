function [P] = PLFT(X, Y)
    n = length(X);
    P = polyfit(X, Y, n-1);
    XX = linspace(X(1), X(end), 100);
    YY = polyval(P, XX);
    plot(X, Y, 'o', XX, YY);
end