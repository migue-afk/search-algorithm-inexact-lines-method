function Result=rein(R,Li)
%Function describing the search for the minimum of the equation R.
%Li is the lower limit of search.


x0=Li;                      %Parameters of the fuction
delt=1;
beta=0.1;
alfa=0.9;
d=1

f=inline(R);                %Create a function in line, from a user created
                            %expression in this case the fuction is R
dxf1=diff(sym(R))           %First derivative of R
dx=inline(dxf1)             %Create a function in line, from a user created
                            %expression in this case, first derivative of R dxf1


for i = 1:70                                %70 is the number of iterations to search
                                            %for the minimum, this number can be added %or subtracted, it all depends od the %precision of the method

%Algorithm of the search inexact lines

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
