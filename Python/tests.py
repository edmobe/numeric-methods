from bisection import *

f = "x*sin(x)-1"
tol = 0.001

print("Bisection")
print(bisection(f, 0, 2, tol))
