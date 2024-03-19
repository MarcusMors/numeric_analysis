function pol = R(n)
    p = P(n);
    q = Q(n);

    l = conv(p, conv(p, p));
    r = conv(q, q);

    [lm, ln] = size(l);
    [rm, rn] = size(r);

    pol = l + [zeros(1, ln - rn) r];

end
