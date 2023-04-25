f = @(x) (-x .* x.^2);

t_begin = -3;
t_end = 7;
% t_begin = 7;
% t_end = 10;
x = t_begin:0.001:t_end;

% plot(x, f(x));
precision = 12;
err = 0.001;
bisection(f, t_begin, t_end, precision, err)
