function minimo = met_gradientes_conjugados_AD(a, f)
    d = -gradiente_AD(f,a);
    it = 0;
    n = size(a,2);
   
    while norm(gradiente_AD(f,a))>1e-8 & it<1000
        t = armijo_AD(a,f,d);
        b = a;
        a = b + t*d;
        
        if mod(it+1,n)~=0
            beta = dot(gradiente_AD(f,a),gradiente_AD(f,a))/dot(gradiente_AD(f,b),gradiente_AD(f,b));
        else
            beta = 0;
        end
                
        d = -gradiente_AD(f,a) + beta*d;
        it = it+1;
    end   
    minimo = a;
end