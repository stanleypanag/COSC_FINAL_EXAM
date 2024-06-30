f = @(x) x^6 - x - 1;

x_zero = 2;
x_one = 1;

% Calculate x2
slope = (f(x_one) - f(x_zero)) / (x_one - x_zero);
x2 = x_one - f(x_one) / slope;

% Calculate x3
slope = (f(x2) - f(x_one)) / (x2 - x_one);
x3 = x2 - f(x2) / slope;

% Calculate x4
slope = (f(x3) - f(x2)) / (x3 - x2);
x4 = x3 - f(x3) / slope;

fprintf(' Xn |   values\n');
fprintf('-----------------\n');
fprintf('%9s | %.4f\n', 'X0', x_zero);
fprintf('%9s | %.4f\n', 'X1', x_one);
fprintf('%9s | %.4f\n', 'X2', x2);
fprintf('%9s | %.4f\n', 'X3', x3);
fprintf('%9s | %.4f\n', 'X4', x4);
