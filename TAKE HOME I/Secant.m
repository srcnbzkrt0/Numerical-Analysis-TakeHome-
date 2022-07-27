% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART

%% Secant Method
f = @(x) exp(x) - exp(-2*x) + 1;
x0 = -2.0;
x1 = 2.0;
tol = 1e-4;
n = 20;

for i=1:n
    x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    fprintf('x%d = %.8f\n',i,x2)
    if abs(x2-x1)<tol
        break
    end
    x0 = x1;
    x1 = x2;
end
fprintf('Number of Iteration: %d Root: %.8f\n',i,x2)