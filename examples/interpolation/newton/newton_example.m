tx = [1 2 4 5];
ty = [2 4 4 5];

% t = P(5)
display("all ok");
P = newton_interpolation(tx, ty);
display("all ok");
% xP = -1:0.01:11;
xP = -1:0.1:11;
display("before_ yp");
yP = P(tx);

scatter(tx, ty);
hold on;
plot(xP, yP, 'b-');
legend("Quadratic Spline");
% display(yP);
