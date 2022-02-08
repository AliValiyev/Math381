% compute NTERMS terms of the Fourier Series for y=x^3
% plot the result using NPOINTS points from -1 to 1.
% Ali Valiyev, Hüseyin Eren Demirtaş, Murathan Bilgen, Orkhan Ashrafov; 11/30/2021

NTERMS=20;
NPOINTS=1000;
x=linspace(-1,1,NPOINTS);
y=zeros(size(x));
for k=1:NTERMS
  term=2*(-1)^(k+1)*(pi^2/k-6/k^3)*sin(k*x);
  y=y+term;
end
plot(x,y,'b');  % 'b' is for blue line
%hold on
plot(x,x.^3,'g'); % 'g' is for a green line
axis([-1,1,-2,2]);
%hold off


