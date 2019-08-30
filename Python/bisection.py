from sympy import *
from mpmath import *

x = symbols('x')


def bisection(f, a, b, tol):
    """ Bisection Method

    Arguments:
        f {string} -- is the polinomial expression
        a {float} -- is "a" in bisection interval [a, b]
        b {float} -- is "b" in bisection interval [a, b]
        tol {float} -- is the tolerance
    Returns:
        xn {float} -- is the solution
        err {float} -- is the error
        _iter {int} -- is the amount of iterations
        fx {float} -- is f(xn)
    Example:
        > bisection(f, 0, 2, tol)

"""
    errReturn = [0, 0, 0, 0]
    # try:
    funct = sympify(f)
    fa = funct.subs(x, a)
    fb = funct.subs(x, b)
    if (fa * fb > 0):
        return errReturn
    _iter = 1 + round((log(b - a) - log(tol)) / log(2))
    for k in range(1, _iter):
        xn = (a + b)/2
        fx = funct.subs(x, xn)
        err = abs(b - a)
        if (fx == 0):
            a = xn
            b = xn
        elif ((fb * fx) > 0):
            b = xn
            fb = fx
        else:
            a = xn
            fa = fx
        if (b - a < tol):
            break
    xn = (a + b)/2
    fx = funct.subs(x, xn)
    err = abs(b - a)
    return [xn, err, _iter, fx]
    # except:
    #print("There was an error.")
    # return errReturn
