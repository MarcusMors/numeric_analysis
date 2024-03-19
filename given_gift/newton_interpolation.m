function p = newton_interpolation(tx, ty)
    n = length(tx);
    p = [ty(1)];

    for k = 2:n
        q = poly(tx(1:k - 1));
        A = (ty(k) - polyval(p, tx(k))) / polyval(q, tx(k));
        p = [0 p] + A * q;
    end

end

#g=@(x) x- f(x)/f'(x)
