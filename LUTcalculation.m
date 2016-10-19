close all;
clear;

% Tiff_01 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_01.tif');
% Tiff_02 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_02.tif');
% Tiff_03 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_03.tif');
% Tiff_04 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_04.tif');
% Tiff_05 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_05.tif');
% Tiff_06 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_06.tif');
% Tiff_07 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_07.tif');
% Tiff_08 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_08.tif');
% Tiff_09 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_09.tif');
% Tiff_10 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_10.tif');

% Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_02.tif');
% Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_08.tif');
% Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_14.tif');
% Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_20.tif');
% Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_26.tif');
% Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_32.tif');
% Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_38.tif');
% Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_44.tif');
% Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_50.tif');
% Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_56.tif');
% Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_62.tif');

Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_03.tif');
Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_09.tif');
Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_15.tif');
Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_21.tif');
Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_27.tif');
Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_33.tif');
Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_39.tif');
Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_45.tif');
Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_51.tif');
Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_57.tif');
Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_63.tif');


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

for i = 1:5
    X(:,:,i) = X(:,:,i) - 1;
end

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

for row = 1:424
    for col = 1:512
        for frame = 1:11
            if (-5000*D(row, col, frame) <= 70 ...
                || -5000*D(row, col, frame) >=200)
                D(row, col, frame) = NaN;
            end
        end
    end
end
% D(:, :, :) = -D(:, :, :);

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

% varZ = -11.97 : 0.05 : 0;
% figure(1);
% 
% B1 = zeros(10, 1);
% B2 = zeros(10, 1);
% A = zeros(10, 2);
% a = zeros(424, 512);
% b = zeros(424, 512);
% c = zeros(424, 512);
% d = zeros(424, 512);

% for i = 1 : 424
%   for j = 1 : 512
% 
%       
% %       for m = 1 : 10
% %           X_predic(i, j, m) = A(m, :) * Var_z2x;
% %           Y_predic(i, j, m) = A(m, :) * Var_z2y;
% %       end
%       if ( ( i ==  1 && mod(j,2) == 0) || ( i ==  424 && mod(j,2) == 0) || ( j ==  1 && mod(i,2) == 0) || ( j ==  512 && mod(i,2) == 0) )
%           
%       for n = 1 : 10
%             B1(n, 1) = X(i, j, n);
%             B2(n, 1) = Y(i, j, n);
%             A(n, 1) = Z(i, j, n);
%             A(n, 2) = 1;
%       end
%       
%       Var_z2x = (A' * A)\(A' * B1);
%       a(i, j) = Var_z2x(1, 1);
%       b(i, j) = Var_z2x(2, 1);
% 
%       Var_z2y = (A' * A)\(A' * B2);
%       c(i, j) = Var_z2y(1, 1);
%       d(i, j) = Var_z2y(2, 1);  
%       
%           varX = a(i, j)*varZ + b(i, j);
%           varY = c(i, j)*varZ + d(i, j);
%           plot3(varZ, varX, varY, 'Color', [0.2 0.2 0.2]);
%           hold on;
%       end
%       
%   end
% end

% for i = 1 : 424
%   for j = 1 : 512
% 
%       for n = 1 : 10
%             B1(n, 1) = X(i, j, n);
%             B2(n, 1) = Y(i, j, n);
%             A(n, 1) = Z(i, j, n);
%             A(n, 2) = 1;
%       end
%       
%       Var_z2x = (A' * A)\(A' * B1);
%       a(i, j) = Var_z2x(1, 1);
%       b(i, j) = Var_z2x(2, 1);
% 
%       Var_z2y = (A' * A)\(A' * B2);
%       c(i, j) = Var_z2y(1, 1);
%       d(i, j) = Var_z2y(2, 1);      
%       
%       for m = 1 : 10
%           X_predic(i, j, m) = A(m, :) * Var_z2x;
%           Y_predic(i, j, m) = A(m, :) * Var_z2y;
%       end
%       if ( ( i ==  1 && mod(j,20) == 10) || ( i ==  424 && mod(j,10) == 0) || ( j ==  1 && mod(i,10) == 0) || ( j ==  512 && mod(i,10) == 0) )
%           varX = a(i, j)*varZ + b(i, j);
%           varY = c(i, j)*varZ + d(i, j);
%           plot3(varZ, varX, varY, 'g');
%           hold on;
%       end
          
%       if (  ( X(i, j, 10) - floor(X(i, j, 10)) ) <0.02 && ( Y(i, j, 10) - floor(Y(i, j, 10)) ) <0.02 )
%           varX = a(i, j)*varZ + b(i, j);
%           varY = c(i, j)*varZ + d(i, j);
%           
%           switch floor(Y(i, j, 10))
%             case -6
%                 plot3(varZ, varX, varY, 'b');
%             case -5
%                 plot3(varZ, varX, varY, 'r');
%             case -4
%                 plot3(varZ, varX, varY, 'k');
%             case -3
%                 plot3(varZ, varX, varY, 'b');
%             case -2
%                 plot3(varZ, varX, varY, 'g');
%             case -1
%                 plot3(varZ, varX, varY, 'r');
%             case 0
%                 plot3(varZ, varX, varY, 'k');
%             case 1
%                 plot3(varZ, varX, varY, 'r');
%             case 2
%                 plot3(varZ, varX, varY, 'g');
%             case 3
%                 plot3(varZ, varX, varY, 'b');
%             case 4
%                 plot3(varZ, varX, varY, 'k');
%             case 5
%                 plot3(varZ, varX, varY, 'r');
%             case 6
%                 plot3(varZ, varX, varY, 'b');
%             otherwise
%                 plot3(varZ, varX, varY, 'm');
%           end
% 
%           hold on;
%       end
% %       for n = 1 : 10
% %             X_post(n, 1) = A(n, :) * Var_z2x;
% %             Diff(n, 1) = X(i, j, n) - X_post(n, 1);
% %       end
% 
%   end
% end

% xd = linspace(-6,6);
% yd=linspace(-4,4);
% [yw,zw]=meshgrid(xd,yd);
% xw=zeros(size(zw));
% surf(xw,yw,zw);
% hold on;

% axis equal;
% xlabel('Z^w');
% ylabel('X^w');
% zlabel('Y^w');
% title('Samples Beams of Calculated of NearIR Sensor');
% zlim([-7.3, 7.4])

figure(2);
for m=1:11
%     warp(X(:,:,m),Y(:,:,m),5000*D(:,:,m), T(:,:,m));
    warp(X(:,:,m),Y(:,:,m),Z(:,:,m), T(:,:,m));

    hold on;
end
% xlim([-120, -90]);
xlabel('Depth*-5000');
ylabel('X^w');
zlabel('Y^w');
title('10 frames of Calibrated NearIR XY-D');

% Tiff_RGB_01 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_01.tif');
% Tiff_RGB_02 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_02.tif');
% Tiff_RGB_03 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_03.tif');
% Tiff_RGB_04 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_04.tif');
% Tiff_RGB_05 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_05.tif');
% Tiff_RGB_06 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_06.tif');
% Tiff_RGB_07 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_07.tif');
% Tiff_RGB_08 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_08.tif');
% Tiff_RGB_09 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_09.tif');
% Tiff_RGB_10 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\RGB_10.tif');
% 
% X2(:, :, 1) = Tiff_RGB_01(:, :, 1);
% X2(:, :, 2) = Tiff_RGB_02(:, :, 1);
% X2(:, :, 3) = Tiff_RGB_03(:, :, 1);
% X2(:, :, 4) = Tiff_RGB_04(:, :, 1);
% X2(:, :, 5) = Tiff_RGB_05(:, :, 1);
% X2(:, :, 6) = Tiff_RGB_06(:, :, 1);
% X2(:, :, 7) = Tiff_RGB_07(:, :, 1);
% X2(:, :, 8) = Tiff_RGB_08(:, :, 1);
% X2(:, :, 9) = Tiff_RGB_09(:, :, 1);
% X2(:, :, 10) = Tiff_RGB_10(:, :, 1);
% 
% Y2(:, :, 1) = Tiff_RGB_01(:, :, 2);
% Y2(:, :, 2) = Tiff_RGB_02(:, :, 2);
% Y2(:, :, 3) = Tiff_RGB_03(:, :, 2);
% Y2(:, :, 4) = Tiff_RGB_04(:, :, 2);
% Y2(:, :, 5) = Tiff_RGB_05(:, :, 2);
% Y2(:, :, 6) = Tiff_RGB_06(:, :, 2);
% Y2(:, :, 7) = Tiff_RGB_07(:, :, 2);
% Y2(:, :, 8) = Tiff_RGB_08(:, :, 2);
% Y2(:, :, 9) = Tiff_RGB_09(:, :, 2);
% Y2(:, :, 10) = Tiff_RGB_10(:, :, 2);
% 
% Z2(:, :, 1) = Tiff_RGB_01(:, :, 3);
% Z2(:, :, 2) = Tiff_RGB_02(:, :, 3);
% Z2(:, :, 3) = Tiff_RGB_03(:, :, 3);
% Z2(:, :, 4) = Tiff_RGB_04(:, :, 3);
% Z2(:, :, 5) = Tiff_RGB_05(:, :, 3);
% Z2(:, :, 6) = Tiff_RGB_06(:, :, 3);
% Z2(:, :, 7) = Tiff_RGB_07(:, :, 3);
% Z2(:, :, 8) = Tiff_RGB_08(:, :, 3);
% Z2(:, :, 9) = Tiff_RGB_09(:, :, 3);
% Z2(:, :, 10) = Tiff_RGB_10(:, :, 3);
% 
% T2(:, :, 1) = Tiff_RGB_01(:, :, 5);
% T2(:, :, 2) = Tiff_RGB_02(:, :, 5);
% T2(:, :, 3) = Tiff_RGB_03(:, :, 5);
% T2(:, :, 4) = Tiff_RGB_04(:, :, 5);
% T2(:, :, 5) = Tiff_RGB_05(:, :, 5);
% T2(:, :, 6) = Tiff_RGB_06(:, :, 5);
% T2(:, :, 7) = Tiff_RGB_07(:, :, 5);
% T2(:, :, 8) = Tiff_RGB_08(:, :, 5);
% T2(:, :, 9) = Tiff_RGB_09(:, :, 5);
% T2(:, :, 10) = Tiff_RGB_10(:, :, 5);
% 
% figure(3);
% for m = 1:10
%     warp(X2(:,:,m),Y2(:,:,m),Z2(:,:,m),T2(:,:,m));
%     hold on;
% end
% xlabel('world coordinate X');
% ylabel('world coordinate Y');
% zlabel('world coordinate Z');
% title('10 frames of RGB Calibrated Images');

% plot(Z(:)*228,D(:)*65535,'r.');






