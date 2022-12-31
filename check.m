% Integral from 0 to 1
b = 1; a = 0;
% Integral from 1 to 2
% b = 2; a = 1;
N = 6;

for m = 1:N
    M = 2^(m-1);
    h = (b-a)/M;
    x = a:h:b;
    y = sqrt(x);
    T(m,1) = sum(y)*h - 1/2*h*(y(1) + y(end));
    
    for n = 2:m
        T(m,n) = T(m,n-1) + (T(m,n-1) - T(m-1,n-1))/(4^(n-1)-1);
    end
    
    if(m+2<=N)
    for j = 1:m-1
        R(m,j) = (T(m+1,j) - T(m,j))/(T(m+2,j) - T(m+1,j));
        fprintf("Number of mesh interval: %d ", M);
        fprintf("Number of extrapolation step: %d\n", 2^n);
        fprintf("Above ratios %f ", R(m,j));
        % Integral from 0 to 1
        fprintf("The error %s \n", T(m,j) - 2/3);
        % Integral from 1 to 2
%         fprintf("The error %s \n", T(m,j) - 2/3*(2^(3/2)-1)); 
    end
    end
end