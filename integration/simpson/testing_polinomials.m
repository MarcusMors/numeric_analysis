% Define coefficients for 30 polynomial functions
c1 = [2, -5, 7, 1];
c2 = [1, -3, 5, 2, -8];
c3 = [0.5, 0, 4, -3];
c4 = [-2, 0, 1, 0, 6, -9];
c5 = [3, 1, -2, 5, -1];
c6 = [4, -7, 2, 8];
c7 = [-1, 3, 4];
c8 = [1, -2, 5, -8, 6];
c9 = [0.5, 0, -3, 2, 1];
c10 = [-2, 0, 0, 4, -1];
c11 = [3, -1, 7];
c12 = [-1, 2, 5, -3];
c13 = [4, -1, 2, -5, 1];
c14 = [1, -2, 3, -4];
c15 = [-3, 2, 7, -1];
c16 = [2, -3, 1, -4, 5, -1];
c17 = [-1, 4, -2];
c18 = [3, 2, -1, 5, -3];
c19 = [2, -5, 1, 6];
c20 = [-4, 1, -3, 2, -7];
c21 = [1, 2, -4, 1];
c22 = [-3, 1, 5, -2, 8];
c23 = [2, 3, -1];
c24 = [-1, 0, 0, 3, -2, 7];
c25 = [4, -2, 1, 5];
c26 = [-3, 1, 2, -5, 1];
c27 = [1, -3, 4];
c28 = [2, 1, -4, 6];
c29 = [-1, 3, 5, -2, 1];
c30 = [3, -2, 7];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function evaluation the pol
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f1 = @(x) polyval(c1, x);
f2 = @(x) polyval(c2, x);
f3 = @(x) polyval(c3, x);
f4 = @(x) polyval(c4, x);
f5 = @(x) polyval(c5, x);
f6 = @(x) polyval(c6, x);
f7 = @(x) polyval(c7, x);
f8 = @(x) polyval(c8, x);
f9 = @(x) polyval(c9, x);
f10 = @(x) polyval(c10, x);
f11 = @(x) polyval(c11, x);
f12 = @(x) polyval(c12, x);
f13 = @(x) polyval(c13, x);
f14 = @(x) polyval(c14, x);
f15 = @(x) polyval(c15, x);
f16 = @(x) polyval(c16, x);
f17 = @(x) polyval(c17, x);
f18 = @(x) polyval(c18, x);
f19 = @(x) polyval(c19, x);
f20 = @(x) polyval(c20, x);
f21 = @(x) polyval(c21, x);
f22 = @(x) polyval(c22, x);
f23 = @(x) polyval(c23, x);
f24 = @(x) polyval(c24, x);
f25 = @(x) polyval(c25, x);
f26 = @(x) polyval(c26, x);
f27 = @(x) polyval(c27, x);
f28 = @(x) polyval(c28, x);
f29 = @(x) polyval(c29, x);
f30 = @(x) polyval(c30, x);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exact functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

e1 = int(c1);
e2 = int(c2);
e3 = int(c3);
e4 = int(c4);
e5 = int(c5);
e6 = int(c6);
e7 = int(c7);
e8 = int(c8);
e9 = int(c9);
e10 = int(c10);
e11 = int(c11);
e12 = int(c12);
e13 = int(c13);
e14 = int(c14);
e15 = int(c15);
e16 = int(c16);
e17 = int(c17);
e18 = int(c18);
e19 = int(c19);
e20 = int(c20);
e21 = int(c21);
e22 = int(c22);
e23 = int(c23);
e24 = int(c24);
e25 = int(c25);
e26 = int(c26);
e27 = int(c27);
e28 = int(c28);
e29 = int(c29);
e30 = int(c30);

a = 10;
b = 10;

% e10
% int(e10)

sinoidal_battery = {f1 f2 f3};
% sinoidal_battery = {f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24 f25 f26 f27 f28 f29 f30};

sinoidal_exact_battery = [e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28 e29 e30];

dummy(sinoidal_battery, -5, 5, sinoidal_exact_battery)
