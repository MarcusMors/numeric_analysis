function s = sumv(v)
    s = v(1);

    for i = 2:length(v)
        s = s + v(i);
    end

end
