% Get a nxn matrix as an input or as a MAT file and act like it is an
% island represented by MatLab data. Calculate the area and the perimeter
% of the island.
% Written by Ekrem Yiğiter, 05.04.2018

clc;
clear;
close all;

area=0;
perimeter=0;

a=input('Do you want to load grid data from a file?  ','s');

if a=='y' || a=='Y'
    b=input('Enter MAT file name: ','s');
    load(b);
    
    for k=1:length(A)
        for m=1:length(A)
            if A(k,m)==1
                area = area + 1;
                
                if  k-1>0 && A(k-1,m)==0
                    perimeter = perimeter +1;
                elseif k-1==0
                    perimeter = perimeter +1;
                end
                
                if  k+1<length(A)+1 && A(k+1,m)==0
                    perimeter = perimeter +1;
                elseif k+1==length(A)+1
                    perimeter = perimeter +1;
                end
                
                if m-1>0 && A(k,m-1)==0
                    perimeter = perimeter +1;
                elseif m-1==0
                    perimeter = perimeter +1;
                end
                
                if m+1<length(A)+1 && A(k,m+1)==0
                    perimeter = perimeter +1;
                elseif m+1==length(A)+1
                    perimeter = perimeter +1;
                end
            end
        end
    end
    
else
    rows=input('Enter row #1: ');
    for l=1:length(rows)
        while rows(l)~=0 && rows(l)~=1
            disp('Entries must consist of 0s or 1s.');
            rows=input('Enter row #1: ');
        end
    end
    n=1;
    while n~=length(rows)
        fprintf('Enter row #%g: ',n+1);
        r=input('');
        while length(r)~=length(rows)
            fprintf('Each row should contain %g entries of 0s and 1s.\n',length(rows));
            fprintf('Enter row #%g: ',n+1);
            r=input('');
        end
        rows=[rows;r];
        if length(r)==length(rows)
            n=n+1;
        end
    end
    for k=1:length(rows)
        for m=1:length(rows)
            if rows(k,m)==1
                area = area + 1;
                
                if k-1>0 && rows(k-1,m)==0
                    perimeter = perimeter +1;
                elseif k-1==0
                    perimeter = perimeter +1;
                end
                
                if k+1<length(rows)+1 && rows(k+1,m)==0
                    perimeter = perimeter +1;
                elseif k+1==length(rows)+1
                    perimeter = perimeter +1;
                end
                
                if m-1>0 && rows(k,m-1)==0
                    perimeter = perimeter +1;
                elseif m-1==0
                    perimeter = perimeter +1;
                end
                
                if m+1<length(rows)+1 && rows(k,m+1)==0
                    perimeter = perimeter +1;
                elseif m+1==length(rows)+1
                    perimeter = perimeter +1;
                end
            end
        end
    end
end
fprintf('Island perimeter: %g units\n',perimeter);
fprintf('Island area: %g sq.units\n',area);