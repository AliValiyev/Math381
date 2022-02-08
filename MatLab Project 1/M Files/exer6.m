% Ali Valiyev, Hüseyin Eren Demirtaş, Murathan Bilgen, Orkhan Ashrafov; 12/07/2021
%Exercise 6
NTERMS=20;
NPOINTS=1000;
TOLERANCE=0.05;    % the chosen tolerance value
x=linspace(-1,1,NPOINTS);
y=zeros(size(x));
k=0;
term=TOLERANCE+1;  % bigger than TOLERANCE
while max(abs(term)) > TOLERANCE
    k = k + 1;
    term=2*(-1)^(k+1)*(pi^2/k-6/k^3)*sin(k*x);
    y=y+term;
end
disp( strcat('Number of iterations =',num2str(k)) )
plot(x,y,'b');  % 'b' is for blue line
%hold on
plot(x,x.^3,'g'); % 'g' is for a green line
axis([-1,1,-2,2]);
%hold off


