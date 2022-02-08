function y = Norms(matrix,vector,matrix_norm,vector_norm)
% Orkhan Ashrafov, Murathan Bilgen, Hüseyin Eren Demirtaş, Ali Valiyev
% 07.02.2022
y = norm(matrix*vector,vector_norm) <= (norm(matrix,matrix_norm)*norm(vector,vector_norm));
% This computes compatibility condition.
    if y == 1
        disp('S')
    else
        disp('U')
    end
end
