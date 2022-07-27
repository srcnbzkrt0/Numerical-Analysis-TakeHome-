% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART

%% Newton_Raphson Method

function [root] = newton_raphson(func, diff, x0, maxiter)

%Statements are written in the command window
func = @(x) exp(x)- exp(-2*x)+1;
diff = @(x) exp(x) + 2*exp(-2*x);
maxiter = 100;
x0 = -2.0;
x = x0;
tol = 10^(-4);
root = nan;
for i = 1:maxiter
    if diff(x(i)) < tol
        fprintf('Pitfall has occured try a better initial guess\n');
        return;
    end
    x(i+1) = x(i) - func(x(i))/diff(x(i));
    abs_error(i+1) = abs((x(i+1)-x(i))/x(i+1))*100;
    if abs(x(i+1) - x(i)) < tol
        fprintf('The root has converged at x = %.10f\n', x(i+1));
        root = x(i+1);
        
        break;
    else 
        fprintf('Iteration no: %d, current guess x = %.10f, error = %.5f\n',i, x(i+1), abs_error(i+1));   
    end
end
end
