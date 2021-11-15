function h = AD_mult(u,v)
    h = [u(1)*v(1), u(2:end)*v(1) + u(1)*v(2:end)];