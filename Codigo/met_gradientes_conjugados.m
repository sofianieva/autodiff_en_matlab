function minimo = met_gradientes_conjugados(a, f)
    d = -gradiente(f,a);
    it = 0;
    n = size(a,2);
   
    while norm(gradiente(f,a))>1e-8 & it<1000
        t = armijo(a,f,d);
        b = a;
        a = b + t*d;
        
        if mod(it+1,n)~=0
            beta = dot(gradiente(f,a),gradiente(f,a))/dot(gradiente(f,b),gradiente(f,b));
        else
            beta = 0;
        end
                
        d = -gradiente(f,a) + beta*d;
        it = it+1;
    end   
    minimo = a;
end