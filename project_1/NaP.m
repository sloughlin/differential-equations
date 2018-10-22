function A = NaP(t, A0, P)
    ka = 1.0/5;
    A = P / ka - (A0 - P / ka) * exp(-ka * t);


end