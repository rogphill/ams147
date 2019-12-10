function [y] = Lagrange_interpolation(xi,yi,x)

    N = length(xi); % polynomial order -1 
    % M = length(x); % = length(y)
    y = 0;

    for i = 1:N
        V = 1;
        for j = 1:N
            if (i ~= j)
                V = V .* ((x - xi(j)) / (xi(i) - xi(j)));
            end
        end
        y = y + (yi(i) * V);
    end

end