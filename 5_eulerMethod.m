clc
clear all
format long
f = inline(' sin(x + y) ');
x0 = input('Enter value of x0: ');
y0 = input('Enter value of y0: ');
xn = input('Enter value of xn: ');
h = input('Enter value of h: ');
n = (xn - x0) / h;
for i = 1:1:n
    y = y0 + h * f(x0, y0);
    y0 = y;
    x0 = x0 + h;
end
fprintf('The approximate value of y is: %f', y);