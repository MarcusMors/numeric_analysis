% Set of 30 logarithmic functions in MATLAB

% Common logarithm (base 10)
f1 = @(x) log10(x);

% Natural logarithm (base e)
f2 = @(x) log(x);

% Logarithm with base 2
f3 = @(x) log2(x);

% Custom bases and constants
f4 = @(x) 2 * log10(x) + 3;
f5 = @(x) 0.5 * log(x) - 2;
f6 = @(x) 3 * log2(x) + 1;

f7 = @(x) log10(x) + 5;
f8 = @(x) 2 * log(x) - 4;
f9 = @(x) 0.5 * log2(x) + 2;

f10 = @(x) 1.5 * log10(x) + 2;
f11 = @(x) log(x) + 1;
f12 = @(x) 4 * log2(x) - 3;

f13 = @(x) 0.8 * log10(x) + 4;
f14 = @(x) 2.5 * log(x) + 3;
f15 = @(x) 1.2 * log2(x) - 1;

f16 = @(x) 1.8 * log10(x) + 2;
f17 = @(x) 2.2 * log(x) - 1;
f18 = @(x) 0.7 * log2(x) + 5;

f19 = @(x) log10(x) - 2;
f20 = @(x) 2 * log(x) + 3;
f21 = @(x) 0.5 * log2(x) - 4;

f22 = @(x) 1.5 * log10(x) + 1;
f23 = @(x) log(x) + 2;
f24 = @(x) 3 * log2(x) - 2;

f25 = @(x) 0.8 * log10(x) + 3;
f26 = @(x) 2.5 * log(x) + 2;
f27 = @(x) 1.2 * log2(x) - 3;

f28 = @(x) 1.8 * log10(x) + 1;
f29 = @(x) 2.2 * log(x) - 3;
f30 = @(x) 0.7 * log2(x) + 4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exact functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 1.1;
b = 100;

e1 = quad(f1, a, b);
e2 = quad(f2, a, b);
e3 = quad(f3, a, b);
e4 = quad(f4, a, b);
e5 = quad(f5, a, b);
e6 = quad(f6, a, b);
e7 = quad(f7, a, b);
e8 = quad(f8, a, b);
e9 = quad(f9, a, b);
e10 = quad(f10, a, b)
e11 = quad(f11, a, b);
e12 = quad(f12, a, b);
e13 = quad(f13, a, b);
e14 = quad(f14, a, b);
e15 = quad(f15, a, b);
e16 = quad(f16, a, b);
e17 = quad(f17, a, b);
e18 = quad(f18, a, b);
e19 = quad(f19, a, b);
e20 = quad(f20, a, b);
e21 = quad(f21, a, b);
e22 = quad(f22, a, b);
e23 = quad(f23, a, b);
e24 = quad(f24, a, b);
e25 = quad(f25, a, b);
e26 = quad(f26, a, b);
e27 = quad(f27, a, b);
e28 = quad(f28, a, b);
e29 = quad(f29, a, b);
e30 = quad(f30, a, b);

% logarithmic_battery = {f1 f2 f3};
logarithmic_battery = {f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30};

logarithmic_exact_battery = [e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28 e29 e30];

dummy(logarithmic_battery, a, b, logarithmic_exact_battery)
