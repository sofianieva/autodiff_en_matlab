import numpy as np

# Puntos iniciales de cada funcion (estan en orden)
puntos_iniciales = [np.array([-2, 1]), np.array([-0.21691, -0.122605]), np.array([2, 1]), np.array([-2, 2]),
                    np.array([0.4, 1., 0.]), np.array([1, 1]), np.array([0.5, 0.5]), np.array([-2, 1]),
                    np.array([0.5, 0.5, 0.5, 0.5]), np.array([-1, -1, -1]), np.array([1, 1]), np.array([-1, 2]),
                    np.array([-8, -5]), np.array([3, 2]), np.array([1, 2]), np.array([2, -1]), np.array([5, 2]),
                    np.array([-2, 4]), np.array([-1, 5, 1]), np.array([-1, 1, 2])]


# x0 = np.array([-2, 1])
def f0(x, d=2):
    return -0.1 * sum(np.cos(5 * np.pi * x[i]) for i in range(d)) + sum(x[i] ** 2 for i in range(d))


# x0 = np.array([-0.21691, -0.122605])
def f1(x):
    s1 = np.exp(-x[0] ** 2 - x[1] ** 2)
    s2 = np.exp(-(x[0] - 1) ** 2 - (x[1] - 1) ** 2)
    return (s1 - s2) * 2


# x0 = np.array([2, 1])
def f2(x):
    s1 = np.exp(-x[0] ** 2 - x[1] ** 2)
    s2 = np.exp(-(x[0] - 1) ** 2 - (x[1] - 1) ** 2)
    return (s1 - s2) * 2


# x0 = np.array([-2, 2])
def f3(x):
    return (x[0]-2)**2 + (x[1]+1)**2


# x0 = np.array([0.4, 1, 0])
def f4(x):
    c = [0.0009, 0.0044, 0.0175, 0.0540, 0.1295, 0.2420, 0.3521, 0.3989]
    y = np.array(c + list(reversed(c[:-1])))
    return sum((x[0]*np.exp((-x[1]*(((8-i)/2 - x[2])**2))/2)-y[i])**2 for i in range(15))


# x0 = np.array([1,1])
def f5(x):
    return (1.5-x[0] + x[0]*x[1])**2 + (2.25-x[0] + x[0]*x[1]**2) ** 2 + (2.625 - x[0] + x[0] * x[1] ** 3) ** 2


# x0 = np.array([0.5, 0.5])
def f6(x, d=2):
    return sum((d - sum(np.cos(x[j]) for j in range(d)) + i*(1-np.cos(x[i])) - np.sin(x[i]))**2 for i in range(d))


# x0 = np.array([-2, 1])
def f7(x):
    return np.cos(x[0]) ** 2 + np.sin(x[1]) ** 2


# x0 = np.array([0.5, 0.5, 0.5, 0.5])
def f8(x, d=4):
    return sum((x[i] + sum(x[j] for j in range(d)) - (d + 1))**2 for i in range(d)) + (np.prod(x) - 1)**2


# x0 = np.array([-1, -1, -1])
def f9(x):
    s1 = (3-2*x[0])*x[0] - 2*x[1] + 1
    s2 = (3-2*x[1])*x[1] - x[0] - 2*x[2] + 1
    s3 = (3-2*x[2])*x[2] - x[1] + 1
    return s1**2 + s2**2 + s3**2


# x0 = np.array([1, 1])
def f10(x):
    return x[0] ** 2 + 2 * (x[1] ** 2) - 0.3 * np.cos(3 * np.pi * x[0]) - 0.4 * np.cos(4 * np.pi * x[1]) + 0.7


# x0 = np.array([-1, 2])
def f11(x):
    return (x[0] + 2*x[1] - 7)**2 + (2*x[0] + x[1] - 5)**2


# x0 = np.array([ -8, -5])
def f12(x):
    return (x[0] + 10)**2 + (x[1] + 10)**2 + np.exp(-x[0]**2 - x[1]**2)


# x0 = np.array([3, 2])
def f13(x):
    return -np.cos(x[0]) * np.cos(x[1]) * np.exp(-(x[0] - np.pi) ** 2 - (x[1] - np.pi) ** 2)


# x0 = np.array([1, 2])
def f14(x):
    return 0.6 + sum((np.sin(1 - 16 / 15 * x[i]))**2 - 1 / 50 * np.sin(4 - 64 / 15 * x[i]) -
                     np.sin(1 - 16 / 15 * x[i]) for i in range(2))


# x0 = np.array([2, -1])
def f15(x):
    return x[0]**4 + x[1]**4 + 2*(x[0]**2)*(x[1]**2) - 4*x[0] + 3


# x0 = np.array([5,2])
def f16(x):
    return (np.sin(x[0] - x[1]) ** 2) * (np.sin(x[0] + x[1]) ** 2) / np.sqrt(x[0] ** 2 + x[1] ** 2)


# x0 = np.array([-2,4])
def f17(x):
    return np.cos(x[0]) * np.sin(x[1]) - x[0] / (x[1] ** 2 + 1)


# x0 = np.array([-1,5, 1])
def f18(x):
    d = 3
    return sum((x[i] - d)**2 for i in range(d))


# x0 = np.array([-1, 1, 2])
def f19(x):
    d = 3
    s1 = sum(x[i]**2 for i in range(d))
    s2 = sum(0.5*(i+1)*x[i] for i in range(d))**2
    s3 = sum(0.5*(i+1)*x[i] for i in range(d))**4
    return s1 + s2 + s3

