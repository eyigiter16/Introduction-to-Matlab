% Find Fibonacci Greatest Common Divisor of two fibonacci numbers that
% corresponds to given integers.
% Check whether the greatest common divisor is a fibonacci number.
% Written by Ekrem Yiðiter, 26.03.2018

clc;
clear all;
close all;

a=1;
while a==1
    m=-1;
    while m<=0 || rem(m,1)~=0
        m=input('Enter first positive integer: ');
        if m<=0 || rem(m,1)~=0
            disp('This is not a positive integer!');
        end
    end
    n=-1;
    while n<=0 || rem(n,1)~=0
        n=input('Enter second positive integer: ');
        if n<=0 || rem(n,1)~=0
            disp('This is not a positive integer!');
        end
    end
    x=0;
    y=1;
    for p=1:m
        b=x+y;
        y=x;
        x=b;
    end
    fx=x;
    
    q=0;
    w=1;
    for o=1:n
        c=q+w;
        w=q;
        q=c;
    end
    fy=q;
    
    e=1;
    for d=min(fx,fy):-1:1
        if mod(fx,d)==0 && mod(fy,d)==0 && e<d
            e=d;
        end
    end
    
    f=0;
    g=1;
    gcd=1;
    print=0;
    for r=1:min(m,n)
        h=f+g;
        g=f;
        f=h;
        if e==f && e~=1
            fprintf('\nThe GCD of Fibonacci numbers f(%g) and f(%g) is f(%g).\n\n',m,n,r);
            gcd=0;
        elseif e==1 && print==0
            fprintf('\nThe GCD of Fibonacci numbers f(%g) and f(%g) is f(%g).\n\n',m,n,r);
            print=1;
            gcd=0;
        elseif e==1 && print==1
            gcd=0;
        end
    end
    if gcd==1
        disp('GCD property of Fibonacci numbers refuted!');
    end
    
    answer=input('Do you want to try another pair (y/n)? ','s');
    if answer=='y'
        a=1;
    elseif answer=='n'
        a=0;
        disp('Goodbye!');
    end
end
    
