%Find the first ten successive prime pairs
%Written by Ekrem Yiðiter, 20.03.2018
clc
clear all;
close all;
n=1;
b=1;
while n<11
    x=1;
    while x==1
        b=b+1;
        x=0;
        for k=1:sqrt(b)
            if mod(b,k+1)==0 && b~=2
                x=1;
            end
        end
    end
    a=b;
    y=1;
    while y==1
        a=a+1;
        y=0;
        for l=1:sqrt(a)
            if mod(a,l+1)==0
                y=1;
            end
        end
    end
    p=a*b+a+b;
    z=0;
    for m=1:sqrt(p)
        if mod(p,m+1)==0
            z=1;
        end
    end
    if z==0
        fprintf('For (%g,%g), %gx%g+%g+%g= %g is a prime.\n',b,a,b,a,b,a,p);
        n=n+1;
    else
        fprintf('For (%g,%g), %gx%g+%g+%g= %g is NOT prime.\n',b,a,b,a,b,a,p);
    end
end