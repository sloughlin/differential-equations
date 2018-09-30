function B = Nb(t, A0, B0)
    kb = 1;
    ka = 1.0/5;
    
    B = (ka * A0) / (kb - ka) * exp(-ka * t) + (B0 - (ka * A0) / (kb - ka)) * exp(-kb * t);
    

    
end