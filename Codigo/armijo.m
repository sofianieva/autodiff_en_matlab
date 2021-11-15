function paso = armijo(a, f, d)
    t=1;
    it=0;
    while f(a+t*d)>dot((f(a)+0.45*t*gradiente(f,a)), d) & it<5
        t = 0.7*t;
        it = it+1;
    end
    paso = t;
end