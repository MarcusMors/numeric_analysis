function r = intervalo(f, a, b, dx)

    while a < b
        c = f(a);
        fprintf('|%3.2f | %3.6f \n', a, c);
        a = a + dx;
    end

end
