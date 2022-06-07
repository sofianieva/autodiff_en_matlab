function grad = gradiente(f,a)
    n = size(a,2);
    g = zeros(size(a));
    for i=1:n
        g(i) = derivada_parcial(f,a,i);
    end
    grad = g;