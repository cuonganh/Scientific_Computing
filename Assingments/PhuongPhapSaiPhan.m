% Phuong phap cat tuyen

function [nghiem] = PhuongPhapCatTuyen(f, x0, x1, epsilon)
    
    disp(['     N', '       x0', '      x1', '      Saiso']);
    count = 1;
    while abs(feval(fx, x0)) > epsilon
        f0 = feval(fx, x0);
        f1 = feval(fx, x1);
        saiSo = (f1 - f0)./(x1 - x0);

        disp([count, x0, x1, saiSo]);
        x0 = x1;
        x1 = x1 - feval(fx, x1) ./ saiSo;
        count = count + 1;
    endwhile
endfunction

% Chay chuong trinh
PhuongPhapCatTuyen( @(x) x^3  - 1, 4, 3, 0.01)

