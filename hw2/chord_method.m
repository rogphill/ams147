function [z0,iter,res,his] = chord_method(fun,a,b,tol,Nmax)
    % Title: CHORD_METHOD
    % Author: Robert George Phillips (rogphill@ucsc.edu)
    % Credit/resource: Lia's TA section
    % Description: Performs a chord method when given a function, a, b, a
    % tolerance, and an nmax.

    x0 = (a+b)/2;
    his = [x0];
    iter = 1;
    res = 1;
    xk = x0;

    while (res > tol)
        xkplus1 = xk - ( (b - a)/(fun(b) - fun(a)) ) * fun(xk);
        his = [his, xkplus1];
        iter = iter + 1;

        % If over iterations, throw an error:
        if (iter == Nmax)
            disp(['Error tolerance was not met within ', num2str(Nmax), ' iterations.']);
            break
        end
        
        res = abs(fun(xk));
        xk = xkplus1;
    end
        
    z0 = xk;
    
end