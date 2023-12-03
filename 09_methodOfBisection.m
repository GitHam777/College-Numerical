clc
clear all
format long
f = inline('(sin(x) + cos(x))-1');
a = input('Enter value of a: ');
b = input('Enter value of b: ');
i = 0;
while(abs(a - b) > 0.000001)
    c = (a + b) / 2;
    i = i + 1;
    if((f(a) * f(c)) < 0)
        b = c;
    else
        a = c;
    end
end
fprintf('Numerical value: %f\n', c);
fprintf('Iteration Count: %d', i);