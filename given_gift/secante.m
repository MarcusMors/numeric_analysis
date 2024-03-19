function y = secante(g, x0, tol)
    k = 0;
    x1 = g(x0, tol);

    while abs(x1 - x0) >= tol
        k = k + 1;
        x0 = x1;
        fprintf('| %6.0f  | %6.8f |\n', k, x0);
        x1 = g(x0, tol);
    end

    y = x1;
end
