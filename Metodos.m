
clear all
close all

global iter
global iterN

syms x


%%
%METODO RECTAS INEXACTAS
F1111=rein(-0.1169+0.998*x*sin(-0.068*x)-0.996*x^2+1.98*x^3,0.1)
toc;
Rein1=toc;
F2222=rein(sin(x)+x^2,-2)
toc;
Rein2=toc;
F3333=rein(cos(x)-log(x),1)
toc;
Rein3=toc;







