n = -20:20; x = sinc(0.2*n);
 k = -100:100; w = (pi/100)*k; % Frequency between -pi and +pi
 X = x * (exp(-j*pi/100)).^(n'*k);
subplot(2,2,1);plot(w,abs(X)); grid; axis([-1,1,0,10])
title('Magnitude of X'); ylabel('|X|')
subplot(2,2,2);plot(w,angle(X)); grid; 
title('Angle of X'); ylabel('radians/\pi')