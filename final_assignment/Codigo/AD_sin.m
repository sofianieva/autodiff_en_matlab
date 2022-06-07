function h = AD_sin(u)
    h = [sin(u(1)), cos(u(1))*u(2:end)];