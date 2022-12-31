for n = 4:80 
    x = chebnode(n); 
    y = cos(x).^2; 
    an = real(chebcoffcal(y,n)); 
    bn = cal_bn(an,n);
    yn = integration(x,an,n);  
    analytic = (1/2)*x+(1/4)*sin(2*x)+3/2+(1/4)*sin(2);  
    yn = yn-yn(1)+analytic(1); 
    error(n)=max(abs(yn-analytic));
end
figure(3);
semilogy(4:80,error(4:80),'-r');
title('Semi-log scale plot of error vs Number of Chebyshev nodes');
xlabel('Number of Chebyshev nodes');
ylabel('Error');