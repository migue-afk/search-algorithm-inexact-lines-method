function Result=rein(R,Li)
%Function describing the search for the minimum of the equation R
%Li is the lower limit


x0=Li;                      %Parameters of the fuction
delt=1;
beta=0.1;
alfa=0.9;
d=1

f=inline(R);                
dxf1=diff(sym(R))           
dx=inline(dxf1)


for i = 1:70
    A=f(x0+(delt*d))
    B=f(x0)+(beta*delt*dx(x0)*d)

    C=alfa*dx(x0)*d
    D=dx(x0+(delt*d))*d
 
    if A<B && C<D           
        x0=x0+(delt*d)
        d=-sign(dx(x0))
    else
        delt=delt-0.1;
    end

Result=x0;
end
end
