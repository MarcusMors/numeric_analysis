precision = 8;
% x = 12.3456789;
x = 0.34567;
num_int_digits = length(num2str(floor(abs(x))));
disp(num_int_digits);
t_format = sprintf("%%.%df", precision - num_int_digits);
printf(t_format, x);
