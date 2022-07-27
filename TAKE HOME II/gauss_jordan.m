% SercanBOZKURT
% EEE583-NUMERICAL ANALYSIS I
% Midterm Exam 2-TAKEHOME PART

%%  Gauss-Jordan method with partial pivoting
format rational

%Linear Equations:
A=[3 4 -2 2;4 9 -3 5; -2 -3 7 6;1 4 6 7];
b=[2;8;10;2];

Ab=[A b]
[R,C] = size(Ab);

%% Pivoting Section Starts
for j = 1:R - 1
    if Ab(j,j) == 0 % Check if the pivot element is zero 
        for k = j+1:R % if pivoting is required, search in the row below for a nonzero pivot element
fprintf('Pivot Equation %d has %d pivot element so exchange row %d \n',j,Ab(j,j),k)
            if Ab(k,j)~=0
                abTemp=Ab(j,:); %Switch the row that has a zero pivot element
                Ab(j,:)=Ab(k,:); %with the row that has a nonzero pivot element
                Ab(k,:)=abTemp;
            break
            end
        end
    end
end %Pivoting Section Ends

%% 
for j=1:length(b)
    
    fprintf('Divide the pivot row %d with pivot element %0.4f to normalizing the pivot row',j,Ab(j,j))
    Ab(j,:)= Ab(j,:)/Ab(j,j)
    for i=1:length(b)
        if i~=j     
        fprintf('Multiplying row %i with %0.3f and substract from row %d',j,Ab(i,j)/Ab(j,j),i )
        Ab(i,:)=Ab(i,:)-Ab(i,j)*Ab(j,:)  
        end
    end
end

X = Ab(:,length(Ab))

