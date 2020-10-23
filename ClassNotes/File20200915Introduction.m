A = rand(2);
Aantisymetric = (A-A')/2; %Antisimetric matrix: diagonal of 0
Asymetric = (A+A')/2; %Symetric matrix: two elements are equal in the secondary diagonal

% f = @(x, y) [x y]*A*[x y]'; %@ is used to create a afunction in x, y. 
f = @(x, y) [x y]*Aantisymetric*[x y]'; %The result will be a 0 because all the values cancel in the antisymetric matrix
f = @(x, y) [x y]*Asymetric*[x y]'; %The result depends on th


figure;
fsurf(f); 
% The result will be a paraboloid (a minimum at the zero) or a "horse
% chair". This will depend on the symetric part of the function. These
% functions are important because they solve many problems in optimization