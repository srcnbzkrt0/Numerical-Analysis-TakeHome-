% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART

% x = linspace(0,1);
% clear all
% g = x^3+1;
% H = x+2;
% z = x.^2;
% y = cos xpi;
% f = y*z/g*h

clear all 
x = linspace(0,1,200); 
g = x.^3+1; 
h = x+2; 
z = x.^2; 
y = cos(x*pi); 
f = y.*z./(g.*h); 
f(200)