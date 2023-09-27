function y_eval = cubic_spline(x, y, x_eval)
    num_segments = length(x) - 1;
    coefficients = zeros(num_segments, 4);

    for i = 1:num_segments
        h = x(i + 1) - x(i);
        A = [1, x(i), x(i)^2, x(i)^3;
            1, x(i + 1), x(i + 1)^2, x(i + 1)^3;
            0, 1, 2 * x(i), 3 * x(i)^2;
            0, 1, 2 * x(i + 1), 3 * x(i + 1)^2];
        b = [y(i); y(i + 1); 0; 0];
        coefficients(i, :) = A \ b;
    end

    % Evaluate the cubic spline
    y_eval = zeros(size(x_eval));

    for i = 1:num_segments
        idx = x_eval >= x(i) & x_eval <= x(i + 1);
        y_eval(idx) = coefficients(i, 1) + coefficients(i, 2) * x_eval(idx) + coefficients(i, 3) * x_eval(idx).^2 + coefficients(i, 4) * x_eval(idx).^3;
    end

end
