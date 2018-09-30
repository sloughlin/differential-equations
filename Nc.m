function C = Nc(t, A0, B0, C0)
    kb = 1;
    ka = 1.0/5;
    
    C = (ka * A0) / (kb - ka) * exp(-ka * t) + (B0 - (ka * A0) / (kb - ka)) * exp(-kb * t) + C0;
    

    
end