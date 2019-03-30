Method = {'Центральные прямоугольники'; 'Левые прямоугольники'; 'Правые прямоугольники'; 'Трапеции'; 'Параболы'; 'integral'; 'trapz'; 'cumtrapz'};
I = Integral(@fun, 1, 0, 0.0001);
I_l = Integral_l(@fun, 1, 0, 0.0001);
I_r = Integral_r(@fun, 1, 0, 0.0001);
T = Trapezium(@fun, 1, 0, 0.0001);
P = Parabola(@fun, 1, 0, 0.0001);
x = 0:0.0001:1;
y = fun(x);
i = integral(@fun, 0, 1);
t = trapz(x, y);
c = cumtrapz(x,y);
c = c(length(c));
Value = [I(1); I_l(1); I_r(1); T(1); P(1); i; t; c];
Iterations = [I(2); I_l(2); I_r(2); T(2); P(2); 0; 0; 0];
t = table(Method, Value, Iterations);
disp(t)