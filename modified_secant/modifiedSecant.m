function [root,fx,ea,iter] = modifiedSecant(f,x0,es,d)
%Jack Bicksler
%f is called as the fucntion where the root is found
%x0 is the initial guess
%d is delta
%es is stopping criteria in percentage
iter = 0;
xnew = x0;
ea = 1;

if nargin < 4 || isempty(es)
    es = 0.0001;
end

while ea > es
    xold = xnew;
    xnew = xold - (f(xold)*d*xold)/(f(xold+d*xold)-f(xold));
    ea = abs((xnew-xold)/xnew)*100;
    iter = iter+1;  
end
root = xnew;
fx = f(root);

end

