function E = Euler2(h, a, b, y0, P, N)
    ka = 1.0/5;
    kb = 1 / 15;
    B0 = 0;
    
    total_steps = (b-a)/h;
    T = zeros(1, total_steps);
    Y = zeros(1, total_steps);
    yi = y0;
%     e = zeros(1, total_steps);
    for i = 0:total_steps
        ti = i*h;
%         yi = yi -(1/5) * y0 * exp(-(1/5) * ti) * h;
        yi = yi - f() * h;
        T(1,i+1) = ti;
        Y(1,i+1) = yi;
%         %error func:
%         y_exact = y0 * exp(-1/5 * ti);
%         e(1, i+1) = abs(y_exact - yi);
    end
    E = yi;
    
    %Function f(t, y) = y':
    function yp = f()
        if N == "A"
%             Na = P / ka - (y0 - P / ka) * exp(-ka * ti);
            yp = (-ka * y0 - P) * exp(-ka * ti);
        elseif N == "B"
%             Nb = (ka * A0 + P) / (kb - ka) * exp(-ka * t) + (B0 - (ka * y0 + P) / (kb - ka)) * exp(-kb * t);
            yp = (-ka * y0 - P) * exp(-ka * ti) - kb * (B0 - (ka * y0 + P)/(kb - ka) * exp(-kb * ti));
        elseif N == "C"
            yp = - kb * ((ka * y0 + P) / (kb - ka) * exp(-ka * ti) + (B0 - (ka * y0 + P) / (kb - ka)) * exp(-kb * ti));
        end
    end 
    E = Y;
end