function [x,y,z]=get_abc(a)
goback=1;
while goback==1
    x=input('Give the value of a: ');
    while x<=0
        disp('You need to give a positive value.');
        x=input('Give the value of a: ');
    end
    y=input('Give the value of b: ');
    while y<=0
        disp('You need to give a positive value.');
        y=input('Give the value of b: ');
    end
    z=input('Give the value of c: ');
    while z<=0
        disp('You need to give a positive value.');
        z=input('Give the value of c: ');
    end
    if x<y+z && y<x+z && z<x+y
        goback=0;
    else
        disp('The triangular is not valid!!!');
        fprintf('\n')
    end
end