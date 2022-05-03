function [L,U,P] = luFactor(A)
%Jack Bicksler 3/30/2022
%This code finds the LUP matrix when given a square matrix.



[z,q] = size(A);
if z~=q
    error('Not a square matrix dummy!')
end
L = eye(q);  
P = L;
U = A;
abs_A = abs(A);

for g = 1:q-1
[M,R] = max(abs_A(g:q,g));
%switching for U matrix
y = U(R,:);
U(R,:) = U(1,:);
U(1,:) = y;
%switching for P matrix
x = P(R,:);
P(R,:) = P(1,:);
P(1,:) = x;
%Calculating the new rows
    
    for op = g+1:q
    j = U(op,g)/U(g,g);
    U(op,:) = U(op,:) - (j*U(g,:));
    L(op,g) = j;
    end
% 
%     if q > 2
%         k = q-2
%         for sod = 1:k
%             lop = L(sod+1,sod)
%             L(sod+1,sod) = L(sod+2,q)
%             L(sod+2,q) = lop
%         end
%     end
end
end
