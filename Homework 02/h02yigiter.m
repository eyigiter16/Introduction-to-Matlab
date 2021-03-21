clear
pack=input('Select package (A/B/C):   ','s');
if pack(1)~='A' && pack(1)~='a' && pack(1)~='B' && pack(1)~='b' && pack(1)~='C' && pack(1)~='c'
    fprintf('Please select a valid package\n');
else
min1=input('Calls towards same operator numbers (minutes):  ');
min2=input('Calls towards land line numbers (minutes):');
min3=input('Calls towards other operator numbers (minutes):');
if min1<0 || min2<0 || min3<0
    disp('All durations must be zero or positive!');
elseif pack=='A' || pack=='a'
    mina=1.5+0.35*min1+0.40*min2+0.60*min3;
   fprintf('Your bill is %g TL.',mina);
elseif pack=='B' || pack=='b'
    minb=5+0.35*min1+0.35*min2+0.35*min3;
    fprintf('Your bill is %g TL.',minb);
elseif pack=='C' || pack=='c'
    minc=10+0.10*min1+0.20*min2+0.30*min3;
    fprintf('Your bill is %g TL.',minc);
end
end