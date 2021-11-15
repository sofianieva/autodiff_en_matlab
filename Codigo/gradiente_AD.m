function grad = gradiente_AD (f,a)
    n = size(a,2);
    fvec = f(a);
    grad = fvec(2:n+1);
end