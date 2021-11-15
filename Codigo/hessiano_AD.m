% como es una funcion de una variable, el hessiano es la derivada segunda
function hess = hessiano_AD (f,a)
    fvec = f(a);
    hess = fvec(3);
end