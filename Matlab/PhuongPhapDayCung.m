% PhuongPhapDayCung

function [] = PhuongPhapDayCung(fx, a, c, epsilon)
  saiSo = 0.01;
  disp(['     a', '     b', '     c', '     fa', '      fb', '      fc']);
  
  while abs(saiSo) > e
    
    fa = feval(fx, a);
    fc = feval(fx, c);

    b = (a*fc - c*fa) ./ (fc - fa);
    fb = feval(fx, b);

    if (fa*fb <= 0)
      c = b;
    else
      a = b;
    endif
    saiSo = feval(fx, b);
    disp([a, b, c, fa, fb, fc]);
  endwhile
endfunction

%Chay CT
%PhuongPhapDayCung( @(x) exp(x) - 2, 0, 2, 0.01)

%PhuongPhapDayCung( @(x)x^3 + x - 1, 0, 1, 0.01)