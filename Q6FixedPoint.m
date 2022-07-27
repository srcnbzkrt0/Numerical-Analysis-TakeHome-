% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART

%% Fixed-point Algorithm
g = @(x)exp(x) - exp(-2*x);
x0 = -2.0;
tol = 1.e-4;
n = 20;

for i=1:n
    x1 = g(x0);
    fprintf('x%d = %.4f\n',i,x1)
    x0 = x1;
end