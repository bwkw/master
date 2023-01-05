import sympy

#式を定義
x = sympy.Symbol('x')
y = sympy.Symbol('y')
ex1 = 2.16174*x - 6.28497*x**2 + 15.5079*x**3 - 19.7859*x**4 + 10.0914*x**5 - y
ex2 = x - y

print(sympy.solve([ex1, ex2]))
