function [A] = specialMatrix(n,m)
% Jack Bicksler
% Inputs n is the number of rows, and m the number of columns
% The value of each element in the first row is the number of the column.
% The value of each element in the first column is the number of the row.
% The rest of the elements each has a value equal to the sum of the element 
% above it and element to the left.
if nargin ~= 2
    error('This special matrix needs only two inputs')
end

A = ones(n,m);


for i = 1:n
    for j = 1:m
        if i == 1
        A(i,j) = j;
        elseif j == 1 
        A(i,j) = i;
        else
        A(i,j) = A(i,j-1)+A(i-1,j);    
        end
    end
end









