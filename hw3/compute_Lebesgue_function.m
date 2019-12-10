function [lambda, L] = compute_Lebesgue_function(xi, x)

    syms f(t);
    f(t) = 0;
    N = length(xi);

    for i = 1:N
        V = 1;
        for j = 1:N
            if (i ~= j)
                V = V .* ((t - xi(j)) / (xi(i) - xi(j)));
            end
        end
        f(t) = f(t) + abs(V);
    end
    
    lambda = f(x);
    L = max(lambda);

end

