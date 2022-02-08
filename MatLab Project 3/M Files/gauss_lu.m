function [L,U]=gauss_lu(A)

% Ali Valiyev, Murathan Bilgen, Orhan Ashrafov, Hüseyin Eren Demirtaş,
% 02/06/2022

%Before applying the algoritihm let us check whether we have a square
%matrix to apply Gaussian elimation or not.

if size(A,1) ~= size(A,2);
    error("The matrix A should be a square matrix.")
else dimension = size(A,1);


% Firstly, let us denote the dimension of the matrix A as the variable n.
n = dimension; 

% Then, we shall start with identity matrix to construct the matrix L.
L=eye(n); 

% The process will begin with directly applying "Gaussian Elimination" 
% Method without pivoting.

%As the comment suggested us, we shall construct a loop that apply row 
%reduction to each colmn of the given matrix A.
for Jcol = 1:n
    
    %Now we shall applying row reduction to Jcol.
    for Irow=Jcol+1:n

    %For this purpose, firstly let us compute Irow multiplier and 
    % save in L(Irow,Jcol)
    L(Irow,Jcol)=A(Irow,Jcol)/A(Jcol,Jcol)

    % After that, we shall multiply row "Jcol" by L(Irow,Jcol) and 
    % subtract from row "Irow" to finish the row reduction.
    A(Irow,Jcol:n)=A(Irow,Jcol:n)-L(Irow,Jcol)*A(Jcol,Jcol:n)

    end
end

%Now the remaing part of the matrix A must be in the form of upper
%triangular marix, which means that it is nothing but the matrix U.
U = A;

end

