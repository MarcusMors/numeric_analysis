function pol = int(p)
    [m, n] = size(p);
    ip = [];

    for i = 1:n
        ip = [ip (p(i) / (n - i + 1))];
    endfor

    ip = [ip 0];

    pol = ip;
endfunction
