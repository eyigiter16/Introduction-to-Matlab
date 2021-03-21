% Find number of rectangles from unit squares
% Written by Ekrem Yiðiter, 27.03.2018

clc;
clear all;
close all;

m=input('Enter m: ');
while m<=0 || rem(m,1)~=0
    disp('This is not a positive integer!');
    m=input('Enter m: ');
end

n=input('Enter n: ');
while n<=0 || rem(n,1)~=0
    disp('This is not a positive integer!');
    n=input('Enter n: ');
end

total=0;
for a=1:n
    for b=m:-1:1
        c=b*a;
        total=c+total;
    end
end

fprintf('\nTotal number of rectangles inside a 3x4 rectangle of unit squares: %g\n',total);