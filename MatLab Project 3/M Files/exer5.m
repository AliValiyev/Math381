function elapsedTime=exer5(n)
% Ali Valiyev, Murathan Bilgen, Orhan Ashrafov, Hüseyin Eren Demirtaş,
% 02/07/2022
if mod(n,2)==0
  error('Please use only odd values for n');
end

A = magic(n);    % only odd n yield invertible matrices
b = ones(n,1);   % the right side vector doesn't change the time
tic;
xSolution = A\b;  % compute the solution
elapsedTime=toc;