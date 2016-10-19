close all;
clear;

% Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_03.tif');
% Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_09.tif');
% Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_15.tif');
% Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_21.tif');
% Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_27.tif');
% Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_33.tif');
% Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_39.tif');
% Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_45.tif');
% Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_51.tif');
% Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_57.tif');
% Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_63.tif');

Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_02.tif');
Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_08.tif');
Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_14.tif');
Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_20.tif');
% Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_26.tif');
Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_.tif');
Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_32.tif');
Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_38.tif');
Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_44.tif');
Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_50.tif');
Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_56.tif');
Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_62.tif');

X = zeros(424, 512, 11);
Y = zeros(424, 512, 11);
Z = zeros(424, 512, 11);
D = zeros(424, 512, 11);
T = zeros(424, 512, 11);

X(:, :, 1) = Tiff_01(:, :, 1);
X(:, :, 2) = Tiff_02(:, :, 1);
X(:, :, 3) = Tiff_03(:, :, 1);
X(:, :, 4) = Tiff_04(:, :, 1);
X(:, :, 5) = Tiff_05(:, :, 1);
X(:, :, 6) = Tiff_06(:, :, 1);
X(:, :, 7) = Tiff_07(:, :, 1);
X(:, :, 8) = Tiff_08(:, :, 1);
X(:, :, 9) = Tiff_09(:, :, 1);
X(:, :, 10) = Tiff_10(:, :, 1);
X(:, :, 11) = Tiff_11(:, :, 1);
X(:, :, :) = -X(:, :, :);

Y(:, :, 1) = Tiff_01(:, :, 2);
Y(:, :, 2) = Tiff_02(:, :, 2);
Y(:, :, 3) = Tiff_03(:, :, 2);
Y(:, :, 4) = Tiff_04(:, :, 2);
Y(:, :, 5) = Tiff_05(:, :, 2);
Y(:, :, 6) = Tiff_06(:, :, 2);
Y(:, :, 7) = Tiff_07(:, :, 2);
Y(:, :, 8) = Tiff_08(:, :, 2);
Y(:, :, 9) = Tiff_09(:, :, 2);
Y(:, :, 10) = Tiff_10(:, :, 2);
Y(:, :, 11) = Tiff_11(:, :, 2);


Z(:, :, 1) = Tiff_01(:, :, 3);
Z(:, :, 2) = Tiff_02(:, :, 3);
Z(:, :, 3) = Tiff_03(:, :, 3);
Z(:, :, 4) = Tiff_04(:, :, 3);
Z(:, :, 5) = Tiff_05(:, :, 3);
Z(:, :, 6) = Tiff_06(:, :, 3);
Z(:, :, 7) = Tiff_07(:, :, 3);
Z(:, :, 8) = Tiff_08(:, :, 3);
Z(:, :, 9) = Tiff_09(:, :, 3);
Z(:, :, 10) = Tiff_10(:, :, 3);
Z(:, :, 11) = Tiff_11(:, :, 3);

D(:, :, 1) = Tiff_01(:, :, 4);
D(:, :, 2) = Tiff_02(:, :, 4);
D(:, :, 3) = Tiff_03(:, :, 4);
D(:, :, 4) = Tiff_04(:, :, 4);
D(:, :, 5) = Tiff_05(:, :, 4);
D(:, :, 6) = Tiff_06(:, :, 4);
D(:, :, 7) = Tiff_07(:, :, 4);
D(:, :, 8) = Tiff_08(:, :, 4);
D(:, :, 9) = Tiff_09(:, :, 4);
D(:, :, 10) = Tiff_10(:, :, 4);
D(:, :, 11) = Tiff_11(:, :, 4);
D(:, :, :) = -D(:, :, :);

for f = 1:11
    for row = 1:424
        for col = 1:512
            if (D(row, col, f) == 0)
                D(row, col, f) = NaN;
            end
        end
    end
end

T(:, :, 1) = Tiff_01(:, :, 5);
T(:, :, 2) = Tiff_02(:, :, 5);
T(:, :, 3) = Tiff_03(:, :, 5);
T(:, :, 4) = Tiff_04(:, :, 5);
T(:, :, 5) = Tiff_05(:, :, 5);
T(:, :, 6) = Tiff_06(:, :, 5);
T(:, :, 7) = Tiff_07(:, :, 5);
T(:, :, 8) = Tiff_08(:, :, 5);
T(:, :, 9) = Tiff_09(:, :, 5);
T(:, :, 10) = Tiff_10(:, :, 5);
T(:, :, 11) = Tiff_11(:, :, 5);

figure(2);
for m=1:11
    warp(X(:,:,m),Y(:,:,m),500*-D(:,:,m),T(:,:,m));
    hold on;
end
xlabel('X^w');
ylabel('Y^w');
zlabel('Depth');
title('11 frames of Calibrated NearIR Based on Averaged Depth');


D_corner = zeros(11, 1);
Z_corner = zeros(11, 1);

for n = 1:11
D_corner(n, 1) = D(282, 256, n);
Z_corner(n, 1) = Z(282, 256, n);
end

n = 0;
for row = 1:424
    for col = 2:511
        if ( D(row, col, 10) == 0)
            n = n + 1;
            Zeros(n, 1) = row;
            Zeros(n, 2) = col;
        end
    end
end




% D = zeros(424, 512, 10);
% D(:, :, 1) = depth_01(:, :);
% D(:, :, 2) = depth_02(:, :);
% D(:, :, 3) = depth_03(:, :);
% D(:, :, 4) = depth_04(:, :);
% D(:, :, 5) = depth_05(:, :);
% D(:, :, 6) = depth_06(:, :);
% D(:, :, 7) = depth_07(:, :);
% D(:, :, 8) = depth_08(:, :);
% D(:, :, 9) = depth_09(:, :);
% D(:, :, 10) = depth_10(:, :);
% 
% validCount = 0;
% D_average = zeros(424, 512);
% for row = 1:424
%     for col = 1:512
%         validCount = 0;
%         for frame = 1:10
%             if (D(row, col, frame) ~= 0)
%                 validCount = validCount + 1;
%                 D_average(row, col) = D_average(row, col) + D(row, col, frame);
%             end
%         end
%         if (validCount ~= 0)
%             D_average(row, col) = D_average(row, col) / validCount;
%         end
%     end
% end
% 
% 


figure(3);
warp(Z(:,:,5), X(:,:,5),Y(:,:,5),T(:,:,5));
hold on;
VecX = zeros(512,1);
VecY = zeros(512,1);
VecZ = zeros(512,1);

for col = 1:512
    VecX(col, 1) = X(1,col,5);
    VecY(col, 1) = Y(1, col, 5);
    VecZ(col, 1) = Z(5,5,5);
end
plot3(VecZ, VecX, VecY, 'k-');
hold on;
for col = 1:512
    VecX(col, 1) = X(424,col,5);
    VecY(col, 1) = Y(424, col, 5);
    VecZ(col, 1) = Z(424,5,5);
end
plot3(VecZ, VecX, VecY, 'k-');

VecX = zeros(424,1);
VecY = zeros(424,1);
VecZ = zeros(424,1);
for row = 1:424
    VecX(row, 1) = X(row,1,5);
    VecY(row, 1) = Y(row, 1, 5);
    VecZ(row, 1) = Z(5,5,5);
end
plot3(VecZ, VecX, VecY, 'k-');

for row = 1:424
    VecX(row, 1) = X(row,512,5);
    VecY(row, 1) = Y(row, 512, 5);
    VecZ(row, 1) = Z(5,5,5);
end
plot3(VecZ, VecX, VecY, 'k-');

plot3(0,0,0,'bO');
plot3(0,0,0,'b*');
plot3(0,0,0,'bo');
xx = -11.3:0.1:0;
yy = 0*xx;
zz = 0*xx;
plot3(xx, yy, zz, 'b');

axis equal;
xlabel('Z^w');
ylabel('X^w');
zlabel('Y^w');



