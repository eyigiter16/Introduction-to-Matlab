% Create a structure array from the loaded cell arrays, get a letter or
% string from the user and find the corresponding star(s). Print all the datas
% for founded star(s). Finally find the planet that has the highest water
% ratio except Earth.
% Written by Ekrem Yiğiter, 27.04.2018

close all;
clear;
clc;

load('hw09Stars.mat');

for n=1:size(ValuableStars,1);                                              %Read datas from the cell arrays to recorf them to structer array
    stars(n).starName=ValuableStars{n,1};
    stars(n).distanceToEarth=ValuableStars{n,2};
    for m=1:size(ValuableStars{n,3},1)
        planet(m).planetName=ValuableStars{n,3}{m,1};                       %Create a new array for each stars planets
        planet(m).distanceToStar=ValuableStars{n,3}{m,2};
        planet(m).diameter=ValuableStars{n,3}{m,3};
        planet(m).waterRatio=ValuableStars{n,3}{m,4};
    end
    stars(n).planet=planet;
    clear planet;
end

star=input('Enter star name (or a part of it): ','s');
disp(' ');

disp('Star          Star to Earth  Planet         Star to planet    Diameter     Water %');
disp('============  =============  =============  ==============  ==========  ==========')

k=0;
for k=1:size(stars,2)                                                       %Find the wanted star(s)
    st=stars(k).starName;
    print=1;
    for a=1:length(st)-length(star)+1
        if strcmp(star,st(a:a+length(star)-1)) && print
            for b=1:size(stars(k).planet,2)
                fprintf('%-14s',stars(k).starName);
                fprintf('%-10.5ekm  ',stars(k).distanceToEarth);
                fprintf('%-15s',stars(k).planet(b).planetName);
                fprintf('%12.5ekm',stars(k).planet(b).distanceToStar);
                fprintf('%10gkm',stars(k).planet(b).diameter);
                fprintf('%11.7f%%',stars(k).planet(b).waterRatio);
                fprintf('\n');
            end
            print=0;
        end
    end
end
disp(' ');

f=0;
for c=1:size(stars,2)                                                       %Find the planet that has highest water ratio
    for d=1:size(stars(c).planet,2)
        e=stars(c).planet(d).waterRatio;
        
        if c==1 && d==3                                                     %Exclude the Earth as requested
            stnum=stnum;
            dianum=dianum;
        elseif e>f
            stnum=c;
            dianum=d;
            f=e;
        end
    end
end
fprintf('The planet with maximum water ratio is %s of the star %s.\n',stars(stnum).planet(dianum).planetName,stars(stnum).starName);
fprintf('It has a water ratio of %1.7f%% and a diameter of %gkm.\n',stars(stnum).planet(dianum).waterRatio,stars(stnum).planet(dianum).diameter);
