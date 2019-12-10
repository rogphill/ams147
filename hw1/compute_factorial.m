function [b] = compute_factorial(n)
% Title: COMPUTE_FACTORIAL 
% Author: Robert George Phillips (rogphill@ucsc.edu)
% Description: Recursively computes a factorial b when given an input n.

    % Check if input is negative:
    if n < 0
        disp('ERROR: Negative number entered.');
        return
    end

    % Once we get rid of negatives, then initially result must be 1:
    result = 1;

    % Then, unless we hit base case, faux-recursively compute the factorial:
    while n > 1
        result = result * n;
        n = n - 1;
    end

    % Lastly, return the factorial:
    b = result;
end