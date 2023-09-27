tx = [0 2 4 10];
ty = [2 4 -1 1];

% t = P(5)
% xP = -1:0.01:11;
xP = -1:0.1:11;
yP = quadratic_spline(tx, ty, xP);

scatter(tx, ty);
hold on;
plot(xP, yP, 'b-');
legend("Quadratic Spline");
% display(yP);
