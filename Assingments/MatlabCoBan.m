% ================ I Cac bai tap co ban ====================
%1 Khoi tao vecto le
a = [31 :2 :75];

%2 Phep toan vec to voi so
x = [2 5 1 6];

x + 16
x{1} + 3
x{3} + 3
sprt(x)
x.^2

%3 Phep toan hai vec to
x = [3 2 6 8]'
y = [4 1 3 5]'

x + y
x.^y
y./x
z = x.*y

%4 Danh gia key qua bang MATLAB
Cac bieu thuc deu co ket qua nhu kiem tra bang tay

%5 Tao vecto x voi cac day cho truoc
x = [2 4 6 8 ...]
x = [10:2:-4]
x = [1 1/2 1/3 1/4 1/5 ...]
x = [0 1/2 2/3 3/4 4/5 ...]

%6 Tao vector
n = 100
x = [];
tong = 0
for i = 1:n
	x = (-1)^(i+1)/(2i-1);
	tong = tong + x;
end
tong

%7 Bai toan tam giac
c1 = ...
c2 = ...
canhHuyen = sprt(c1*c1 + c2*c2)

a = ...
b = ...
t = ...
c = a^2 + b^2 - 2*a*b*cos(t)

%8 Tinh toan vector
t = 1 :0.2 : 2

ln(2 + t + t.^2)
e.^t * ( 1 + cos(3*t))
cos(t).^2 + sin(t).^2
atan(t)
cos(t)
sin(t).^2 + cos(t) -1

%9 Ve do thi x, x^3, e^x, e^(x^2) tren (0,4)
x = 0 : 0.1 : 4

y = x;
plot(x, y)
y = x.^3;
plot(x,y)
y = e.^x;
plot(x,y)
y = e.^(x.^2);
plot(x,y)

y = ln(x);
plot(x,y)
y = ln(x.^3);
plot(x,y)
y = ln(e.^x);
plot(x,y)
y = ln(e.^(x.^2));
plot(x,y)

%10 Ve do thi ham so
x = 0.01 : 0.001: 0.1
y = sin(1/x);
plot(x, y)

%11 Ve elip
t = (0:0.1:2*pi);

axis equal

%12 Ve do thi cua bieu thuc
t = 1790 :1 : 2000;
y = 197273000 ./ (1 + e.^(-0.0313 .*(t - 1913.25)));
plot(t, y)


