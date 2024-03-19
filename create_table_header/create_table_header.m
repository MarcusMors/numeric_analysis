function create_table_header (strs, i_column = true, width = 10, separator_ch='|')

    if ischar(strs)
        disp("is vector");
        difference = (width - length(strs));
        half = idivide(difference, 2);
        left_blank = blanks(half);
        right_blank = blanks(half);

        if mod(difference, 2) == 1
            right_blank = blanks(half + 1);
        endif

        fprintf('%c%s%s%s', separator_ch, left_blank, strs, right_blank)
        printf(separator_ch)
        disp("\n")
        return;
    endif

    if i_column
        fprintf('%c i  ', separator_ch)
    else
        i = 1;
        difference = (width - length(strs{i}));
        half = idivide (difference, 2);
        left_blank = blanks(half);
        right_blank = blanks(half);
        fprintf('%c%s%s%s', separator_ch, left_blank, strs{i}, right_blank)
    endif

    for i = 2:length(strs)
        difference = (width - length(strs{i}));
        half = idivide (difference, 2);
        left_blank = blanks(half);
        right_blank = blanks(half);

        if mod(difference, 2) == 1
            right_blank = blanks(half + 1);
        endif

        fprintf('%c%s%s%s', separator_ch, left_blank, strs{i}, right_blank)
    end

    fprintf("%c\n", separator_ch)
    % disp("\n")

end
