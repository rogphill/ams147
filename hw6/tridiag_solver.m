function [x] = tridiag_solver(e, a, c, b)

    % Initialization:
    [m, n] = size(a);
    alpha = zeros(1, n);
    beta = zeros(1, n);
    alpha(1) = a(1);
    y = zeros(1, n);
    x = zeros(n, 1);
    
    % Grab alpha and beta matrices:
    for i = 2:n
       beta(i) = e(i-1) / alpha(i-1); 
       alpha(i) = a(i) - (beta(i) * c(i-1));
    end
    
    % Forward substitution:
    y(1) = b(1);
    
    for i = 2:n
       y(i) = b(i) - (beta(i) * y(i-1));  
    end
    
    % Backward substitution:
    x(n, 1) = y(n) / alpha(n);
    
    for i = n-1:-1:1
       x(i, 1) = (1 / alpha(i)) * (y(i) - (c(i) * x(i+1))); 
    end
    
end

