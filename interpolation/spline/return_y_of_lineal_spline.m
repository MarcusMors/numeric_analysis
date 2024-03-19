function y = return_y_of_lineal_spline(tx, ty, x)

    n = length(x);
    y = zeros(1, n);

    for i = 1:n

        if x(i) <= tx(1)
            y(i) = ty(1);
        elseif x(i) > tx(end)
            y(i) = ty(end);
        else
            lower = find(x(i) > tx, 1, 'last');
            upper = find(x(i) <= tx, 1, 'first');
            % Realiza la interpolación lineal
            y(i) = ty(lower) + (ty(upper) - ty(lower)) * (x(i) - tx(lower)) / (tx(upper) - tx(lower));
        end

    end

end
