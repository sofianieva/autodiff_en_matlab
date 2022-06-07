function h = AD_div(u,v)
    h = [u(1)/v(1), (u(2:end)*v(1)-u(1)*v(2:end))/(v(1))^2];