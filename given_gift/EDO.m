function EDO(f, ft, fy, ftt, fyy, fty, t0, y0, T, p)
    [t, y1] = EULER(f, t0, y0, T, p);
    [t, y2] = HEUN(f, t0, y0, T, p);
    [t, y3] = TAYLOR(f, ft, fy, t0, y0, T, p);
    [t, y4] = RK3(f, t0, y0, T, p);
    [t, y5] = TAYLOR3(f, ft, fy, ftt, fyy, fty, t0, y0, T, p);
    [t, y6] = RK4(f, t0, y0, T, p);
    fprintf('|   t   |  EULER   |   HEUN   |   TAYLOR  |   RK3   |  TAYLOR3 |   RK4   |\n');

    for k = 1:p + 1
        fprintf('| %10.6f | %10.6f | %10.6f | %10.6f | %10.6f | %10.6f | %10.6f |\n', t(k), y1(k), y2(k), y3(k), y4(k), y5(k), y6(k));
    end

    hold on
    plot(t, y1, '*b')
    plot(t, y2, '*r')
    plot(t, y3, '*g')
    plot(t, y4, '*y')
    plot(t, y5, '*m')
    plot(t, y6, '*c')

end
