Method = {'Центральные прямоугольники'; 'Левые прямоугольники'; 'Правые прямоугольники'; 'Трапеции'; 'Параола'};
I = Integral(@fun, 1, 0, 0.0001);
I_l = Integral_l(@fun, 1, 0, 0.0001);
I_r = Integral_r(@fun, 1, 0, 0.0001);
T = Trapezium(@fun, 1, 0, 0.0001);
P = Parabola(@fun, 1, 0, 0.0001);
Value = [I(1), I_l(1), I_r(1), T(1), P(1)];
Iterations = [I(2), I_l(2), I_r(2), T(2), P(2)];
table(Value, Iterations, ..., 'RowNames', Method)
