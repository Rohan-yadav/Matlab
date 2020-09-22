function[db,mag,pha,w] = freqs_m(b,a,wmax)
% Computation of s-domain frequency response: Modified version
% ------------------------------------------------------------
% [db,mag,pha,w] = freqs_m(b,a,wmax);
%db = relative magnitude in db over [0 to wmax]
% mag = absolute magnitude over [0 to wmax]
% pha = phase response in radians over [0 to wmax]
%w = array of 500 frequency samples between [0 to wmax]
% b = numerator polynomial coefficents of Ha(s)
% a = denominator polynomial coefficents of Ha(s)
% wmax = maximum frequency in rad/sec over which response is desired
%
w = (0 : 1 : 500)*wmax/ 500; H = freqs(b,a,w);
mag = abs(H); db = 20*log10((mag+eps)/max(mag)); pha = angle(H);
end
