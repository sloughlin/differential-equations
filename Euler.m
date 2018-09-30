function E = Euler(h1,h2,h3,a,b,y0)
    total_steps_h1 = (b-a)/h1;
    total_steps_h2 = (b-a)/h2;
    total_steps_h3 = (b-a)/h3;
    
    yi1 = y0;
    yi2 = y0;
    yi3 = y0;
    
%     X_exact = linspace(a, b, total_steps_h2);
%     Y_exact = y0 * exp(-1/5 * X_exact);
    
    X1 = zeros(1, total_steps_h1);
    Y1 = zeros(1, total_steps_h1);
    
    X2 = zeros(1, total_steps_h2);
    Y2 = zeros(1, total_steps_h2);
    
    X3 = zeros(1, total_steps_h3);
    Y3 = zeros(1, total_steps_h3);
    
    e1 = zeros(1, total_steps_h1);
    e2 = zeros(1, total_steps_h2);
    e3 = zeros(1, total_steps_h3);
    
    for i = 0:total_steps_h1
        ti1 = i*h1;
        yi1 = yi1 -(1/5) * y0 * exp(-(1/5) * ti1) * h1;
        X1(1,i+1) = ti1;
        Y1(1,i+1) = yi1;
        %error func:
        y_exact = y0 * exp(-1/5 * ti1);
        e1(1, i+1) = abs(y_exact - yi1);
    end
    
    for i = 0:total_steps_h2
        ti2 = i*h2;
        yi2 = yi2 -(1/5) * y0 * exp(-(1/5) * ti2) * h2;
        X2(1,i+1) = ti2;
        Y2(1,i+1) = yi2;
        %error func:
        y_exact = y0 * exp(-1/5 * ti2);
        e2(1, i+1) = abs(y_exact - yi2);
    end
    
    for i = 0:total_steps_h3
        ti3 = i*h3;
        yi3 = yi3 -(1/5) * y0 * exp(-(1/5) * ti3) * h3;
        X3(1,i+1) = ti3;
        Y3(1,i+1) = yi3;
        %error func:
        y_exact = y0 * exp(-1/5 * ti3);
        e3(1, i+1) = abs(y_exact - yi3);
    end
    
    Y1(1,1) = y0;
    Y2(1,1) = y0;
    Y3(1,1) = y0;
    
%     plot(X1,Y1,X2,Y2,X3,Y3)
    semilogy(X1,Y1, X1,e1, X2,Y2, X2,e2, X3,Y3, X3,e3)
    title("Forward Euler Approximations and Error for h1, h2, h3")
    ylabel("Approximation of f(t) and Absolute Error")
    xlabel("Time t")
    legend({'y1, h = 1','error 1', 'y2, h = 0.1', 'error 2', 'y3, h = 0.01', 'error 3'},'Location','northeast')
end