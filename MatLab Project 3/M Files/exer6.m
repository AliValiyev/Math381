% Ali Valiyev, Murathan Bilgen, Orhan Ashrafov, Hüseyin Eren Demirtaş,
% 02/06/2022
n=5;
Jcol=1;
A=hilb(5);
L=eye(n); % square n by n identity matrix
U=A;
for Irow=Jcol+1:n
% compute Irow multiplier and save in L(Irow,Jcol)
L(Irow,Jcol)=U(Irow,Jcol)/U(Jcol,Jcol);
% multiply row "Jcol" by L(Irow,Jcol) and subtract from row "Irow"
% This vector statement could be replaced with a loop
U(Irow,Jcol:n)=U(Irow,Jcol:n)-L(Irow,Jcol)*U(Jcol,Jcol:n);
end