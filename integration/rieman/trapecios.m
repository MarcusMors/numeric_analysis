function A = trapecios(f, a, b, n)
    h = (b - a) / n;

    A = 0;

    for x = 1:n
        A = A + f(a + (x - 1) * h) + f(a + x * h);
    end

    A = A * h / 2;
end
