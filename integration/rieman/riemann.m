function A = riemann(f, a, b, n)

    h = (b - a) / n;

    A = 0;

    for x = 1:n
        y1 = f(a + (x - 1) * h);
        y2 = f(a + x * h);

        A = A + y1 + y2;
    end

    A = A * h / 2;

end
