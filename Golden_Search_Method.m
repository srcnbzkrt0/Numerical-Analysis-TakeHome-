% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 2-TAKEHOME PART

%%   Optimization : Golden-Section Search Method 
clc
clear all

N = 100; %Number of Iterations
err = 0.01 %Result Accuracy

% Parameters
f = @(x) (-x^4)-(2*x^3)-(8*x^2)-5*x
xl = -2; %Lower Side
xu = 1; %Upper Side

for i = 1:N
d = 0.5*(sqrt(5)-1)*(xu-xl);
x1 = xl + d;
x2 = xu - d;

if f(x1) > f(x2)
    x1 = x2;
else
    xu = xl;
end
j = i + 1;
xx(j) = x1;
jj = j - 1;
Err = abs(xx(j) - xx(j-1));
if Err < err, break; end
end
FF = f(x1);
disp(['Optimal x: ' num2str(x1) ' ,Optimal Value:' num2str(FF) ' ,Accuracy:' num2str(Err) ' ,No Iterations:' num2str(jj)])


