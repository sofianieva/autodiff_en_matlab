function vec = ej2_AD(a)
% toma un escalar y devulve el vector [ej2_AD(a), ej2_AD'(a), ej2_AD''(a)]
% ej2_AD es la funcion x^4 - x^2
x = [a, 1];
vec1 = AD_pot_escalar(x, 4)-AD_pot_escalar(x, 2);
x = {[a, 1], 1};
vec2 = AD_pot_escalar(x, 4)-AD_pot_escalar(x, 2);
vec = [vec1(1), vec2];
end