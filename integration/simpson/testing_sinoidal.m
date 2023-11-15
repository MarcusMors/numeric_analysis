f1 = @(x) sin(x);
f2 = @(x) cos(x);
f3 = @(x) 2 * sin(x);
f4 = @(x) sin(2 * x);
f5 = @(x) cos(2 * x);
f6 = @(x) sin(x) + cos(x);
f7 = @(x) sin(x) - cos(x);
f8 = @(x) sqrt(2) * sin(x);
f9 = @(x) sin(x).^2;
f10 = @(x) cos(x).^2;

% 11-20: Combined trigonometric functions
f11 = @(x) sin(x) .* cos(x);
f12 = @(x) 0.5 * sin(2 * x);
f13 = @(x) 0.5 * cos(2 * x);
f14 = @(x) sin(x + pi / 4);
f15 = @(x) cos(x + pi / 4);
f16 = @(x) 0.5 * sin(x) + sqrt(3) / 2 * cos(x);
f17 = @(x) sin(x) .* cos(2 * x);
f18 = @(x) 0.5 * sin(x) - sqrt(3) / 2 * cos(x);
f19 = @(x) sin(x).^2 + cos(x).^2;
f20 = @(x) sin(x).^2 - cos(x).^2;

% 21-30: Higher-order sine and cosine functions
f21 = @(x) sin(3 * x);
f22 = @(x) cos(3 * x);
f23 = @(x) sin(x) .* cos(3 * x);
f24 = @(x) 0.5 * sin(4 * x);
f25 = @(x) 0.5 * cos(4 * x);
f26 = @(x) sin(x).^2 + sin(x) .* cos(x);
f27 = @(x) sin(x) .* cos(x).^2;
f28 = @(x) 0.5 * sin(2 * x) + sqrt(3) / 2 * cos(2 * x);
f29 = @(x) sin(x) .* cos(x) + sin(2 * x);
f30 = @(x) 0.5 * sin(2 * x) - sqrt(3) / 2 * cos(2 * x);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exact functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

e1 = cos(10) - cos(20);
e2 = -sin(10) + sin(20);
e3 = 2 * (cos(10) - cos(20));
e4 = (1 + 2 * cos(20)) * sin(10)^2;
e5 = 0.5 * (-sin(20) + sin(40));
e6 = cos(10) - cos(20) - sin(10) + sin(20);
e7 = cos(10) - cos(20) + sin(10) - sin(20);
e8 = sqrt(2) * (cos(10) - cos(20));
e9 = 0.25 * (20 + sin(20) - sin(40));
e10 = 0.25 * (20 - sin(20) + sin(40));
e11 = 0.25 * (cos(20) - cos(40));
e12 = 0.25 * (cos(20) - cos(40));
e13 = 0.25 * (-sin(20) + sin(40));
e14 = (cos(10) - cos(20) - sin(10) + sin(20)) / sqrt(2);
e15 = (-cos(10) + cos(20) - sin(10) + sin(20)) / sqrt(2);
e16 = sin(5) * (sqrt(3) * cos(15) + sin(15));
e17 = 1/6 * (-3 * cos(10) + 3 * cos(20) + cos(30) - cos(60));
e18 = sin(5) * (-sqrt(3) * cos(15) + sin(15));
e19 = 10;
e20 = 0.5 * (sin(20) - sin(40));
e21 = 1/3 * (cos(30) - cos(60));
e22 = 1/3 * (-sin(30) + sin(60));
e23 = 0.5 * (2 * cos(40) + cos(60)) * sin(10)^2;
e24 = 0.125 * (cos(40) - cos(80));
e25 = 0.125 * (-sin(40) + sin(80));
e26 = 0.125 * (-sin(40) + sin(80));
e27 = 1/3 * (cos(10)^3 - cos(20)^3);
e28 = 0.5 * sin(10) * (sqrt(3) * cos(30) + sin(30));
e29 = 3/4 * (cos(20) - cos(40));
e30 = -0.5 * sin(10) * (sqrt(3) * cos(30) - sin(30));

a = 10;
b = 10;
% sinoidal_battery = {f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30};
sinoidal_battery = {f1};
sinoidal_exact_battery = [e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28 e29 e30];

compare_functions(sinoidal_battery, a, b, sinoidal_exact_battery)
