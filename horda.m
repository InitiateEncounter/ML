function[x] = horda(a, b, h)%метод хорд 
i=0; 
if (MyFunction(a)*Dif(a)<0 || MyFunction(b)*Dif(b)>0) 
x=a; 
x1=b; 
else 
x=b; 
x1=a; 
end 
while (abs(MyFunction(x))>h) 
i=i+1; 
if (i>=10000) 
disp('Error! Too many iterations!'); 
break; 
else 
x=x-((x1-x)/(MyFunction(x1)-MyFunction(x)))*MyFunction(x); 
end 
end 
fprintf('Number of iterations = %d \n', i); 
end

