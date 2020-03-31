% PhuongPhapNewton

function [] = PhuongPhapNewton(fx, dx, x0, epsilon)
  saiSo = x0;
  disp(['     x0', '     fx', '     dx', '     tmp']);
  
  while abs(feval(fx, x0)) < epsilon
    
    fx = feval(fx, x0);
    dx = feval(dx, x0);

    tmp = x0 - (fx / dx);
    x0 = tmp;
    
    disp([x0, fx, dx, tmp]);
  endwhile
endfunction

%Chay CT
%PhuongPhapNewton( @(x) exp(x) - 2, 0, 2, 0.01)

%PhuongPhapNewton( @(x)x^3 + x - 1, 0, 1, 0.01)