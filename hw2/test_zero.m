function [zc,ec,x,f] = test_zero()
    % Title: TEST_ZERO
    % Author: Robert George Phillips (rogphill@ucsc.edu)
    % Credit/resource: Lia's TA section
    % Description: Tests the zeroes of the function CHORD_METHOD.

    func = @(x) 16*x.^5 - 20*x.^3 + 5*x;
    a = -0.99;
    b = -0.9;
    Nmax = 20000;
    tol = 10e-15;
    
    [z0,iter,res,his] = chord_method(func, a, b, tol, Nmax);
    
    zc = z0;
    ec = abs(z0 - his);  
    x = linspace(-1, 1, 1000);
    f = func(x);
    
    % Plot the function:
    figure(1)
    plot(x, f)
    title('f(x)');
    
    % Plot the convergence history:
    figure(2)
    semilogy(1:iter, ec)
    title('Semilog plot of error');
    
    % Plot loglog:
    figure(3)
    hold on
    loglog(ec(1:iter-1), ec(2:iter))
    %pts = linspace(min(ec), max(ec), 1e3);
    %loglog(pts);
    title('Loglog plot of error')

end