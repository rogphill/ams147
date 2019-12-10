function [a, err] = poly_least_squares(xi, yi, M)

    err = 0;
    n = length(yi);
    B = [ones(n, 1), xi'];
    
    for i = 2:M
       B = [B, (xi.^i)'];
    end
    
    a = (B' * B) \ (B' * yi');
    
    for i = 1:n
       err = err + (yi(i) - (B(i,:)*a)).^2;
    end
    
end