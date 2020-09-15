# Checking of delay property of DTFT 
n = 0:7; x = [1 2 2 2 1 0 0 0];
n1= 0:7; x1 = [0 0 0 1 2 2 2 1];
k = 0:3; w = (pi/4)*k; # Frequency 
X = x *(exp(-j*pi/100).*(n'*k)); #DTFT of x
y= x + x1;
#Y = exp(j*pi*n/4).*x; #Signal multiplied by exp(j*pi*n/4)
Y = y * (exp(-j*pi/100).*(n'*k)); # DTFT of y
# Graphical verification
subplot(2,2,1); plot(w/pi,abs(X)); grid; axis([-1,1,0,60])
title('Magnitude of X'); ylabel('|X|')
subplot(2,2,2); plot(w/pi,angle(X)/pi); grid; axis([-1,1,-1,1])
title('Angle of X'); ylabel('radians/\pi')
subplot(2,2,3); plot(w/pi,abs(Y)); grid; axis([-1,1,0,60])
title('Magnitude of Y'); ylabel('|Y|')
