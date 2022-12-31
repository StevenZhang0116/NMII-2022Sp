function [xn]=chebnode(n)
    pi = atan(1.0d0)*4;
    n1 = n-1;
    xn = 0*ones(n,1);
    for k = 0:n1
        xn(n-k) = cos(k*pi/n1);
    end
end