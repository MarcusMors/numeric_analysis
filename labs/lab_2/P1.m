n = 7;
r = R(n);

[m, n] = size(r);

% for i = 1:n
%     fprintf("%3.1f\t", n - i);
% end
% fprintf("\n")
% for i = 1:n
%     fprintf("%3.1f\t", r(i));
% end
% fprintf("\n")
% disp(r(n -19));
% disp(r(n -11));

a = r(n -19) +r(n -11)

n = 5;
r = R(n);
[m, n] = size(r);

s = 0;

for i = 1:n
    s = s + r(i);
end

b = s

%
