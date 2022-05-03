
function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%Jack Bicksler 4/20/2022
%linearRegression Computes the linear regression of a data set
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, 

if size(x) ~= size(y)
    error('Arrays need to be the same size.')
end

%sorting of data
[ysort, sortOrder] = sort(y);
xsort = x(sortOrder);

%variables used to eliminate outliers
[~,n] = size(ysort);
Q1 = ysort(floor((n+1)/4));
Q3 = ysort(floor(((3*n)+3)/4));
IQR = Q3-Q1;
low = (Q1 - (IQR*1.5));
high = (Q3 + (IQR*1.5));

%finds all outliers
for iter = 1:n
    if ysort(iter) < low || ysort(iter) > high
        ysort(iter) = NaN;
        xsort(iter) = NaN;
    end
end

%eliminates outliers
xsort(isnan(xsort)) = [];
ysort(isnan(ysort)) = [];


%math
fX = xsort;
fY = ysort;

[~,s] = size(fX);
sumx = sum(fX);
sumy = sum(fY);

sumxy = 0;
sumx2 = 0;

for h = 1:s
    sumxy = sumxy + fY(h)*fX(h);
    sumx2 = sumx2 + fX(h)^2;
end

slope = ((s*sumxy - sumx*sumy)/(s*sumx2 - sumx^2));
intercept = (sumy/s) - slope*(sumx/s);

Sr = 0;
St = 0;

for j = 1:s
St = St + (fY(j)-(sumy/s))^2;
Sr = Sr + ((fY(j)-intercept-slope*fX(j))^2);
end


Rsquared = (St-Sr)/St;
end