function [P,n,p] = pi_series()
% Title: PI_SERIES
% Author: Robert George Phillips (rogphill@ucsc.edu)
% Description: 

    % Initialize variables:
    resultP = zeros(1, 15);
    sumP = 0;
    sumn = 0;
    m = 0;
    
    % Iterate, sum, and add to resultP:
    for k = 1:15
        sumP = sumP + (3 * (((-1)^(k-1))*((1/((6*(k-1))+1)) + (1/((6*(k-1))+5)))));
        resultP(1, k) = sumP;
    end  
    
    P = resultP;
    
    % Iterate, sum, and check if P_n - pi < 10^(-4) and add to resultn:
    while abs(sumn - pi) >= 0.0001 
        sumn = sumn + (3 * (((-1)^(m))*((1/((6*(m))+1)) + (1/((6*(m))+5)))));
        m = m + 1;
    end
    
    m = m - 1;
    n = m;
    
    p = 0;

end

