function [LUT, D, X, Y, Z, Zd] = buildLUT(str)
%
%  buildLUT Build look up table.
%     LUT = buildLUT(str) builds a look up table (LUT) from the
%     calibration data stored in the file with filename str.
%
%     [LUT, P, Q] = buildLUT(str) returns the measured and reconstructed
%     depth matrices for evaluating the quality of the LUT.
%
%     [..., X, Y, Z] = buildLUT(str) returns the XYZ matrices.
%
str = 'C:\Users\liziy\Developer\VS\LUT\SenKinectV2LUT.lut';
h = imfinfo('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_01.tif');

Tiff_01 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_01.tif');
Tiff_02 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_02.tif');
Tiff_03 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_03.tif');
Tiff_04 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_04.tif');
Tiff_05 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_05.tif');
Tiff_06 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_06.tif');
Tiff_07 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_07.tif');
Tiff_08 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_08.tif');
Tiff_09 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_09.tif');
Tiff_10 = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\ReNamed\NearIR_10.tif');

X = zeros(424, 512, 10);
Y = zeros(424, 512, 10);
Z = zeros(424, 512, 10);
D = zeros(424, 512, 10);
% T = zeros(424, 512, 10);

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

%%% SHIFT THE X AND Y SO THAT THE CAMERA IS LOOKING AT THE ORIGIN OF SPACE
X = X - mean(X(:));
Y = Y - mean(Y(:));

%     %%% MOVE ALL THE Z VALUES AWAY FROM THE XY PLANE
%     Z = 500 + Z;
% 
%     %%% FLIP THE Z AND X AXES
%     X =  X * 133.0/6.0;
%     Y =  Y * 133.0/6.0;
% Z = -Z;

% %%% DELETE PHASE VALUES TOO CLOSE TO 0 OR 2PI
% P(find(P<0.05)) = nan;
% P(find(P>0.95)) = nan;
% P = 10*P;

%%% USE THE XYZD MATRICES TO BUILD OUT LOOK UP TABLE
LUT = calibrateLUT(X,Y,Z,D);

Zd = Z;
for n = 1:size(D,3)
    d = D(:,:,n);
    z =     LUT.data(:,:,5) .* d.^4;
    z = z + LUT.data(:,:,6) .* d.^3;
    z = z + LUT.data(:,:,7) .* d.^2;
    z = z + LUT.data(:,:,8) .* d.^1;
    z = z + LUT.data(:,:,9) .* d.^0;
    Zd(:,:,n) = z;
end;

% %%% REPLACE THE INPUT FILE STRING WITH THE FILE'S MAKE STRING
% if (~isempty(h(1).Make))
%     str = h(1).Make;
% else
%     str = str(1:end-4);
% end;
% str = [str '.lut'];
% 
%%% EXPORT LUT TO DISK USING THE INPUT FILENAME
LUT.Software = 'Sen RGB-D Cameras Calibration';
LUT.Model = '';
LUT.Make = '';

saveLUT(LUT, str);

return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function LUT = calibrateLUT(X,Y,Z,D)

[M,N,S]=size(X);

data = ones(M,N,12)*nan;

h = waitbar(0, 'Building the LUT...');
for m=1:M
    waitbar(m/M, h);
    for n=1:N
        x = X(m,n,:); x = x(:);
        y = Y(m,n,:); y = y(:);
        z = Z(m,n,:); z = z(:);
        d = D(m,n,:); d = d(:);
        
        A = [z ones(size(z))];
        v = (A'*A)\A'*[x y];
        
        data(m,n,1) = v(1,1);
        data(m,n,2) = v(2,1);
        data(m,n,3) = v(1,2);
        data(m,n,4) = v(2,2);

        z = z(find(~isnan(d)));
        d = d(find(~isnan(d)));
        if (length(d) > 10)
            v = polyfit(d,z,4);
            data(m,n,5:9) = v(:);
        end;
    end;
end;
close(h);

LUT = struct('data', single(data), 'zMin', min(min(min(Z))), 'zMax', max(max(max(Z))), ...
             'xMin', min(min(min(X))), 'xMax', max(max(max(X))), 'yMin', min(min(min(Y))), ...
             'yMax', max(max(max(Y))), 'camera', 'KinectV2', ...
             'fileName', 'DrLausCoolestLUT', 'width', uint32(N), 'height', uint32(M), ...
             'Make', [], 'Model', [], 'Software', []);
         
return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function saveLUT(LUT, fileName)

t = Tiff(fileName, 'w');
t.setTag('ImageLength', size(LUT.data,1));
t.setTag('ImageWidth', size(LUT.data,2));
t.setTag('Photometric', Tiff.Photometric.MinIsBlack);
t.setTag('BitsPerSample', 32);
t.setTag('SampleFormat', Tiff.SampleFormat.IEEEFP);
t.setTag('SamplesPerPixel', size(LUT.data,3));
t.setTag('PlanarConfiguration', Tiff.PlanarConfiguration.Chunky);
t.setTag('Compression', Tiff.Compression.LZW);
t.setTag('RowsPerStrip', 1);
t.setTag('Model', LUT.Model);
t.setTag('Make', LUT.Make);
t.setTag('Software', LUT.Software);
t.setTag('SMinSampleValue', abs(LUT.zMin));
t.setTag('SMaxSampleValue', abs(LUT.zMax));
t.write(LUT.data);
t.close();

return;