function [I] = int_midpoint_rule(fun, a, b, n)

    h = (b-a) / n;
    x = a + (h / 2);
    I = fun(x);
    
    for j = 2:n
        x = x + h;
        I = I + (fun(x));
    end

    I = I * h;
    
end

