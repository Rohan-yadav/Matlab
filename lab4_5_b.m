 
 b = [1 -1 1]; % Filter coefficient array b
 a = [1 -0.95 0.925]; % Filter coefficient array a
 m = 0:length(b)-1; l = 0:length(a)-1; % Index arrays m and l
K = 500; k = 0:1:K; % Index array k for frequencies
 w = pi*k/K; % [0, pi] axis divided into 501 points.
 num = b * exp(-j*m'*w); % Numerator calculations
 den = a * exp(-j*l'*w); % Denominator calculations
 H = num ./ den; % Frequency response
 magH = abs(H); angH = angle(H);
 
  subplot(2,1,1); plot(w/pi,magH); grid; axis([0,1,0,1])
ylabel('Magnitude |H|');
 title('Magnitude Response');
 subplot(2,1,2); plot(w/pi,angH/pi); grid
 xlabel('Frequency in \pi Units'); ylabel('Phase in \pi Radians');
 title('Phase Response');