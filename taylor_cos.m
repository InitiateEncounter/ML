% get info from user
fprintf('Taylor series of cos(x) \n');
N = input('Enter the number of terms in the expansion:  ');
x = input('Enter the value of x to evaluate the function:  ');

% Taylor series of cos(x)
approx = 0;
for n=0:N-1
    approx = approx + (-1)^n * x^(2*n) / factorial(2*n);
end

% Display the Taylor approximation and the resulting error to the command
% window
fprintf('\n')
fprintf('Taylor series approximation = %.7g \n',approx)
fprintf('actual value = %.7g \n',cos(x));
fprintf('error = %.3g \n',approx-cos(x));
