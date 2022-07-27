% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 2-TAKEHOME PART

%%   LU factorization of a square matrix without partial pivoting
clc
clear all

A = [7 2 -3; 2 5 -3; 1 -1 -6]
N = length(A);
L = zeros(N,N);
U = zeros(N,N);
for a=1:N
    L(a,a) = 1;
end
U(1,:) = A(1,:);
L(:,1) = A(:,1)/U(1,1);
for i=2:N
    for j=i:N
        U(i,j) = A(i,j) - L(i,1:i-1)*U(1:i-1,j)
    end
    for k=i+1:N
        L(k,i) = (A(k,i) - L(k,1:i-1)*U(1:i-1,i))
    end
end
