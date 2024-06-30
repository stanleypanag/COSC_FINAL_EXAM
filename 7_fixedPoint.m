f = @(x) x^3 + 4*x^2 - 10;
g = @(x) sqrt(10 / (x + 4));
x0 = 1.5;
tol = 1e-6;

max_iter = 100;

x = x0;

for iter = 1:max_iter
    x_new = g(x);
    if abs(x_new - x) < tol
        break; 
    end
    x = x_new;
end

fprintf('=========================================\n');
fprintf('Root approximation: %.4f\n', x);
fprintf('=========================================\n');
