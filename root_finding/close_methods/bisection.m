% binary slicing, bisection method, interval partition or Bolzano method.

% incremental type
function b = bisection(f, low, upp, precision=6,err=0.000001)


    l = low;
    u = upp;
    fl = f(l);
    fu = f(u);
    if sign (fl) == sign(fu)
      disp("error, f(low) and f(upp) have the same sign, cannot find root through bisection method.")
      return;
    endif
    m = (l + u) / 2;
    fm = f(m);


    strs = {"i","l","u","m","f(m)"};

    separator_ch = '|';
    create_table_header(strs,true,precision+3);

    i = 1;
    while abs(fm) > err
        nums = {i,l,u,m,fm};
        create_table_row(nums,true,precision,separator_ch);

        if( sign(fl) ==sign(fm) )
          l = m;
          fl = fm;
        else
          u = m;
          fu =fm;
        endif

        m = (l+u)/2;
        fm = f(m);

        i +=1;
    endwhile

    printf("\n");
    b = m;

endfunction
