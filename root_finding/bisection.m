function r = bisection(f, a, b, tol)
    m = (a + b) / 2;
    k = 0;

    fprintf(" i| f(m)  |    m\n");

    while abs(b - a) / 2 > tol
        k = k + 1;

        fprintf("%2.0f|%+6.6f|%+6.6f\n", k, f(m), m);

        if (f(a) * f(m)) < 0
            b = m;
        elseif (f(a) * f(m)) == 0
            r = m;
            break;
        else
            a = m;
        end

        m = (a + b) / 2;
    end

    r = m;
end
