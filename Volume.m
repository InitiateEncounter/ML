function [V] = Volume(fun, a, b)
    new_fun = @(x) fun(x).^2;
    V = pi*integral(new_fun, a, b);
    t = a:0.001:b;
    w = fun(t);
    al = -pi:0.1:(pi+10);
    X = ((cos(al))')*w;
    Y = ((sin(al))')*w;
    E = kron(ones(length(al), 1), t);
    mesh(X, Y, E);
end

