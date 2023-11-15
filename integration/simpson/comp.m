function comp(f, a, b, n)
    err = 1 / n;
    fprintf("trapecios:\t%+6.10f \n", trapecios(f, a, b, n));
    fprintf("romberg:\t%+6.10f \n", romberg(f, a, b, err)(end:end));
    fprintf("simpson:\t%+6.10f \n", simpson(f, a, b, n));
end
