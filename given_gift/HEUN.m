function [t, y] = HEUN(f, t0, y0, T, p)
    h = T / p;
    t = zeros(p + 1, 1);
    y = zeros(p + 1, 1);
    t(1) = t0;
    y(1) = y0;

    for i = 2:p + 1
        t(i) = t(i - 1) + h;
        y(i) = y(i - 1) + (f(t(i - 1), y(i - 1)) + f(t(i - 1) + h, y(i - 1) + h * f(t(i - 1), y(i - 1)))) * h / 2;
    end

    %d=[t,y];
    %plot(t,y,'*');
end
