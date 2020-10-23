A = rand(3, 2);
b = rand(3, 1);
% x = inv(A)*b
y = A\b        % Same operation in Matlab. But it also works even when inv(A) does not exist

%% Lets do something random now
A = rand(3, 2);
p = A*rand(2, 100);

figure;

scatter3(p(1, :), p(2, :), p(3, :));
daspect([1, 1, 1]);
% Here we are plotting the range of the matrix

%% Aqui no estendia nada, sigamos
b = rand(3, 1);
u = A*(A\b);
% u = A*inv(A.'*A)*A.'*b
hold on;
scatter3(b(1), b(2), b(3));
scatter3(u(1), u(2), u(3));
% It is seen here that the \operation is the projection of b on the plane
% of the range (seen in the previous part). In other words: it gives the
% point in the range closest to b. It is the ortogonal projection. The
% smallest error when there is no solution

%% 
clear all
close all
% (p_i, q_1) I am interested in all the points that follow
% q_i = x_1*p_i+x_2
x = [1, 2];
p = 1:0.5:10;
q = x(1)*p+x(2);
figure;
scatter(p, q)

qn = q + randn(size(q));    % Adding some noise to the vertical component
hold on;
scatter(p, qn)

%% Now we are trying to find the original matrix from which the noise is obtained, using the least sqaure error
% Because we want to find de solution of the system px = qn. Since there is
% no solution we try to find the leas sqaure error: px = ls(qn)
A = [p' ones(size(p, 2),1)];    % Because Ax = q
x_ap = A\qn;                    % Here are the x that is the best solutions (smallest error) to the Ax = qn
qa = x_ap(1)*p+x_ap(2);
hold on;
scatter(p, qa);




