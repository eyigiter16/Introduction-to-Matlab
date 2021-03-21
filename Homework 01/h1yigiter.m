Px = input('Enter P(x):');
Py = input('Enter P(y):');
Pz = input('Enter P(z):');
Qx = input('Enter Q(x):');
Qy = input('Enter Q(y):');
Qz = input('Enter Q(z):');
P = [Px, Py, Pz];
Q = [Qx, Qy, Qz];
Pl=sqrt(Px^2+Py^2+Pz^2);
Ql=sqrt(Qx^2+Qy^2+Qz^2);
PQ=(Px*Qx)+(Py*Qy)+(Pz*Qz);
xr=(PQ/(Pl*Ql));
X=acos(xr);
X(1)=X*180/pi;
fprintf('\n')
fprintf('The angle between P and Q is %g degrees.',X(1));
