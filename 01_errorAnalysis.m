clc
clear all
format long
k = input('Enter value of k: ');
va = 0;
for i = 1:1:k
    va = va + 4 * (-1) ^ (i - 1) / (2 * i - 1);
end
vt = 4 * atan(1);
ea = abs(vt - va);
er = ea / vt;
et = er * 100;
fprintf("\n Exact Value is: %f", vt);
fprintf("\n Approx Value is: %f", va);
fprintf("\n Abs error: %f", ea);
fprintf("\n Rel error: %f", er);
fprintf("\n Percent error: %f", et);