text1 = ['The function f(x) is convex because it is the sum of convex functions.', newline];

% First function
text1 = [text1, 'The first one, f_1(x_1, x_2) = exp(x_1 + x_2) is the composition of '...
        'a convex nondecreasing function h(x) and a convex function g(x): h(g(x)).', newline];
text1 = [text1, 'h(t) = exp(t) is nondecreasing because h''(t) = exp(t) > 0 for all t '...
        'and convex because h''''(t) = exp(t) >= 0 for all t.', newline];

text1 = [text1, 'g(x_1, x_2) = x_1 + x_2 is convex because H_g(x) = [0 0; 0 0] is SDP '];

% For when the hessian is a diagonal matrix
text0 = ['because, since it is a diagonal matrix, the elements in the diagonal '...
        'are the eigenvalues, and they are all >=0.', newline];

% For when the hessian is not diagonal matrix
H = [1 2; 3 4];
[U, L] = eig(H);
textNon0 = ['because the eigenvalues (calculated using eig in matlab and they are '];
for(ii = 1:length(L))
    textNon0 = [textNon0, num2str(L(ii, ii)), ', '];
end
textNon0 = [textNon0, ') are all >=0.', newline];

text1 = [text1, textNon0];

text1 = [text1, 'Therefore, f_1(x_1, x_2) is convex', newline];

% Second function
text1 = [text1, 'The second one, f_2(x_1, x_2) = x_1 + x_2 is convex because '...
        'H_(f_2)(x) = [0 0; 0 0] is SDP '];
text1 = [text1, text0];

text1