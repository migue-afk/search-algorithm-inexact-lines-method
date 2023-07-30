
clear all
close all

syms x

%%
%inexact-lines-method
F1111=rein(-0.1169+0.998*x*sin(-0.068*x)-0.996*x^2+1.98*x^3,0.1)
F2222=rein(sin(x)+x^2,-2)
F3333=rein(cos(x)-log(x),1)