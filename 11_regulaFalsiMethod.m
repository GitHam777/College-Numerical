clc
clear all
format long
f = inline('(sin(x) + cos(x) - 1)');
a = input('Enter value of a: ');
b = input('Enter value of b: ');
i = 0;
c1 = a;
c2 = b;
while(abs(c1 - c2) > 0.000001)
    c2 = c1;
    c1 = a + (abs(f(a)) * (b - a)) / (abs(f(a)) + abs(f(b)));
    i = i + 1;
    if(f(a) * f(c1) < 0)
        b = c1;
    else
        a = c1;
    end
end
fprintf('Approximate value: %f\n', c1);
fprintf('Iteration count: %d', i);