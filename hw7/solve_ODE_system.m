function [y, t] = solve_ODE_system()

    fun = @(y,t)[-y(1)+y(2)*y(3);-y(2)+(y(3)-2)*y(1);1-y(1)*y(2)];
    NSTEPS = 1e5;
    DT = 1e-3;
    IOSTEP = 50;
    y0 = [1; 2; 3];
    
    [y, t] = AB2(fun, y0, NSTEPS, DT, IOSTEP);
    
    figure(1)
    plot(t, y(1, :), t, y(2, :), t, y(3, :))
    
    figure(2)
    plot3(y(1, :), y(2, :), y(3, :))

end

