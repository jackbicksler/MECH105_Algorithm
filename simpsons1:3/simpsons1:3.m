function [I] = Simpson2(x,y)
%Jack Bicksler 4/6/2022
%MECH 105
%This code is used to find the approximate integral of points by using
%Simpson's 1/3 rule.

%finding size
[~,cx] = size(x);
[~,cy] = size(y);
I = 0;


%if statements to find if array has number of odd or even values
if cx ~= cy
    error('Arrays need to be the same size')
end

%checks if array is linearly spaced
space = diff(x);
if max(space) ~= min(space)
    error('Arrays need to be linearly spaced')
end


if cx == 2
    q = x(1,1);
    w = x(1,2);
    f8 = y(1,1);
    f9 = y(1,2);
    I = ((w-q)/2)*(f9+f8);
    warning('Trapezoidal rule was ued because there are only 2 points.')
end


if floor(cx/2) ~= ceil(cx/2) %if array has odd number of values
    iterations = (cx-1)/2;

    %if array has even number of values
else ;floor(cx/2) == ceil(cx/2) && cx ~= 2; 
    iterations = (cx-2)/2;
    warning('Trapezoidal rule will be used for the last interval.')
end

%calculations
for j = 1:iterations
        a = x((j*2)-1);
        b = x((j*2)+1);
        f1 = y((j*2)-1);
        f2 = y((j*2));
        f3 = y((j*2)+1);

        I = I + ((b-a)/6)*(f1+4*f2+f3);
end

%calculations
if floor(cx/2) == ceil(cx/2) && cx ~= 2
    fb = x(1,cy);
    fa = x(1,cy-1);
    l = y(1,cy);
    z = y(1,cy-1);

    I = I + ((l-z)/2)*(fa+fb);
end

