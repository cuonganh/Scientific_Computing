%==========================II Mang=======================

%1 Giai thich bang cach tom tat ket qua
x = [3 1 5 7 9 2 6];

% x(3) 		in phan tu thu 3 la 5
% x(1:7) 	in 7 phan tu dau
% x(1: end)	in tu phan tu dau den het
% x(1: end-1)	in tat ca cac phan tu tru phan tu cuoi cung
% x(6: -2:1)	in cac phan tu o vi tri chan va 1
% x([1 6 2 1 1])in cac phan tu o vi tri tuong ung
% sum(x) 	tinh tong cac phan tu cua x

%2 Viet lenh voi mang
A = [ 2 4 1; 6 7 2; 3 5 9];

x = (1, :)
y = A(2:3, 1:3)
[rows cols] = size(A)

%3 Xac dinh cac lenh thuc hien duoc hay khong
x = [1 4 8];
y = [2 1 5];
A = [3 1 6; 5 2 7];

% Cac lenh thuc hien duoc: a, b, c, f, g
x + y = [3 5 13]
x + A =	[4 5 14; 6 6 15]
x' + y = [3 2 6; 6 5 9; 10 9 13]
[x;y] = [1 4 8; 2 1 5]
A - 3 = [0 -2 3; 2 -1 4]

% Cac lenh khong thuc hien duoc: d, e
% A - [x' y'] khong cung kich thuoc (2x3 và 3x2)
% [x; y'] thong bao loi chieu doc khong phu hop

%4 Giai thich ket qua cac cau lenh
A = [2 7 9 7; 3 1 5 6; 8 1 2 5];

% A'			ma tran nghich dao cua A
% A(:, [1 4]) 		lay giao cua A voi hai cot 1, 4
% A([2 3], [3 1]) 	giao cua hang 2, 3 va cot 3, 1
% reshape(A, 2, 6) 	tra ve ma tran 2x6
% A(:) 			tra ve ma tran 1 cot
% flipud(A)		phep doi xung theo hang
% fliplr(A)		phep doi xung theo cot
% [A A(end, :)]		loi ghep mang khong cung kich thuoc
% A(1:3, :)		phep giao hang 1-3 va tat ca cot
% [A; A(1:2,:)]		ghep A voi hai hang cua A theo cot
% sum(A)		tinh tong theo cot cua A
% sum(A')		tinh tong theo cot cua nghich dao A
% sum(A, 2)		phep dao cua sum(A')
