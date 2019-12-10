function [em, et, es] = test_integration()

    a = -3;
    b = 1;
    n = 100;
    fun = @(x) (((1 ./ (1 + x.^2)) .* cos((3 / 2) * exp(-x.^2))) - (x.^3 ./ 30));
    Iref = 1.6851344770476;
%     em = zeros(1, n);
%     et = zeros(1, n);
%     es = zeros(1, n);
    
    for i = 2:n
        em(i) = abs(Iref - int_midpoint_rule(fun, a, b, i));
    end
    
    for i = 2:n
        et(i) = abs(Iref - int_trapezoidal_rule(fun, a, b, i));
    end
    
    for i = 2:n
        es(i) = abs(Iref - int_Simpson_rule(fun, a, b, i));
    end
    
    xi = linspace(-3, 1, n);
    figure(1)
    clf
    hold on
    plot(xi, fun(xi))
    
    xi = linspace(2, 100, length(em));
    figure(2)
    clf
    loglog(xi, em, 'b')
    hold on
    loglog(xi, et, 'r')
    loglog(xi, es, 'y')
    
end

