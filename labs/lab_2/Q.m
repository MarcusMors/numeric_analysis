function q = Q(n)

    pol = [0];

    for k = 1:n
        pol = [1 pol];
    endfor

    q = pol;

endfunction
