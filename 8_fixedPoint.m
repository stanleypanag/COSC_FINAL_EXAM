f = @(x) x^3 + 5*x - 5;
g = @(x) 5 / (x^2 + 5);
x0 = 0.75;
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
