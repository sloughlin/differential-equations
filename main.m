clear ItemType all; %necessary to make Nb run more than once without restarting matlab
% Problem 4

%Plots Nb vs Nc on t = [0, 20]

A0 = 15000;
B0 = 0;
C0 = 0;
kb = 1/15;
t = linspace(0, 50, 20);
%make list B of Nb(t):
B = Nb(t, A0, B0, kb);
%make list C of Nc(t):
C = Nc(t, A0, B0, C0, kb);


plot(t, B, t, C, 0, B0, 'o', 0, C0, '*');
title("Nb(t) vs. Nc(t)")
ylabel("Number of atoms N")
xlabel("Time t")
legend({'Nb(t)','Nc(t)', 'B0', 'C0'},'Location','northeast')


%problem 6
%production rate of A is P = 5; 000 atoms/s and the values of the rate constants kA and
% kB are the same as in the previous problems. Use Euler's method and a step size of h = 0:01 to solve
% each of the DEs over the range t  [0; 100] seconds.
    %equation Na with P represented by function NaP
P = 5000;
h = 0.01;
a = 0;
b = 100;
t = linspace(0, 100, (b-a)/h+1);

Na = Euler2(h, a, b, A0, P, "A");
Nb = Euler2(h, a, b, A0, P, "B");
Nc = Euler2(h, a, b, A0, P, "C");
semilogy(t, Na, t, Nb, t, Nc);
legend({'Na', 'Nb', 'Nc'},'Location','southeast');
title("Plot of Na, Nb, Nc over time with P=5000")
ylabel("Number of Atoms");
xlabel("Time t");

    