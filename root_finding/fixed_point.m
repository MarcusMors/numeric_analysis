function root = fixed_point(g, x0, tol, max_iter)
    x = x0;
    iter = 0;

    fprintf(" i |   x   \n");

    while iter < max_iter
        x_next = g(x);
        fprintf("%2.0f|%+6.6f\n", iter, x);

        if abs(x_next - x) < tol
            root = x_next;
            return;
        end

        x = x_next;
        iter = iter + 1;
    end

end

% function root = fixed_point(g, x0, tol, max_iter)
%     x = x0;
%     iter = 0;
%     ea = 0;
%     fprintf(" i |   x   \n");

%     while iter < max_iter
%         x_old = x;
%         x = g(x_old);
%         iter = iter + 1;

%         if (xr != 0)
%             ea = abs((x - x_old) ./ x) * 100
%         endif

%         % if ea < es
%         fprintf("%2.0f|%+6.6f\n", iter, x);

%         if abs(x_old - x) < tol
%             root = x_old;
%             return;
%         end

%         x = x_old;
%     end

% end

% function xfinal = fixed_point(F, x0, ftol, maxit)
%     fval = 0;
%     verbosity = 1;
%     % Arguments: (input)
%     % F - function of one variable
%     % x0 - initial value
%     % ftol - tolerance on the function value being zero
%     % maxit - maximum number of iterations allowed
%     % verbosity - (optional) flag to define output behavior, 0 = none, 1 = stuff on screen
%     %
%     % xfinal - final estimate of the root

%     if (nargin < 5) || isempty(verbosity)
%         % the default is to be comatose
%         verbosity = 1;
%     end

%     % initialize for iteration
%     itercount = 0;
%     xfinal = x0;
%     fval = F(x0);
%     ferr = abs(fval);

%     if verbosity
%         disp('Current x, Fval, Ferr')
%     end

%     % just a while loop that goes until it runs out of time, or it gets lucky
%     % and "converges"
%     while (ferr > ftol) && (itercount < maxit)
%         itercount = itercount + 1;

%         xprev = xfinal;

%         % the iteration itself
%         fval = F(xfinal);
%         xfinal = fval + xfinal;

%         % how far from 0 is the current iteration?
%         ferr = abs(fval);

%         if verbosity
%             disp([xfinal, fval, ferr])
%         end

%     end
