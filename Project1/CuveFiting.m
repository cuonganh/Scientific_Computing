%1
    x = [0 0.25 0.5 1 2 3 4 5 6 8 10];
    y = [2.5 3.6 5.3 9.5 14.0 16.5 18.8 21.5 23.2 26.8 28.4];
    p = polyfit(x, y, 1);
    z = polyval(p, x);
    plot(x, y, 'r-*', x, z, 'b--');
    z

%2
    p = polyfit(x, y, 1);
    z = polyval(p, x);
    bar(z - y);

%3
    x = [0 0.25 0.5 1 2 3 4 5 6 8 10];
    y = [2.5 3.6 5.3 9.5 14.0 16.5 18.8 21.5 23.2 26.8 28.4];
    p = polyfit(x, y, 1);
    z = polyval(p, x);
    sumerror = sum(z - y)

%4
    for i=1:3
        p = polyfit(x, y, i); 
        z = polyval(p, x);
        plot(x, y, '-*', x, z,'--');
 	    hold on;
    end

    % i = 2
        p = polyfit(x, y, 2); 
        z = polyval(p, x);
        bar(z - y);
        sumerror = sum(z - y)

    % i = 3
        p = polyfit(x, y, 3); 
  	    z = polyval(p, x);
        bar(z - y);
        sumerror = sum(z - y)

%5
    % line
    p = polyfit(x, y, 10); 
    z = polyval(p, x);
    plot(x, y,'m-s', x, z,'--')
    
    % bar
    bar(z - y);
    sumerror = sum(z - y)

%6
    x = [0 0.25 0.5 1 2 3 4 5 6 8 10];
    p1 = arrayfun(@(t) fminsearch(@(a) 10.*(1- exp(-a.*t)), 2), x)
    z1 = polyval(p1, x);
    plot(x, y, 'mh', x, z1, 'g')





