function h = AD_exp(u)
    h = [exp(u(1)), exp(u(1))*u(2:end)];