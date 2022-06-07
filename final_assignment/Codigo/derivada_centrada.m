function der = derivada_centrada(f, a)
    h = 0.1;
    z = (f(a+h)-f(a-h))/(2*h);
    h = h/2;
    y = (f(a+h)-f(a-h))/(2*h);
    error = norm(y-z);
    it = 1;
    while it<1000 & error>1e-8 & ~isinf(y) & ~isnan(y) & y~= 0
        error = norm(y-z);
        z = y;
        h = h/2;
        y = (f(a+h)-f(a-h))/(2*h);
        it = it + 1;
    end
    der = z;
    