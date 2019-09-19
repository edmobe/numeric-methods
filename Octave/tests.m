format long;
pkg load symbolic;
syms x;

% GENERAL SETTINGS
tol = 0.0000001;
maxIter = 20;
disp("=============== START =================");
disp("-------- ROOT CALCULATIONS ---------");

disp("Bisection");
f = x*sin(x)-1;
a = 0;
b = 2;
[xn, err, iter, fx] = bisection(f, a, b, tol)

disp("\nNewton-Raphson");
f = e^(-x)-x;
x0 = 0;
[xn, err, iter, fx] = newton(f, x0, tol, maxIter)

disp("\nSecant");
f = x^3-3*x+2;
x0 = -2.6;
x1 = -2.4;
[xn, err, iter, fx] = secant(f, x0, x1, tol, maxIter)

disp("\nFalse Position");
f = x*sin(x)-1;
a = 0;
b = 2;
[xn, err, iter, fx] = falsePosition(f, a, b, tol, maxIter)

disp("\nFixed Point");
disp("Developing...");

disp("\nMüller");
f = sin(x)-x/2;
x0 = 2;
x1 = 2.2;
x2 = 1.8;
[xn, err, iter, fx] = muller(f, x0, x1, x2, tol, maxIter)

disp("\n---------- OPTIMIZATION -----------");
disp("Coordinate Descent");
disp("Developing...");

disp("\nNon Linear Conjugate Gradient");
disp("Developing...");

disp("\n-------- EQUATION SYSTEMS ---------");

disp("Gaussian Elimination");
A = [4 -1 2 3; 0 -2 7 -4; 0 0 6 5; 0 0 0 3];
B = [20 -7 4 6]';
X = gaussianElimination(A, B)

disp("\nLU Decomposition");
disp("Developing...");

disp("\nCholesky Decomposition");
disp("Developing...");

disp("=============== END =================");