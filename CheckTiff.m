clear;
close all;

N = imread('C:\Users\liziy\Developer\Untitled.tif');
X = N(:, :, 1);
Y = N(:, :, 2);
Z = N(:, :, 3);
R = N(:, :, 5);
G = N(:, :, 6);
B = N(:, :, 7);

x = X(:);
y = Y(:);
z = Z(:);
r = R(:);
g = G(:);
b = B(:);

Matrix(1, :) = x';
Matrix(2, :) = y';
Matrix(3, :) = z';
Matrix(4, :) = r';
Matrix(5, :) = g';
Matrix(6, :) = b';

[r, c]=find(isnan(Matrix));
Matrix(:, c)=[];


P(1, :) = Matrix(1, :);
P(2, :) = Matrix(2, :);
P(3, :) = Matrix(3, :);
C(1, :) = Matrix(4, :);
C(2, :) = Matrix(5, :);
C(3, :) = Matrix(6, :);

C(:, :) = round(255*C(:, :));
% P(1, :) = x';
% P(2, :) = y';
% P(3, :) = z';
% C(1, :) = r';
% C(2, :) = g';
% C(3, :) = b';

fname = 'C:\Users\liziy\Developer\SenPointCloud.ply';
SenWritePLYfile(fname, P, C);


