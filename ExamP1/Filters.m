text1 = ['The received signal is x[n] * h[n] = '...
        'a*d[n-2] + a*d[n-1] + a*d[n] + a*d[n+1] a*d[n+1]', newline];
text1 = [text1, 'The unknown variables in this problem are x = [  ]^T.', newline];
text1 = [text1, 'We will form a LS problem of the form A*x = LS b, '...
        'where A is obtained from the received signal above.', newline];
A = [-1 0; 1 -1; 0 1; 1 1; 1 0];
b = [0 0 1 0 0]';
text1 = [text1, 'Therefore, the least sqaures problem is formulated as ['];
for(ii = 1:length(A))
    text1 = [text1, num2str(A(ii, :)), '; '];
end         
text1 = [text1, ']*[ ]^T = LS[', num2str(b'), ']^T', newline];

text1