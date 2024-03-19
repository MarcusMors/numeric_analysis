function [t, y] = TAYLOR3(f, ft, fy, ftt, fyy, fty, t0, y0, T, p)
    h = T / p;
    t = zeros(p + 1, 1);
    y = zeros(p + 1, 1);
    t(1) = t0;
    y(1) = y0;

    for i = 2:p + 1
        t(i) = t(i - 1) + h;
        a = ftt(t(i - 1), y(i - 1)) + 2 * fty(t(i - 1), y(i - 1)) * f(t(i - 1), y(i - 1)) + fyy(t(i - 1), y(i - 1)) * f(t(i - 1), y(i - 1))^2 + ft(t(i - 1), y(i - 1)) * fy(t(i - 1), y(i - 1)) + fy(t(i - 1), y(i - 1))^2 * f(t(i - 1), y(i - 1));
        y(i) = y(i - 1) + h * f(t(i - 1), y(i - 1)) + (ft(t(i - 1), y(i - 1)) + fy(t(i - 1), y(i - 1)) * f(t(i - 1), y(i - 1))) * h^2/2 + (a) * h^3/6;
    end

    %d=[t,y];
    %P=newtonp(t,y);
    %a=t0:0.01:t0+T;
    %plot(a,polyval(P,a));
    %hold on
    %plot(t,y,'*');
end
