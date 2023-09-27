function I = trapecios(f, a, b, n)
    h = (b - a) / n;

    I = 0;

    for x = 1:n
        I = I + f(a + (x - 1) * h) + f(a + x * h);
    endfor

    I = I * h / 2;
endfunction
