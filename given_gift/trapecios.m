function I = trapecios(f, a, b, n)
    h = (b - a) / n;
    I = 0;

    for k = 1:n
        I = I + f(a + (k - 1) * h) + f(a + k * h);
    end

    I = I * h / 2;
end
