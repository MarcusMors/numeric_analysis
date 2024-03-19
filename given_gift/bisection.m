function m = bisection(f, a, b, tol)
    k = 0;

    while abs(a - b) > tol
        m = (a + b) / 2;
        fprintf('| %6.0f  | %6.8f |\n', k, m);

        if f(a) * f(m) < 0
            b = m;
        else
            a = m;
        end

        k = k + 1;
    end

end
