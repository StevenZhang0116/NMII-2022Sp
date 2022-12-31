function bn = cal_bn(an,n) 
    for k = 3:n-2 
        bn(k+1) = (an(k)-an(k+2))/(2*k); 
    end

    bn(n) = an(end-1)/(2*(n-1));
    const = (-1).^(2:(n-1))./((2:(n-1)).^2-1);
    bn(1) = an(1)-an(2)/4+(1/2)*((-1)^n/n+1)+const*an(3:end);
    bn(2) = an(1)-an(3)/2;
    bn(3) = (an(2)-an(4))/4;
end