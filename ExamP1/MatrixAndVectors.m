%% Calculate eigenvalues
text1 = ['To compute the eigenvalues it is done the spectral factorization,' ... 
        'which consists on the decomposition of A = U*L*U^T, where L is a a diagonal with the eigenvalues' ...
        'placed in the main diagonal, and U is a orthonormal matrix with the' ...
        'columns being the eigenvectors of each eigenvalues.', newline];
A = [1 0 0; 0 -1 0; 0 0 0];
[U, L] = eig(A);
text1 = [text1, 'The eigenvalues would be computed finding the solutions of l in det(A-l*I) = 0.', newline]
text1 = [text1, 'In this case, they are obtained using the eig function in Matlab,'...
        'and it is obtained that the eigenvalues are '];

for(ii = 1:length(L))
    text1 = [text1, num2str(L(ii, ii)), ', '];
end

text1 = [text1, newline, 'The eigenvectors would be computed finding the solutions of v in A*v = l*v.'...
        'for each l obtaining a different v.', newline];
text1 = [text1, 'In this case, they are obtained using the eig function in Matlab,'...
        'and it is obtained that the eigenvectors are', newline];  
    
for(ii = 1:length(L))
    text1 = [text1, '[', num2str(U(:, ii)'), ']^T for the eigenvalue ', num2str(L(ii, ii)), ', '];
end 

text1