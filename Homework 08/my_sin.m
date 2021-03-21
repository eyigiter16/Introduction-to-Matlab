function x=my_sin(a)
global s
stop=false;
up=1;
n=1;
m=0;
while ~stop
    d1=(2*up)-1;
    m = m + (n*(a^d1)/my_fact(d1));
    up=up+1;
    n=(-1)*n;
    if m<s
        stop=1;
    end
end
x=m