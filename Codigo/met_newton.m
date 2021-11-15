% a: punto de inicializacion

function root = met_newton(a, f)
delta = 1;
it = 1;
while abs(delta) > .000001 && it<750
    delta = f(a)/derivada_centrada(f,a);
    a = a - delta;
    it = it+1;
end
root = a;