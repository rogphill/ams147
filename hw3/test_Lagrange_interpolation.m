function [x,f,P1,P2,P3,P4] = test_Lagrange_interpolation()

    f = @(x) 1 ./ (1 + (sin(2 * pi * x)).^2);
    
    % P1:
    N = 14;
    x = linspace(-1, 1, 1000)';
    xi = linspace(-1, 1, N);
    yi = f(x); 
    y2 = f(xi);
    P1 = Lagrange_interpolation(xi, y2, x);
    
    figure(1)
    clf
    hold on
    plot(x, yi, 'b')
    plot(xi, y2, 'k*')
    plot(x, P1, 'r')
    
    % P2:
    N = 40;
    x = linspace(-1, 1, 1000)';
    xi = linspace(-1, 1, N);
    yi = f(x); 
    y2 = f(xi);
    P2 = Lagrange_interpolation(xi, y2, x);
    
    figure(2)
    clf
    hold on
    plot(x, yi, 'b')
    plot(xi, y2, 'k*')
    plot(x, P2, 'r')
    ylim([0 2])
    
   % P3:
    N = 14;
    i = 0:1:N;
    x = linspace(-1, 1, 1000)';
    xi = cos(pi.*i/N);
    yi = f(x); 
    y2 = f(xi);
    P3 = Lagrange_interpolation(xi, y2, x);
    
    figure(3)
    clf
    hold on
    plot(x, yi, 'b')
    plot(xi, y2, 'k*')
    plot(x, P3, 'r')
    
    % P4:
    N = 40;
    i = 0:1:N;
    x = linspace(-1, 1, 1000)';
    xi = cos(pi.*i/N);
    yi = f(x); 
    y2 = f(xi);
    P4 = Lagrange_interpolation(xi, y2, x);
    
    figure(4)
    clf
    hold on
    plot(x, yi, 'b')
    plot(xi, y2, 'k*')
    plot(x, P4, 'r')

end