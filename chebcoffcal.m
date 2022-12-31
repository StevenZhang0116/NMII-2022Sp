function [an]=chebcoffcal(f,n)
    n2 = 2*(n-1);
    val = 0*ones(n2,1);
    val(1) = f(n);
    val(n) = f(1);
    for k = 2:n-1
        val(k) = f(n-k+1);
        val(n2-k+2) = val(k);
    end
    an = 0*f;
    xxx = fft(val);
    t = 1.0d0/(n-1);
    for k = 1:n
        an(k) = xxx(k)*t;
    end
    an(1) = an(1)/2;
end