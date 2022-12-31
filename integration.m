function yn = integration(x,an,n) 
    yn = zeros(n,1);
    bn = cal_bn(an,n); 
    for i = 1:n
        for k = 1:n
            T_k(cos(theta)) = cos(k*theta);
            theta = acos(x(i)); 
            yn(i) = yn(i)+bn(k)*cos((k-1)*theta);
        end
    end
end