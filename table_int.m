function [ ] = table_int( )
c_l = Integral_l(@fun, 1, 0, 0.0001);
c_c = Integral(@fun, 1, 0, 0.0001);
c_r = Integral_r(@fun, 1, 0, 0.0001);
c_t = Trapezium(@fun, 1, 0, 0.0001);
c_s = Parabola(@fun, 1, 0, 0.0001);
x = 0:0.0001:1;
q = integral(@fun, 0, 1);
y = fun(x);
t = trapz(x, y);
t = t(length(t));
c = cumtrapz(x,y);
c = c(length(c));
fprintf('----------------------------------------------------------------\n');
fprintf('| left_meth    | answer: %.4f   | iter: %.0f   | length: %.0f  |\n', c_l(1), c_l(2), c_l(3));
fprintf('----------------------------------------------------------------\n');
fprintf('| central_meth | answer: %.4f   | iter: %.0f    | length: %.0f    |\n', c_c(1), c_c(2), c_c(3));
fprintf('----------------------------------------------------------------\n');
fprintf('| right_meth   | answer: %.4f   | iter: %.0f   | length: %.0f  |\n', c_r(1), c_r(2), c_r(3));
fprintf('----------------------------------------------------------------\n');
fprintf('| trap_meth    | answer: %.4f   | iter: %.0f    | length: %.0f    |\n', c_t(1), c_t(2), c_t(3));
fprintf('----------------------------------------------------------------\n');
fprintf('| sim_meth     | answer: %.4f   | iter: %.0f    | length: %.0f     |\n', c_s(1), c_s(2), c_s(3));
fprintf('----------------------------------------------------------------\n');
fprintf('|   quad:%.4f    |   trapz:%.4f     |   cumtrapz:%.4f    |\n',q ,t,c);
fprintf('----------------------------------------------------------------\n');
bar([c_l(3), c_c(3), c_r(3), c_t(3), c_s(3)]);
hold on

end