syms x y z

eq1 = 3*x + 2*y - z == 6;
eq2 = 2*x - y + 3*z == 9;
eq3 = x + 3*y + 2*z == 4;

sol = solve([eq1, eq2, eq3], [x, y z]);

x_sol = sol.x;
y_sol = sol.y;
z_sol = sol.z;

x_sol_decimal = double(x_sol);
y_sol_decimal = double(y_sol);
z_sol_decimal = double(z_sol);

variables = {'x', 'y', 'z'};
fractional_values = [x_sol, y_sol, z_sol];
decimal_values = [x_sol_decimal, y_sol_decimal, z_sol_decimal];

fprintf('%-10s %-20s %-20s\n', 'Variable', 'Fractional Value', 'Decimal Value');
for i = 1:length(variables)
    fprintf('%-10s %-20s %-20.4f\n', variables{i}, char(fractional_values(i)), decimal_values(i));
end