f = @(x) x.^2 - cos(x .* 3 - 2);
% teta = @(x) sqrt(cos(x .* 3 - 2));
teta = @(x) (acos(x.^2) + 2) ./ 3;
% teta = @(x) cos(x .* 3 - 2) ./ x;

t = 0.8:0.01:1;

plot(t, f(t));
set(gca, "xaxislocation", "origin");
set(gca, "yaxislocation", "origin");

tol = 1 * 10^(-6);
% tol = 1 * 10^(-2);
root = fixed_point(teta, 0.8, tol, 1000);
fprintf("the root is: %6.6f\n", root);

root = bisection(f, 0.8, 1, tol);
fprintf("the root is: %6.6f\n", root);

% expected answer 0.88772
