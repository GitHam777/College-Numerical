clc
clear all
format long
f = inline('(sin(x) + cos(x) - 1)');
x0 = input('Enter value of a: ');
x1 = input('Enter value of b: ');
i = 1;
x2 = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
while(abs(x2 - x1) > 0.000001)
    x0 = x1;
    x1 = x2;
    x2 = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
    i = i + 1;
end
fprintf('Approximate value: %f\n', x2);
fprintf('Iteration count: %d', i);