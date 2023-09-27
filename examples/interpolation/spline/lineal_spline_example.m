tx = [0 2 4 10];
ty = [2 4 -1 1];

P = lineal_spline(tx, ty);
% t = P(5)
% xP = -1:0.01:11;
xP = -1:0.1:11;
yP = P(xP);

scatter(tx, ty);
hold on;
plot(xP, yP, 'b-');
legend("Data point", "Lineal Spline");
% display(yP);
