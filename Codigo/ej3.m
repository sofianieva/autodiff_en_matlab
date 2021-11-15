function f = ej3(x)
    % six_hump_camel
    % global minimisers : x = (0.0898, -0.7126)  and  x = (-0.0898, 0.7126)
    % Has six local minima
    f = (4 - 2.1.*x(1).^2 + (x(1).^4)./3).*(x(1).^2) + x(1).*x(2) + (-4 + 4.*x(2).^2).*(x(2).^2);
