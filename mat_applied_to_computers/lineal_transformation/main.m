A = [1; 3];
B = [2; 1];

Ap = [-1; 1];
Bp = [5; 3];

% T AB = ApBp;
% T = ApBp inv(AB);
AB = [A, B];
ABp = [Ap, Bp];
format rat;
T = ABp * inv(AB)

disp(T);

E = [-1, 5; 1, 3]
% disp(E * T);
