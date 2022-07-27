% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 2-TAKEHOME PART

%%   Gauss Seidel iterative technique 
clc
clear all

%Equations we interest to solve 
A = [10 -1 2 0 ; -1 11 -1 3 ; 2 -1 10 -1 ; 0 3 -1 8]; %Coefficients Matrix
B = [6 ; 25 ; -11 ; 15]; %Right-hand-side Matrix
[m,n] = size(A);

N = 100; %Number of Iterations
err = 0.001; % Result Accuracy

x = [0 0 0 0]; % Inýtial value
xx(1,:) = x; % X History

for k = 2:N
for i = 1:n
    s = 0;
    for j = 1:n
        if j ~= i
            s = s + A(i,j) * x(j);
        end
    end
    x(i) = (1/A(i,i))*(B(i) - s);
end
xx(k,:) = x;
kk = k;
Err = abs(max(xx(k,:)-xx(k-1,:)));
if Err < err, 
    break;
end
end
disp(['The Roots are [' num2str(x) '], with accuracy: ' num2str(Err) ' ,No iterations: ' num2str(kk)])

