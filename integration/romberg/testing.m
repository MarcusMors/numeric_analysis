f = @(x) (x.^2);

a = -1;
b = 10;
n = 1000;

format long;

trapecios(f, a, b, n)
riemann(f, a, b, n)

err = 0.000001;
romberg(f, a, b, err)
