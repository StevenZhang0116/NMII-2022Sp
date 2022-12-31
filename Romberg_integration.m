function T = Romberg_integration(a,b,N) 

for m = 1:N
    M = 2^(m-1);
    h = (b-a)/M; 
    x = a:h:b;
    y = sqrt(x);
    % Trapezoidal rule
    T(m,1) = sum(y)*h-1/2*h*(y(1)+y(end)); 
    for n = 2:m 
        T(m,n) = T(m,n-1)+(T(m,n-1)-T(m-1,n-1))/(4^(n-1)-1);
    end
end

end