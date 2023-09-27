tx = [0 2 4 10];
ty = [2 4 -1 1];

x_eval = linspace(min(tx) - 2, max(tx) + 2, 100);

y_eval = cubic_spline(tx, ty, x_eval);

% Plot the cubic spline
plot(x_eval, y_eval, 'b', 'LineWidth', 2);
hold on;
scatter(tx, ty, 'r', 'filled');

legend('Cubic Spline', 'Data Points');
