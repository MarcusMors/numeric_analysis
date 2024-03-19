function s = sumnopri(n)
    s = 0;

    for i = 1:n
        s = s + nopri(i);
    end

end
