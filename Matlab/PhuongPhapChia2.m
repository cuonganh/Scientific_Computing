% PhuongPhapChia2

function [] = PhuongPhapChia2(fx, a, c, epsilon)
  saiSo = 0.01;
  disp(['     a', '     b', '     c', '     fa', '      fb', '      fc']);
  
  while abs(saiSo) > e
    b = (a + c) /2;
    fa = feval(fx, a);
    fb = feval(fx, b);
    fc = feval(fx, c);
    
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
%PhuongPhapChia2( @(x) exp(x) - 2, 0, 2, 0.01)

%PhuongPhapChia2( @(x)x^3 + x - 1, 0, 1, 0.01)
