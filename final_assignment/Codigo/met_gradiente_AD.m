function minimo = met_gradiente_AD(a, f)
    it = 0;
   
    while norm(gradiente_AD(f,a))>1e-8 & it<1000
        d = -gradiente_AD(f,a);
        t = armijo_AD(a,f,d);   
        a = a+t*d;
        it = it+1;
    end
    
    minimo = a;
end