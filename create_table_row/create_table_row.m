function create_table_row(nums, i_column = true, precision = 8, separator_ch='|')
    t_width = precision + 1;

    i = 1;

    if i_column
        fprintf('%c %02d ', separator_ch, nums{i})
    else
        num_int_digits = length(num2str(floor(abs(nums{i})))) - 1;
        t_format = sprintf("%c%%+.%df", separator_ch, precision - num_int_digits);
        fprintf(t_format, nums{i});
    endif

    for i = 2:length(nums)
        num_int_digits = length(num2str(floor(abs(nums{i})))) - 1;
        t_format = sprintf("%c%%+.%df", separator_ch, precision - num_int_digits);
        fprintf(t_format, nums{i});
    endfor

    fprintf("%c\n", separator_ch)

endfunction
