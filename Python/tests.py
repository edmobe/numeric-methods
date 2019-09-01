from bisection import *
from newton import *

print("Bisection")
f = "x*sin(x)-1"
a = 0
b = 2
tol = 0.001
print(bisection(f, a, b, tol))

print("\nNewton-Raphson")
f = "exp(-x)-x"
x0 = 0
tol = 0.0001
maxIter = 20
print(newton(f, x0, tol, maxIter))
