// THIS WILL ONLY GET X1, X2 AND X3 

f = @(x) 3*x^4 + 4*x^3 - 6*x^2 - 2*x - 12;
fd = @(x) 12*x^3 + 12*x^2 - 12*x - 2;
x0 = -3;

x = x0;
n = 3;

fprintf('-----------------------------\n');
fprintf(' Xn    values\n');
fprintf('-----------------------------\n');

for i = 1:n
    x = x - f(x) / fd(x);
    fprintf('%5s    %7.4f\n', ['x' num2str(i)], x);
end

fprintf('----------------------------\n');