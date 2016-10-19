clc;
clear;

N = dlmread('SenPointCloud.txt', '\t', 0, 0);
x = N(:,1);
y = N(:,2);
z = N(:,3);
r = N(:,4);
g = N(:,5);
b = N(:,6);

% for row = 1: size(x)
%     if (isnan(x(row)) || isnan(y(row)) || isnan(z(row)) || isnan(r(row)) || isnan(g(row)) || isnan(b(row)) )    
%         x(row) = [];
%         y(row) = [];
%         z(row) = [];
%         r(row) = [];
%         g(row) = [];
%         b(row) = [];
%     end
% end    
    
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


fname = 'C:\Users\liziy\Developer\SenPointCloud.ply';
SenWritePLYfile(fname, P, C);