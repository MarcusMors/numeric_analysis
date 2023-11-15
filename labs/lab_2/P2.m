P = @(t) poly([t - 2, 3 * t + 1, 2 * t - 1, 3 - t]);
Q = @(t) conv([(t - 1) 0 (t + 1) (2 - t)], [-1 0 exp(1)]);
R = @(t) [0 P(t)] + Q(t);

% r = R(0.5);
% rf = @(x) polyval(r, x);

% tx = -2.5:0.1:2.5;
% plot(tx, rf(tx));

% set(gca, "xaxislocation", "origin");
% set(gca, "yaxislocation", "origin");

ref = @(x) polyval(R(exp(1)), x);
r4f = @(x) polyval(R(4), x);
r_2f = @(x) polyval(R(-2), x);

M = (ref(0.25) - r4f(sqrt(3))) / r_2f(1)
