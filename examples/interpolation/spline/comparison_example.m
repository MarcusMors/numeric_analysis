% display(yP);
tx = [0 2 4 10];
ty = [2 4 -1 1];

x_eval = linspace(min(tx) - 2, max(tx) + 2, 100);

y_eval = cubic_spline(tx, ty, x_eval);

scatter(tx, ty);
hold on;

plot(x_eval, y_eval, 'b--', 'LineWidth', 2);
hold on;

xP = -1:0.1:11;
yP = quadratic_spline(tx, ty, xP);

plot(xP, yP, 'r--');
hold on;

P = lineal_spline(tx, ty);
xP = -1:0.1:11;
yP = P(xP);

plot(xP, yP, 'm--');

legend("Data Points", "Quadratic Spline", "Cubic Spline", "Lineal Spline");
