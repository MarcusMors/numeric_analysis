function y = newton(g, x0, tol)
    x1 = g(x0);
    k = 0;
    fprintf('|   k    |     m     |\n');
    fprintf('|--------|-----------|\n');
    fprintf('| %6.0f  |   %6.7f   |\n', k, x0);

    while abs(x1 - x0) >= tol
        k = k + 1;
        fprintf('| %6.0f  |   %6.7f   |\n', k, x1);
        x0 = x1;
        x1 = g(x0);
    end

    y = x1;
end

#g=@(x) x- f(x)/f'(x)
