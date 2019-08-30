format long;
pkg load symbolic;
syms x;

f = x * sin(x) - 1;

disp("Bisection");
[xn, err, iter, fx] = bisection(f, 0, 2, 0.001)