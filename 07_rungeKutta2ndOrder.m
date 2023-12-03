clc
clear all
format long
f = inline(' sin(x + y) ');
x0 = input('Enter value of x0: ');
y0 = input('Enter value of y0: ');
xn = input('Enter value of xn: ');
h = input('Enter value of h: ');
n = (xn - x0) / h;
for i = 1 : 1 : n
    k1 = h * f(x0, y0);
    k2 = h * f(x0 + h, y0 + k1);
    k = (k1 + k2) / 2;
    y = y0 + k;
    x0 = x0 + h;
    y0 = y;
end
fprintf('Approximate value of y is: %f', y);