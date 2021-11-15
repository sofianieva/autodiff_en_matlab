function h = AD_pot_escalar(u,n)
    if isa(u,'cell')
        r = n*AD_pot_escalar(u{1},n-1).*u{2};
    else
        r = [u(1).^n, n*(u(1).^(n-1)).*u(2:end)];
    end
    h = r;