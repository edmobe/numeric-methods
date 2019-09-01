format long;
pkg load symbolic;
syms x;

disp("-------- START ---------");

disp("Bisection");
f = x*sin(x)-1;
a = 0;
b = 2;
tol = 0.001;
[xn, err, iter, fx] = bisection(f, a, b, tol)

disp("\nNewton-Raphson");
f = e^(-x)-x;
x0 = 0;
tol = 0.0001;
maxIter = 20;
[xn, err, iter, fx] = newton(f, x0, tol, maxIter)

disp("-------- END ----------");