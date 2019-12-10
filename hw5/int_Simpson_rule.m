function [I] = int_Simpson_rule(fun, a, b, n)

    h = (b-a) / n;
    halfh = h / 2;
    x = a;
    I = 0;
    
    for j = 1:n
        I = I + fun(x) + (4 * fun(x + halfh)) + fun(x + h);
        x = x + h;
    end
    
    I = I * (h / 6);
    
end
    
%     % Taking Wikipedia's definition of Simpson's rule instead of from
%     % lecture notes since it was easier for me to understand:
%     for j = 1:n-1
%        x = x + h;
%        if (mod(j, 2) == 0)
%             I = I + (2 .* fun(x));
%        else
%             I = I + (4 .* fun(x));
%        end
%     end
%     
%     I = (I + fun(b)) * (h / 3);
