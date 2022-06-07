function h = AD_sqrt(u)
    h = [sqrt(u(1)), u(2:end)/(2*sqrt(u(1)))];