w = [0:1:500]*pi/500;
 H1=1/5*(exp(-j*w)+exp(-j*w*2)+exp(-j*w*3)+exp(-j*w*4));
 subplot(4,1,1); plot(w,abs(H1)); grid;
 title('Magnitude Response'); ylabel('|H|');
  subplot(4,1,2); plot(w,angle(H1)); grid;
 title('Phase response'); ylabel('/_H');
 
