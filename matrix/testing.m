I = eye(3);
A = [0 0 7; 0 0.657 0; 12.547 0 0];

tmp = A(3, :);
A(3, :) = A(1, :);
A(1, :) = tmp;
% disp(A)
% fprintf(A)

B = inv(A)
INV = inversa_matriz(A)
