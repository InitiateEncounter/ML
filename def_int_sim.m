function [ gg ] = def_int_sim( a,b,tol )
gg=[];
n=2;
m=1;
h=(b-a)/n;
f=0;
prev=0;
it=0;
while (f~=1)
it=it+1;
s=0;
for k=1:m
x=a+(2*k-1)*h;
s=s+2*fun(x)+fun(x+h);
end    
I=(fun(a)-fun(b)+2*s)*h/3;
if (abs(I-prev)<tol)
f=1;
else
    m=n;
n=n*2;
h=h/2;
prev=I;  
end
end
%%fprintf('iter:%7.2f   n=%7.2f ',it,n);
gg(1)=I;gg(2)=it;gg(3)=n;
end

