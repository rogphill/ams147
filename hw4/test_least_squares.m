function [x, p1, p2, p4, p8] = test_least_squares()

    x = linspace(0, 1, 1000);
    dat = load('DJI_2014_2019.dat');
    datx = [];
    daty = [];
    n = length(dat);
    
    for i = 1:n
        datx(i) = dat(i, 1);
    end
    
    for i = 1:n
        daty(i) = dat(i, 2);
    end

    figure(1)
    clf
    hold on
    plot(datx, daty, 'b')
    
    M = 1;
    a1 = poly_least_squares(datx, daty, M);
    p1 = zeros(1290);
    for i = 1:length(datx)
        for j = 1:M+1
            p1(i)= p1(i)+a1(j)*datx(i)^(j-1);
        end
    end
    plot(datx, p1, 'r');
    
    M = 2;
    a2 = poly_least_squares(datx, daty, M);
    p2 = zeros(1290);
    for i = 1:length(datx)
        for j = 1:M+1
            p2(i)= p2(i)+a2(j)*datx(i)^(j-1);
        end
    end
    plot(datx, p2, 'r');
    
    M = 4;
    a4 = poly_least_squares(datx, daty, M);
    p4 = zeros(1290);
    for i = 1:length(datx)
        for j = 1:M+1
            p4(i)= p4(i)+a4(j)*datx(i)^(j-1);
        end
    end
    plot(datx, p4, 'r');
    
    M = 8;
    a8 = poly_least_squares(datx, daty, M);
    p8 = zeros(1290);
    for i = 1:length(datx)
        for j = 1:M+1
            p8(i)= p8(i)+a8(j)*datx(i)^(j-1);
        end
    end
    plot(datx, p8, 'r');
    
end

