function A = romberg(f, a, b, error)
    r(1, 1) = trapecios(f, a, b, 1);
    r(2, 1) = trapecios(f, a, b, 2);
    r(2, 2) = (4 * r(2, 1) - r(1, 1)) / 3;
    k = 2;

    while abs(r(k, k) - r(k, k - 1)) >= error
        k = k + 1;
        r(k, 1) = trapecios(f, a, b, 2^(k - 1));

        for j = 2:k
            r(k, j) = (4^(j - 1) * r(k, j - 1) - r(k - 1, j - 1)) / (4^(j - 1) - 1);
        end

    end

    A = r(k, k);
end
