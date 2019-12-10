function [L1, L2, L3, L4, e1, e2, e3, e4] = Lebesgue_constants_and_errors()

    f = @(x) 1 ./ (1 + (sin(2 * pi * x)).^2);

    % L1:
    N = 14;
    x = linspace(-1, 1, 1000)';
    xi = linspace(-1, 1, N);
    yi = f(x); 
    y2 = f(xi);
    P1 = Lagrange_interpolation(xi, y2, x);
    L1 = compute_Lebesgue_function(xi, x);
    e1 = max(yi - P1);
    
    figure(1)
    clf
    hold on
    plot(x, yi, 'b')
    plot(x, L1, 'r')
    
    % L2:
    N = 40;
    x = linspace(-1, 1, 1000)';
    xi = linspace(-1, 1, N);
    yi = f(x); 
    y2 = f(xi);
    P2 = Lagrange_interpolation(xi, y2, x);
    L2 = compute_Lebesgue_function(xi, x);
    e2 = max(yi - P2);
    
    figure(2)
    clf
    hold on
    plot(x, yi, 'b')
    plot(x, L2, 'r')
    
    % L3:
    N = 14;
    x = linspace(-1, 1, 1000)';
    i = 0:1:N;
    xi = cos(pi.*i/N);
    yi = f(x); 
    y2 = f(xi);
    P3 = Lagrange_interpolation(xi, y2, x);
    L3 = compute_Lebesgue_function(xi, x);
    e3 = max(yi - P3);
    
    figure(3)
    clf
    hold on
    plot(x, yi, 'b')
    plot(x, L3, 'r')
    
    % L4:
    N = 40;
    x = linspace(-1, 1, 1000)';
    i = 0:1:N;
    xi = cos(pi.*i/N);
    yi = f(x); 
    y2 = f(xi);
    P4 = Lagrange_interpolation(xi, y2, x);
    L4 = compute_Lebesgue_function(xi, x);
    e4 = max(yi - P4);
    
    figure(4)
    clf
    hold on
    plot(x, yi, 'b')
    plot(x, L4, 'r')


end

