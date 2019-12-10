function [I] = int_trapezoidal_rule(fun, a, b, n)

    h = (b-a) / n;
    x = a;
    I = 0;
    
    for j = 1:n
       I = I + ((fun(x) + fun(x + h)) / 2);
       x = x + h;
    end
    
    I = I * (h);

end
