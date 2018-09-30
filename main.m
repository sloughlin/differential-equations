%Plots Nb vs Nc on t = [0, 20]

A0 = 15000;
B0 = 5000;
C0 = 3000;

t = linspace(0, 20, 20);
%make list B of Nb(t):
B = Nb(t, A0, B0);
%make list C of Nc(t):
C = Nc(t, A0, B0, C0);


plot(t, B, t, C, 0, B0, 'o', 0, C0, 'o');
title("Nb(t) vs. Nc(t)")
ylabel("Number of atoms N")
xlabel("Time t")
legend({'Nb(t)','Nc(t)', 'B0', 'C0'},'Location','northeast')