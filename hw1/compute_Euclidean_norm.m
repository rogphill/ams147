function [z] = compute_Euclidean_norm(x)
% Title: COMPUTE_EUCLIDEAN_NORM
% Author: Robert George Phillips (rogphill@ucsc.edu)
% Description: Computes a Euclidean norm z when given an input x.
    
    % Initialize variables:
    result = 0;

    % Square each element and sum the result from 1 to the size of the vector:
    for i = 1:length(x)
        result = result + x(i)^2;
    end
    
    % Square root, and return the final Euclidean norm:
    z = sqrt(result);
end

