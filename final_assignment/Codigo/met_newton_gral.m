function minimo = met_newton_gral(a, f)
    it = 0;
    
    while norm(gradiente(f,a))>1e-8 & it<1000
        H = hessiano(f,a);
        g = gradiente(f,a);
        d = linsolve(H,(-g).').';
        t = armijo(a,f,d);
        a = a+t*d;
        it = it+1;
    end
    
    minimo = a;
end