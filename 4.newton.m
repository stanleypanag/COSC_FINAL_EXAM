// THIS WILL ONLY GET X1, X2 AND X3 

f = @(x) 5*x^2 - 3*x - 3;
fd = @(x) 10*x - 3;
x0 = 1;

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