% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART

%% Bisection Method
 
f = @(x)exp(x)-exp(-2*x) + 1;
tol = 1.e-4;
a = -2.0;
b = 2.0;

if f(a)*f(b) > 0
    fprintf('No roots exist within the given interval\n');
    return
end
 
if f(a) == 0
    fprintf('x1 is one of the root\n')
    return
elseif f(b) == 0
    fprintf('x2 is one of the root\n')
    return
end
for i = 1: 100
    xh = (a+b)/2; %bisection
    if f(a)*f(xh) < 0
        b = xh;
    else
        a = xh;
    end
    if abs(f(a)) < 1.0E-4
        break
    end
end
fprintf('The root: %f\nThe number of bisections: %d\n',a,i)
