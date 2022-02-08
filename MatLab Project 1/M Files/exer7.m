%Ali Valiyev, Hüseyin Eren Demirtaş, Murathan Bilgen, Orkhan Ashrafov; 12/07/2021
%Exercise 7
%takes as argument the desired tolerance and returns the number of iterations required to meet that tolerance.
%k = exer7( tolerance )
%the chosen tolerance value
%bigger than TOLERANCE
function k = exer7( tolerance )
NTERMS=20;%ali
NPOINTS=1000;
%tolerance=0.05;    
x=linspace(-1,1,NPOINTS);
y=zeros(size(x));
k=0;
term=tolerance+1;  
while max(abs(term)) > tolerance
    k = k + 1;
    term=2*(-1)^(k+1)*(pi^2/k-6/k^3)*sin(k*x);
    y=y+term;
end


