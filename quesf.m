%SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 1-TAKEHOME PART
function Question2 = quesf(x)
x = [ .3 1/3 .5 1/2 1.65 -1.34 ]
fprintf('x\t\t\t round()\t ceil()\t\t floor()\t fix()\t\n')
for i = 1:length(x);
    fprintf('%.2f\t\t %.2f\t\t %.2f\t\t %.2f\t\t %.2f\t\t \n', x(i), round(x(i)), ceil(x(i)), floor(x(i)), fix(x(i)))
end
end

