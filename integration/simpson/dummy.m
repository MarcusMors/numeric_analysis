function dummy(f_battery, a, b, exact_battery)
    n = length(f_battery);
    min_exp = 4;
    max_exp = 14;
    simpson_rel_errs = zeros(1, max_exp - min_exp + 1);
    trapecios_rel_errs = zeros(1, max_exp - min_exp + 1);
    partition_size = [];

    counter = 0;
    simp_mean = 0;
    trap_mean = 0;

    for i = 1:n
        counter = counter + 1;

        [ns, rs] = single_relative_accuracy(f_battery{i}, a, b, exact_battery(i), max_exp);
        % simpson_rel_errs = simpson_rel_errs + rs;

        [nt, rt] = trapecios_rel_err(f_battery{i}, a, b, exact_battery(i), max_exp)
        % trapecios_rel_errs = trapecios_rel_errs + rt;

        partition_size = ns;

        simp_mean = simp_mean + (rs - simp_mean) ./ counter;
        trap_mean = trap_mean + (rt - trap_mean) ./ counter;
    endfor

    % simpson_rel_errs = simpson_rel_errs ./ length(simpson_rel_errs);
    % trapecios_rel_errs = trapecios_rel_errs ./ length(trapecios_rel_errs);

    simpson_rel_errs = simp_mean;
    trapecios_rel_errs = trap_mean;

    % semilogx(partition_size, simpson_rel_errs, "b-", 'LineWidth', 2, 'DisplayName', 'Simpson method');
    % hold on;
    % semilogx(partition_size, trapecios_rel_errs, 'g-', 'LineWidth', 2, 'DisplayName', 'Trapezoid method');

    % set(gca, 'XScale', 'log', 'XTick', [0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536]);
    % set(gca, 'YScale', 'log', 'YTick', 10.^(-2:40));

    % xlabel('log_2(x)');
    % ylabel('y');
    % title("Inverse of relative error of sinuidal functions, Simpson vs Trapezoid");

    % scatter(partition_size, simpson_rel_errs);
    % scatter(partition_size, trapecios_rel_errs);
    % legend('Location', 'northwest');

    plot(partition_size, simpson_rel_errs, "b-", "LineWidth", 2, 'DisplayName', 'Simpson method');
    hold on;
    plot(partition_size, trapecios_rel_errs, "g-", "LineWidth", 2, 'DisplayName', 'Trapezoid method');
    scatter(partition_size, simpson_rel_errs);
    scatter(partition_size, trapecios_rel_errs);
    legend('Location', 'northwest');

endfunction
