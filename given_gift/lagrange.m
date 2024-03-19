function p = lagrange(tx, ty)
    n = length(tx);
    L = poly(tx(2:n));
    p = L * ty(1) / polyval(L, tx(1));

    for k = 2:n
        L = poly([tx(1:k - 1), tx(k + 1:n)]);
        p = p + L * ty(k) / polyval(L, tx(k));
    end
