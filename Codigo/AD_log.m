function h = AD_log(u)
    h = [log(u(1)), (1/u(1))*u(2:end)];