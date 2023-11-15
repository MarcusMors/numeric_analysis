function [partition_size, relative_err] = single_relative_accuracy(f, a, b, exact_val, max_exp)
    n = 16;
    n_max = 2^max_exp;

    ns = [];
    rs = [];

    while n <= n_max;
        ns = [n ns];
        aprox = simpson(f, a, b, n);

        top = abs(exact_val - aprox);

        if (top == 0)
            top = realmin("double");
        end

        bot = abs(exact_val);

        relative_accuracy = bot / top;
        rs = [relative_accuracy rs];
        n = n * 2;
    endwhile

    partition_size = ns;
    relative_err = rs;

endfunction
