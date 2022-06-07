function h = AD_cos(u)
    h = [cos(u(1)), -sin(u(1))*u(2:end)];
end