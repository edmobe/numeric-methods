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

disp("\nSecant");
f = x^3-3*x+2;
x0 = -2.6;
x1 = -2.4;
tol = 0.0001;
maxIter = 20;
[xn, err, iter, fx] = secant(f, x0, x1, tol, maxIter)

disp("-------- END ----------");