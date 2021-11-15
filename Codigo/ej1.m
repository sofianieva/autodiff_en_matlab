function f = ej1(x)
    % zeros: x = 0, x = 1.9758175..., x = 2.8456302..., x = 3.5854013..., x ? 4.2579565...
    f = exp(-sqrt(x)).*sin(x.*log(1+x.^2));
end