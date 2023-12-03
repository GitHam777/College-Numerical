clc
clear all
format long
f = inline('(3*x-cos(x)-1)');
g = inline('3+sin(x)');
x0 = input('Enter value: ');