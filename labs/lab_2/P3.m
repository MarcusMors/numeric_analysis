tx = [-2 -1 +1 +2 +3];
ty = [+5 +1 +6 +3 +0];

P = newton_interpolation(tx, ty)

Pf = @(x) polyval(P, x);
% g = @(x) x - f(x)/df(x);

% x = -2:0.1:3;
% plot(x, Pf(x));
% set(gca, "xaxislocation", "origin");
% set(gca, "yaxislocation", "origin");

Pd = der(P)
Pdd = der(Pd)
Pddd = der(Pdd)

Pdf = @(x)polyval(Pd, x);
Pddf = @(x)polyval(Pdd, x);
Pdddf = @(x)polyval(Pddd, x);

tol = 0.000001;

g = @(x) x - Pdf(x) / Pddf(x);
x = newton_root_finding(g, -1.5, tol);
fprintf("minimo: (%+6.6f ,%+6.6f)\n", x, Pf(x));

x = newton_root_finding(g, 1, tol);
fprintf("maximo: (%+6.6f ,%+6.6f)\n", x, Pf(x));

g = @(x) x - Pddf(x) / Pdddf(x);

x = newton_root_finding(g, -0.5, tol);
fprintf("inflection_p: (%+6.6f ,%+6.6f)\n", x, Pf(x));
x = newton_root_finding(g, 2, tol);
fprintf("inflection_p: (%+6.6f ,%+6.6f)\n", x, Pf(x));
