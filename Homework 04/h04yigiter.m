%    For all pairs of numbers between [a...b] (both inclusive) find all positive
% common divisors greater than 1 and display them as in the sample output below.
%    Written by Ekrem Yiðiter, 12.03.2018

clear
a=input('Enter a: ');
b=input('Enter b: ');
if a~=floor(a) || b~=floor(b) || a<0 || b<0
    disp('You must provide whole numbers greater than 1.');
else
    if a<b
        for k=a:b
            for l=a:b
                for m=2:b
                    if mod(k,m)==0 && mod(l,m)==0 && k~=l && k<l
                        fprintf('%g and %g are divisible by %g.\n',k,l,m);
                    end
                end
            end
        end
    else
        for k=b:a
            for l=b:a
                for m=2:a
                    if mod(k,m)==0 && mod(l,m)==0 && k~=l && k<l
                        fprintf('%g and %g are divisible by %g.\n',k,l,m);
                    end
                end
            end
        end
    end
end