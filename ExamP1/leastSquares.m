clear;
%% Formulating the problem
text1 = ['The unknown variables in this problem are x = [  ]^T.', newline];
text1 = [text1, 'We will form a LS problem of the form A*x = LS b, '...
        'where A and b are obtained as follows', newline];
A = [1 0 0; 0 1 0; 0 0 1; 0 1 0; 1 0 0];
b = [5 4 3 2 1]';
text1 = [text1, 'Therefore, the least sqaures problem is formulated as ['];
for(ii = 1:length(A))
    text1 = [text1, num2str(A(ii, :)), '; '];
end         
text1 = [text1, ']*[ ]^T = LS[', num2str(b'), ']^T', newline];

%% Solving the problem
text1 = [text1, 'The problem to solve onsist in finding the x that gives the minimum ', newline...
        '0.5*||A*x - b||^2 = 0.5*(A*x - b)^T*(A*x - b) =', newline,'= 0.5*(x^T*A^T - b^T)*(A*x - b) ='...
        , newline, '= 0.5*(x^T*A^T*A*x - x^T*A^T*b - b^T*A*x + b^T*b) ='...
        , newline, '= 0.5*x^T*A^T*A*x - b^T*A*x + 0.5*b^T*b', newline];
text1 = [text1, 'To check whether there is one solution, it is checked if A^T*A is DP.'];
[U, L] = eig(A'*A);
text1 = [text1, 'Computing the eigenvalues of A^T*A in matlab using eig, it is found that they are '];
for(ii = 1:length(L))
    text1 = [text1, num2str(L(ii, ii)), ', '];
end

text1 = [text1, 'All the eigenvalues are positive, so A^T*A is DP', newline];
text1 = [text1, 'Therefore, the mnimization solution is unique and given by A^T*A*x = A^T*b.'...
        'This is solved using in Matlab A^T*A\A^T*b and it is obtained that x = ['];
x0 = (A'*A)\(A'*b);
text1 = [text1, num2str(x0'), ']^T', newline];

text1 = [text1, 'This point is a local minimum because the Hessian is DP. '...
        'It is a global minimum because we know that the expression obtained '...
        'gives the result of a global minimum of a quadratic function with DP matrix', newline];
%% Error
text1 = [text1, 'The projection error e = b - A*x0 = ['];
e = b - A*x0;
text1 = [text1, num2str(e'), ']^T is orthogonal to the rows of A. '...
        'So e^T*A = ['];
zer = e'*A;
text1 = [text1, num2str(zer), '].', newline];

    
text1