function y = newton_root_finding(g, x0, tol)
    fprintf('saludos\n');
    fprintf('  i |         m\n');
    i = 0;
    x1 = g(x0);

    while abs(x1 - x0) >= tol
        x0 = x1;
        i = i + 1;
        fprintf('%3.0f |%6.6f\n', i, x0);
        x1 = g(x0);
    endwhile

    y = x1;
endfunction

#g=@(x) x- f(x)/f'(x)
