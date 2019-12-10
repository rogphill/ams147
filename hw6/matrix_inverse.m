function [Ai] = matrix_inverse(A)

    % Initialization:
    [n, m] = size(A);
    Bkminusone = eye(n);

    % k = 1 to n
    for k = 1:n
        if (k >= 2)
            Bkminusone = B;
        end
        alpha = (1 / k) * trace(A * Bkminusone);
        disp(trace(A * Bkminusone))
        B = (-1 * A * Bkminusone) + (alpha * eye(n));   
    end   
    
    Ai = (1 / alpha) * Bkminusone;

end

