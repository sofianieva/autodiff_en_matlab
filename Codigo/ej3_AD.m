function vec = ej3_AD(a)
% toma un vector y devulve el vector [ej3_AD(a), d(ej3_AD)/dx(a), d(ej3_AD)/dy(a)]
% ej3_AD es la funcion (4 - 2.1.*x(1).^2 + (x(1).^4)./3).*(x(1).^2) + x(1).*x(2) + (-4 + 4.*x(2).^2).*(x(2).^2)
x = [a(1),[1,0]];
y = [a(2),[0,1]];
vec = AD_mult(([4,0,0] - 2.1*AD_pot_escalar(x, 2) + (AD_pot_escalar(x, 4))./3),AD_pot_escalar(x, 2)) + AD_mult(x,y) + AD_mult(-4 + 4.*AD_pot_escalar(y, 2),AD_pot_escalar(y, 2));
end