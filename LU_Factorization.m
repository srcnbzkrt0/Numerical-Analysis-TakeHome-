% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 2-TAKEHOME PART

%%   LU factorization of a square matrix without partial pivoting
clc
clear all

% Equations we interest to solve 
A = [7 2 -3 ; 2 5 -3 ; 1 -1 -6]; %Coefficients Matrix
r = [-12 ; -20 ; -26]; %Right-hand-side Matrix
[m,n] = size(A);

%Upper Matrix
s=0;
for j = 1:n
    for i = s+1:m-1
        t = A(i+1,j) / A(j,j);
        A(i+1,:) = A(i+1,:) - t * A(j,:);
        r(i+1) = r(i+1) - t * r(j);
        f(i+1,j) = t;
    end
    s = s+1;
end
U = A %Upper Matrix
L = f; 
L(:,n)=zeros(n,1);
for i=1:n
    L(i,i)=1;
end
L %Lower Matrix



    