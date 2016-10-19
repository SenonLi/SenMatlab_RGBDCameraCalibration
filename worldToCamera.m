clear;

% str = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_01';
% [Q, P, R, C, Rp, Cp] = getWorldToCameraMapping(str);

% fname = 'C:\Users\liziy\Developer\Matlab Analysis\SenRGB4thPoly2x15Matrix.txt';
% fid = fopen(fname, 'w');
% dlmwrite(fname, P', '-append', 'delimiter', '\t', 'precision', '%.9f');
% fclose(fid);
% fname = 'C:\Users\liziy\Developer\Matlab Analysis\SenRGBPinHole3x4Matrix.txt';
% fid = fopen(fname, 'w');
% dlmwrite(fname, Q', '-append', 'delimiter', '\t', 'precision', '%.9f');
% fclose(fid);
Mat3x4 = dlmread('SenRGBPinHole3x4Matrix.txt', '\t', 0, 0);
Mat2x15 = dlmread('SenRGB4thPoly2x15Matrix.txt', '\t', 0, 0);

    filename = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_45.tif';
%     filename = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_60.tif';

    Tiff = imread(filename);
    X(:,:) = Tiff(:,:,1);
    Y(:,:) = Tiff(:,:,2);
    Z(:,:) = Tiff(:,:,3);
    fprintf('X frame,  Xmin = %d ,  Xmax = %d\n',min(X(:)),max(X(:)));
    fprintf('Y frame,  Ymin = %d ,  Ymax = %d\n',min(Y(:)),max(Y(:)));
    fprintf('Z frame,  Zmin = %d ,  Zmax = %d\n',min(Z(:)),max(Z(:)));
    
    TTTT = Tiff(:, :, 5);
    ColorR = zeros(size(X));
    
    [CCC,RRR]=meshgrid([0:size(X,2)-1],[0:size(X,1)-1]);
    
   
R = X;
C = Y;
Q = Mat3x4';
P = Mat2x15';
%%% USE THE A MATRIX TO CONVERT X,Y,Z, TO R,C
RCw = [X(:) Y(:) Z(:) ones(size(X(:)))]*Q;
R(:) = RCw(:,1)./RCw(:,3);
C(:) = RCw(:,2)./RCw(:,3);

    %%% USE THE B MATRIX TO CONVERT R,C TO R,C
    D = max(size(R));
    s = R(:)/D;
    t = C(:)/D;

    A = [(s.^4) (s.^3).*(t.^1) (s.^2).*(t.^2) (s.^1).*(t.^3) (t.^4) ...
         (s.^3) (s.^2).*(t.^1) (s.^1).*(t.^2) (t.^3) ...
         (s.^2) (s.^1).*(t.^1) (t.^2) ...
         (s.^1) (t.^1) ...
         ones(size(s))];
     
    RC = A*P;
    R(:) = D*RC(:,1);
    C(:) = D*RC(:,2);

    
    filename = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_45.tif';
    Tiff2 = imread(filename);
    Red = Tiff2(:, :, 5);

   
    height = size(Red,1);
    wide = size (Red, 2);
    for row = 1:size(X,1)
        for col = 1:size(X,2)
            if(round(R(row, col)) >= 0 && round(R(row, col)) < height && round(C(row, col)) >= 0 && round(C(row, col)) < wide)
                ColorR(row, col) = Red(round(R(row, col)) + 1, round(C(row, col)) + 1);
            else
                ColorR(row, col) = NaN;
            end
        end
    end
    
    figure(1);
    
    warp(-X(:, :), Y(:, :), Z(:, :), ColorR(:, :));

    
    
    
    
    
    
    
    
    
    
    