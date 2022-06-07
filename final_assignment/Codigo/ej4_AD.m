function vec = ej4_AD(a)
    % toma un vector y devulve el vector [ej4_AD(a), d(ej4_AD)/dx(a), d(ej4_AD)/dy(a)]
    % ej4_AD es la funcion 2*x(1).^2 - 1.05*x(1).^4 + (x(1).^6)./6 + x(1).*x(2) + x(2).^2
    x = [a(1),[1,0]];
    y = [a(2),[0,1]];
    vec = 2*AD_pot_escalar(x, 2) - 1.05*AD_pot_escalar(x, 4) + (AD_pot_escalar(x, 6))./6 + AD_mult(x,y) + AD_pot_escalar(y, 2);
end