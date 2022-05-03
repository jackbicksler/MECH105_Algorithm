function [root,fx,ea,iter] = falsePositionGood(func,xl,xu,es,maxit)
%Jack Bicksler
%root: the root found
%fx: y value of the root
%ea = relative error in percent
%iter = number of iterations
%func: function input by user
%xl and xu: first guesses
%es: relative error that is wanted
%maxit: maximum number of iterations allowed

if nargin < 4 || isempty(es)
    es = 0.0001;
end
if nargin < 5 || isempty(maxit)
    maxit = 200;
end

xr = xl;
iter = 0;
ea = 1;

if func(xl)*func(xu) > 0
    error('Root is not inbetween these.')
end

while ea > es && iter <= maxit
    xrold = xr;
    xr = xu - (func(xu)*(xu-xl)/(func(xu)-func(xl)));
    if func(xr)*func(xu) > 0
        xu = xr;
    else
        xl = xr;
    end
    iter = iter+1;
    ea = (abs(xr-xrold)/xr)*100;   
end

root = xr;
fx = func(root);

if isnan(ea) || fx == 0
    ea = 0;
end

end
