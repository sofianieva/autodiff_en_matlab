function vec = ej1_AD(a)
% toma un escalar y devulve el vector [ej1_AD(a), ej1_AD'(a)]
% ej1_AD es la funcion exp(-sqrt(x))*sin(x*log(1+x^2))
x = [a, 1];
vec = AD_mult(AD_exp(-AD_sqrt(x)), AD_sin(AD_mult(x, AD_log([1,0]+AD_pot_escalar(x, 2)))));
end