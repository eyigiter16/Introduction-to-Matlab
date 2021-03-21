% Find the root by using Newton-Raphson method.
% Written by Ekrem Yiðiter, 06.03.2018

clc
clear
a=input('Enter a: ');
it=input('Enter number of iterations: ');
in=input('Enter initial guess: ');
E=input('Enter epsilon: ');
for k=1:it
    f=(in^2)-a;
    f1=2*in;
    in=in-f/f1;
end
realroot=sqrt(a);
if (realroot-in)<E && (in-realroot)<E
    fprintf('The root of the function is at %g.',in);
else
    disp('The root could not be found.');
end