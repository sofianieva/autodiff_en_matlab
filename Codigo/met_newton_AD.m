% a: punto de inicializacion

function root = met_newton_AD(a, f)
delta = 1;
it = 1;
while abs(delta) > .000001 && it<750
    fvec = f(a);
    delta = fvec(1)/fvec(2);
    a = a - delta;
    it = it+1;
end
root = a;