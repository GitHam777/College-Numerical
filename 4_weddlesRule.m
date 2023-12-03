clc
clear all
format long
f = inline(' x / (1 + x * x) ');
a = input('Enter lower value: ');
b = input('Enter upper value: ');
n = input('Enter value: ');
h = (b - a) / n;
sum = 0;
for i = 0 : 1 : n
    x = a + i * h;
    y = f(x);
    if(i == 0 || i == n)
        p = 1;
    elseif(rem(i,2) == 0 && rem(i,3) ~= 0)
        p = 1;
    elseif(rem(i,3) == 0 && rem(i,2) ~= 0)
        p = 6;
    elseif(rem(i,3) == 0 && rem(i,2) == 0)
        p = 2;
    else
        p = 5;
    end
    sum = sum + p * y;
end
I = sum * (3 * h / 10);
fprintf('Approximate value of Integration: %f', I);