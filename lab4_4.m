w = [0:1:500]*pi/500; % [0, pi] axis divided into 501 points.
 H1 = exp(j*w) ./ (exp(j*w) - 0.5*ones(1,501));
 H2= exp(j*w) ./ (exp(j*w) - 0.4*ones(1,501));
 H=H1+H2;
 magH = abs(H); angH = angle(H);
 subplot(2,1,1); plot(w,magH); grid;
 title('Magnitude Response'); ylabel('|H|');
 subplot(2,1,2); plot(w,angH); grid
 xlabel('Frequency in \pi Units'); ylabel('Phase in \pi Radians');
 title('Phase Response');