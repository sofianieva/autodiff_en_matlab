function paso = armijo_AD(a, f, d)
    t=1;
    it=0;
    fvec1 = f(a+t*d);
    fvec2 = f(a);
    while fvec1(1)>dot((fvec2(1)+0.45*t*gradiente_AD(f,a)), d) & it<5
        t = 0.7*t;
        fvec1 = f(a+t*d);
        fvec2 = f(a);
        it = it+1;
    end
    paso = t;
end