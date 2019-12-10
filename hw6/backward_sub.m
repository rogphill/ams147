function [x] = backward_sub(U, b)

    % Variable setup:
    n = size(U, 1);
    x = zeros(n, 1);
    nminus2 = n - 2;
    
    % Initial setup for x(n) and x(n - 1):
    x(n, 1) = b(n, 1) / U(n, n);
    x(n - 1, 1) = (1 / U(n - 1, n - 1)) * (b(n - 1) - (U(n - 1, n) * x(n)));
    
    % Final loop:
    for k = nminus2:-1:1
        if (nminus2 == 0)
            break;
        end
        ksum = 0;
        for j = k+1:n
           ksum = ksum + (U(k, j) * x(j));
        end
        x(k) = (1 / U(k, k)) * (b(k) - ksum);
    end
    
end

