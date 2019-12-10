function [y, t] = AB2(fun, y0, NSTEPS, DT, IOSTEP)

    t = 0;
    y = y0;
    un = y0;
    unplusone = un + (DT / 2) * (fun(un, t) + fun(un + (DT * fun(un, t)), DT));


    for i = 2:NSTEPS
        ts = (i - 1) * DT;
        u = unplusone + (DT / 2) * ((3 * fun(unplusone, ts)) - fun(un, ts - DT));
        
        if mod(i, IOSTEP) == 0
            y =[y u];
            t = [t ts+DT];
        end
        un = unplusone;
        unplusone = u;
    end

end

