% Trien khai ALU

A = rand(5)
[r, c] = size(A)
L = eye(r)
U = A;
for i=1:c
  if(U(i, i)==0) 
    continue;  
  end
  for j = i+1:c
  l = U(j, i)./U(i, i);
  temp = U(j, :) - U(i, :) * l;
  U(j, :) = temp;
  L(j, i) = l;
  end 
end 
P = L*U/A