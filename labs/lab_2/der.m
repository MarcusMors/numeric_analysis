function pol = der (p)
    [m, n] = size(p)
    dp = [];

    for i = 1:n - 1
        dp = [dp ((n - i) * p(i))];
    end

    pol = dp;
end
