function compare_functions(f_battery, a, b, exact)
    n = length(f_battery)

    relative_errors = zeros(1, 13);
    partition_size = [];

    for i = 1:n
        % fprintf("before err \n");
        f = f_battery{i};
        % f(10)
        % f(20)
        % f
        % % trapecios(f_battery{1}, a, b, 2)
        % % romberg(f_battery{1}, a, b, 2)

        % simpson(f, a, b, 2)
        % simpson(f, a, b, 4)
        % simpson(f, a, b, 6)
        % simpson(f, a, b, 8)
        % simpson(f, a, b, 16)
        fprintf("-------------------------------\n");
        [ns, rs] = single_relative_accuracy(f_battery{i}, a, b, exact(i));
        relative_errors = relative_errors + rs;
        partition_size = ns;
    end

    fprintf("Before plotting the relative error\n");
    relative_errors = relative_errors ./ 13;

    plot(partition_size, relative_errors);

end
