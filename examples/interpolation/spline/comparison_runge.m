% display(yP);
Runge = @(x) (1 ./ (1 + 25 * x.^2));
tx = -1:0.1:1;
ty = Runge(tx);
scatter(tx, ty);
hold on;

xDomain = -1:0.01:1;
xR = xDomain;
yR = Runge(xR);
plot(xR, yR);
hold on;

x_eval = linspace(min(tx) - 2, max(tx) + 2, 100);
y_eval = cubic_spline(tx, ty, x_eval);

plot(x_eval, y_eval, 'b--', 'LineWidth', 2);
hold on;

xP = xDomain;
yP = quadratic_spline(tx, ty, xP);

plot(xP, yP, 'r--');
hold on;

P = lineal_spline(tx, ty);
xP = xDomain;
yP = P(xP);

plot(xP, yP, 'm--');

legend("Data Points", "Runge function", "Quadratic Spline", "Cubic Spline", "Lineal Spline");
