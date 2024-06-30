f = @(x) x^3 - 6*x - 4;
a = 2;
b = 3;
tolerance = 0.001;


if f(a) * f(b) > 0
    error('No root exists within the given interval.')
end

fprintf(' Iteration    a         b       f(a)       f(b)        c        f(c)       Updated      New Interval Width\n');
fprintf('----------------------------------------------------------------------------------------------------------\n');

iteration = 0;

while (b - a) / 2 > tolerance    c = (a + b) / 2;
    
    fc = f(c);
        fprintf('%5d    %7.4f  %7.4f  %9.4f  %9.4f  %7.4f  %9.4f', ...
        iteration, a, b, f(a), f(b), c, fc);
        if f(a) * fc < 0
        updated = 'b = c';
    else
        updated = 'a = c';
    end
        if f(a) * fc < 0
        b = c;
    else
        a = c;
    end
    
    fprintf('  %10s  %9.4f\n', updated, b - a);
    
    iteration = iteration + 1;
end

root = (a + b) / 2;

fprintf('----------------------------------------------------------------------------------------------------------\n');
fprintf('The root is approximately %.4f\n', root);