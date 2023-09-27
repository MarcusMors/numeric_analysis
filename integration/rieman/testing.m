f = @(x) (x.^2);

a = -1;
b = 1;
n = 1000;

trapecios(f, a, b, n)
riemann(f, a, b, n)
