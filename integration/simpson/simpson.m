% Inputs:
% func: The function to be integrated
% a, b: The limits of integration
% n: The number of subintervals (must be even)
function result = simpson(f, a, b, n)

    if mod(n, 2) ~= 0
        error('Number of subintervals (n) must be even for Simpson''s rule.');
    end

    h = (b - a) / n;

    % Calculate the sum of the function values at the even and odd indices
    even_sum = 0;
    odd_sum = 0;

    for i = 1:1:n - 1
        x_i = a + i * h;

        if mod(i, 2) == 0
            even_sum = even_sum + f(x_i);
        else
            odd_sum = odd_sum + f(x_i);
        end

    end

    % Apply Simpson's rule formula
    result = (h / 3) * (f(a) + 4 * odd_sum + 2 * even_sum + f(b));
end
