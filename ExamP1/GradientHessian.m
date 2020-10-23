text1 = ['The gradient of a function, D(f(x)), is'...
        '[(partial d/partial d x_i)f(x_i,x_j); ((partial d/partial d x_j)f(x_i,x_j)] =', newline, ...
        '[ ; ]', newline, '[ ; ]', newline, '[ ; ]', newline, '[ ; ]', newline, '[ ; ]', newline];
text1 = [text1, 'The Hessian of a function, H_f(x), is'...
        '[(partial d^2/partial d x_i^2)f(x_i,x_j) (partial d^2/(partial d x_i*partial d x_j))f(x_i,x_j); '...
        '((partial d^2/partial d x_j*partial d x_i)f(x_i,x_j) ((partial d^2/partial d x_j^2)f(x_i,x_j)] =', newline, ...
        '[() ();() ()]', newline, '[() ();() ()]', newline, '[() ();() ()]', newline];
text1
% To calculate the gradient and hessian
syms x y

f = -log(x)-log(y)-log(x+2*y+1);

g = gradient(f, [x, y])
h = hessian(f, [x, y])

%% Hessian of a matrix operation
clear;

text1 = ['The Hessian H_f(x) = (d^2/dt^2)f(x + v*t) =g''''(t).', newline];
text1 = [text1, 'g(t) = f(x + v*t) = 0.5*(x+v*t)^T*C*(x+v*t) + p^T*(x+v*t) =', newline, ...
        '0.5*x^T*C*x + 0.5*x^T*C*v*t + 0.5*v^T*t*C*x + 0.5*v^T*t*C*v*t + p^T*x + p^T*v*t =', newline, ...
        '0.5*x^T*C*x + x^T*C*v*t + 0.5*v^T*C*v*t^2 + p^T*x + p^T*v*t =', newline, ...
        '0.5*v^T*C*v*t^2 + x^T*C*v*t + p^T*v*t + p^T*x + 0.5*x^T*C*x', newline];

text1 = [text1, 'g''(t) = v^T*C*v*t + x^T*C*v + x^T*C*v', newline];
text1 = [text1, 'g''''(t) = v^T*C*v'];


text1