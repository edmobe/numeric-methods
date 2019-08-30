function [xn, err, iter, fx] = bisection(f, a, b, tol)
  % Input
  %   - expr is a polinomial expression introduced as a symbolic expression
  %   - a and b are [a, b]
  %   - tol is the tolerance
  % Output
  %   - x is the solution
  %   - err is the error
  %   - fx is f(x)
  % Example
  %   >> syms x;
  %   >> f = x * sin(x) - 1;
  %   >> [xn, err, iter, fx] = bisection(f, 0, 2, 0.001)
  f = function_handle(f);
  fa = f(a);
  fb = f(b);
  if fa * fb > 0
    return
  endif
  iter = 1 + round((log(b - a) - log(tol))/ log(2));
  for k = 1:iter
    xn = (a + b)/2;
    fx = f(xn);
    err = abs(b - a);
    if fx == 0
      a = xn;
      b = xn;
    elseif fb * fx > 0
      b = xn;
      fb = fx;
    else
      a = xn;
      fa = fx;
    endif
    if b - a < tol
      break
    endif
  endfor
  xn = (a + b)/2;
  fx = f(xn);
  err = abs(b - a);
endfunction