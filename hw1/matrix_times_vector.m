function [y] = matrix_times_vector(A, x)
% Title: MATRIX_TIMES_VECTOR
% Author: Robert George Phillips (rogphill@ucsc.edu)
% Description: Multiplies a n x n matrix A by a n x 1 vector x. Outputs a 
%              a n x 1 vector y.

    % Grab size of matrix and array for later:
    m = size(A);
    n = size(x);
    
    % Initialize variables:
    result = zeros(m(1), 1);
    sum = 0;
    
    % Check if matrix and array are compatible, and if so, compute result:
    if ((m(1) == m(2)) && (m(1) == n(1)) && (n(2) == 1))
        for i = 1:m(1)
           for j = 1:m(2)
               sum = sum + (A(i,j) * x(j));
           end
           result(i, 1) = sum;
           sum = 0;
        end
    else
        disp('ERROR: Please enter a n x n matrix and a n x 1 vector.');
        return
    end

    y = result;
end

