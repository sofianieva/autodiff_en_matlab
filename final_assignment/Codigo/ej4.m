function f = ej4(x)
    % three_hump_camel
    % global minimiser: x= (0,0)
    % Has three local minima
    f = 2*x(1).^2 - 1.05*x(1).^4 + (x(1).^6)./6 + x(1).*x(2) + x(2).^2;
