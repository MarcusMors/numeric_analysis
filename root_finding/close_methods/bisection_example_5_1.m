f = @(x) (668.06 / x) * (1 -exp(-0.146843 * x)) - 40;

t_begin = 12;
t_end = 16;
x = t_begin:0.001:t_end;

% plot(x, f(x));
precision = 12;
err = 0.0001
bisection(f, t_begin, t_end, precision, err)
