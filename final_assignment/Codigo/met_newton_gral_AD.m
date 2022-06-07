function minimo = met_newton_gral_AD(a, f)
    it = 0;
    
    while norm(gradiente_AD(f,a))>1e-8 & it<1000
        H = hessiano_AD(f,a);
        g = gradiente_AD(f,a);
        d = -g/H;
        t = armijo_AD(a,f,d);
        a = a+t*d;
        it = it+1;
    end
    
    minimo = a;
end