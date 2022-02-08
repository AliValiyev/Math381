% Ali Valiyev, Hüseyin Eren Demirtaş, Murathan Bilgen, Orkhan Ashrafov;
% 12/07/2021

%Exercise_8
function [the_vector, number_of_iterations] = exer8( tolerance )
%k = exer7( tolerance )
%takes as argument the desired tolerance and returns the number of iterations required to meet that tolerance.

NTERMS=20;
NPOINTS=1000;
x=linspace(-1,1,NPOINTS);
y=zeros(size(x));
k=0;
term=tolerance+1;  % bigger than TOLERANCE

while max(abs(term)) > tolerance
    k = k + 1;
    term=2*(-1)^(k+1)*(pi^2/k-6/k^3)*sin(k*x);
    y=y+term;
end

the_vector = y;
number_of_iterations = k;

