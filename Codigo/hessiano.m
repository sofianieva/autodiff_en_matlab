function hess = hessiano(f, a)
    n = size(a,2);
    H = zeros(n);
    for i=1:n
        H(i,:) = gradiente(@(a) derivada_parcial(f,a,i), a);
    end
    hess = H;
end