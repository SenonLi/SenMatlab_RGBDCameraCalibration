clear;
close all;
% 
totalDZframes = 20;

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

Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_03.tif');
Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_09.tif');
Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_15.tif');
Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_21.tif');
Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_27.tif');
Tiff_16 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_33.tif');
Tiff_17 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_39.tif');
Tiff_18 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_45.tif');
Tiff_19 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_51.tif');
Tiff_20 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_57.tif');
% 
% Tiff_21 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_02.tif');
% Tiff_22 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_08.tif');
% Tiff_23 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_14.tif');
% Tiff_24 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_20.tif');
% Tiff_25 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_26.tif');
% Tiff_26 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_32.tif');
% Tiff_27 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_38.tif');
% Tiff_28 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_44.tif');
% Tiff_29 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_50.tif');
% Tiff_30 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_56.tif');
% Tiff_31 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_TotalAverage\NIR_XYZDRRRD_62.tif');
% Tiff_32 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_63.tif');


X = zeros(424, 512, totalDZframes);
Y = zeros(424, 512, totalDZframes);
Z = zeros(424, 512, totalDZframes);
D = zeros(424, 512, totalDZframes);
% T = zeros(424, 512, totalDZframes);

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
X(:, :, 12) = Tiff_12(:, :, 1);
X(:, :, 13) = Tiff_13(:, :, 1);
X(:, :, 14) = Tiff_14(:, :, 1);
X(:, :, 15) = Tiff_15(:, :, 1);
X(:, :, 16) = Tiff_16(:, :, 1);
X(:, :, 17) = Tiff_17(:, :, 1);
X(:, :, 18) = Tiff_18(:, :, 1);
X(:, :, 19) = Tiff_19(:, :, 1);
X(:, :, 20) = Tiff_20(:, :, 1);
% 
% X(:, :, 21) = Tiff_21(:, :, 1);
% X(:, :, 22) = Tiff_22(:, :, 1);
% X(:, :, 23) = Tiff_23(:, :, 1);
% X(:, :, 24) = Tiff_24(:, :, 1);
% X(:, :, 25) = Tiff_25(:, :, 1);
% X(:, :, 26) = Tiff_26(:, :, 1);
% X(:, :, 27) = Tiff_27(:, :, 1);
% X(:, :, 28) = Tiff_28(:, :, 1);
% X(:, :, 29) = Tiff_29(:, :, 1);
% X(:, :, 30) = Tiff_30(:, :, 1);
% 
% X(:, :, 31) = Tiff_31(:, :, 1);
% X(:, :, 32) = Tiff_32(:, :, 1);

for frame = 11:15
    X(:, :, frame) = X(:, :, frame) - 1;
end
% 
% for frame = 21:25
%     X(:, :, frame) = X(:, :, frame) - 1;
% end


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
Y(:, :, 12) = Tiff_12(:, :, 2);
Y(:, :, 13) = Tiff_13(:, :, 2);
Y(:, :, 14) = Tiff_14(:, :, 2);
Y(:, :, 15) = Tiff_15(:, :, 2);
Y(:, :, 16) = Tiff_16(:, :, 2);
Y(:, :, 17) = Tiff_17(:, :, 2);
Y(:, :, 18) = Tiff_18(:, :, 2);
Y(:, :, 19) = Tiff_19(:, :, 2);
Y(:, :, 20) = Tiff_20(:, :, 2);
% 
% Y(:, :, 21) = Tiff_21(:, :, 2);
% Y(:, :, 22) = Tiff_22(:, :, 2);
% Y(:, :, 23) = Tiff_23(:, :, 2);
% Y(:, :, 24) = Tiff_24(:, :, 2);
% Y(:, :, 25) = Tiff_25(:, :, 2);
% Y(:, :, 26) = Tiff_26(:, :, 2);
% Y(:, :, 27) = Tiff_27(:, :, 2);
% Y(:, :, 28) = Tiff_28(:, :, 2);
% Y(:, :, 29) = Tiff_29(:, :, 2);
% Y(:, :, 30) = Tiff_30(:, :, 2);
% 
% Y(:, :, 31) = Tiff_31(:, :, 2);
% Y(:, :, 32) = Tiff_32(:, :, 2);

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
Z(:, :, 12) = Tiff_12(:, :, 3);
Z(:, :, 13) = Tiff_13(:, :, 3);
Z(:, :, 14) = Tiff_14(:, :, 3);
Z(:, :, 15) = Tiff_15(:, :, 3);
Z(:, :, 16) = Tiff_16(:, :, 3);
Z(:, :, 17) = Tiff_17(:, :, 3);
Z(:, :, 18) = Tiff_18(:, :, 3);
Z(:, :, 19) = Tiff_19(:, :, 3);
Z(:, :, 20) = Tiff_20(:, :, 3);
% 
% Z(:, :, 21) = Tiff_21(:, :, 3);
% Z(:, :, 22) = Tiff_22(:, :, 3);
% Z(:, :, 23) = Tiff_23(:, :, 3);
% Z(:, :, 24) = Tiff_24(:, :, 3);
% Z(:, :, 25) = Tiff_25(:, :, 3);
% Z(:, :, 26) = Tiff_26(:, :, 3);
% Z(:, :, 27) = Tiff_27(:, :, 3);
% Z(:, :, 28) = Tiff_28(:, :, 3);
% Z(:, :, 29) = Tiff_29(:, :, 3);
% Z(:, :, 30) = Tiff_30(:, :, 3);
% 
% Z(:, :, 31) = Tiff_31(:, :, 3);
% Z(:, :, 32) = Tiff_32(:, :, 3);
% 


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
D(:, :, 12) = Tiff_12(:, :, 4);
D(:, :, 13) = Tiff_13(:, :, 4);
D(:, :, 14) = Tiff_14(:, :, 4);
D(:, :, 15) = Tiff_15(:, :, 4);
D(:, :, 16) = Tiff_16(:, :, 4);
D(:, :, 17) = Tiff_17(:, :, 4);
D(:, :, 18) = Tiff_18(:, :, 4);
D(:, :, 19) = Tiff_19(:, :, 4);
D(:, :, 20) = Tiff_20(:, :, 4);
% 
% D(:, :, 21) = Tiff_21(:, :, 4);
% D(:, :, 22) = Tiff_22(:, :, 4);
% D(:, :, 23) = Tiff_23(:, :, 4);
% D(:, :, 24) = Tiff_24(:, :, 4);
% D(:, :, 25) = Tiff_25(:, :, 4);
% D(:, :, 26) = Tiff_26(:, :, 4);
% D(:, :, 27) = Tiff_27(:, :, 4);
% D(:, :, 28) = Tiff_28(:, :, 4);
% D(:, :, 29) = Tiff_29(:, :, 4);
% D(:, :, 30) = Tiff_30(:, :, 4);
% 
% D(:, :, 31) = Tiff_31(:, :, 4);
% D(:, :, 32) = Tiff_32(:, :, 4);

% 
% T(:, :, 1) = Tiff_01(:, :, 5);
% T(:, :, 2) = Tiff_02(:, :, 5);
% T(:, :, 3) = Tiff_03(:, :, 5);
% T(:, :, 4) = Tiff_04(:, :, 5);
% T(:, :, 5) = Tiff_05(:, :, 5);
% T(:, :, 6) = Tiff_06(:, :, 5);
% T(:, :, 7) = Tiff_07(:, :, 5);
% T(:, :, 8) = Tiff_08(:, :, 5);
% T(:, :, 9) = Tiff_09(:, :, 5);
% T(:, :, 10) = Tiff_10(:, :, 5);
% 
% T(:, :, 11) = Tiff_11(:, :, 5);
% T(:, :, 12) = Tiff_12(:, :, 5);
% T(:, :, 13) = Tiff_13(:, :, 5);
% T(:, :, 14) = Tiff_14(:, :, 5);
% T(:, :, 15) = Tiff_15(:, :, 5);
% T(:, :, 16) = Tiff_16(:, :, 5);
% T(:, :, 17) = Tiff_17(:, :, 5);
% T(:, :, 18) = Tiff_18(:, :, 5);
% T(:, :, 19) = Tiff_19(:, :, 5);
% T(:, :, 20) = Tiff_20(:, :, 5);
% 
% T(:, :, 21) = Tiff_21(:, :, 5);
% T(:, :, 22) = Tiff_22(:, :, 5);
% T(:, :, 23) = Tiff_23(:, :, 5);
% T(:, :, 24) = Tiff_24(:, :, 5);
% T(:, :, 25) = Tiff_25(:, :, 5);
% T(:, :, 26) = Tiff_26(:, :, 5);
% T(:, :, 27) = Tiff_27(:, :, 5);
% T(:, :, 28) = Tiff_28(:, :, 5);
% T(:, :, 29) = Tiff_29(:, :, 5);
% T(:, :, 30) = Tiff_30(:, :, 5);
% 
% T(:, :, 31) = Tiff_31(:, :, 5);
% T(:, :, 32) = Tiff_32(:, :, 5);


for frame = 1:totalDZframes
    for row = 1:424
        for col = 1:512
            if (D(row, col, frame) == 0)
                D(row, col, frame) = NaN;
            end            
        end
    end
end



 
DwBestFit = zeros(424, 512, totalDZframes);

h = waitbar(0, 'Throwing the first 4% noises of D ...');
for frame = 1 : totalDZframes
    waitbar(frame/totalDZframes, h);
% frame = 63;
    Dww = D(:, :, frame);
    Xww = X(:, :, frame);
    Yww = Y(:, :, frame);
    
    Dww = Dww(find( ~isnan(Dww(:)) ));
    Xww = Xww(find( ~isnan(Dww(:)) ));
    Yww = Yww(find( ~isnan(Dww(:)) ));
    One = ones(size(Xww));

    AAA = [Xww(:), Yww(:), One(:)];
    BBB = Dww(:);

    abc = (AAA'*AAA)\AAA'*BBB;

    DwBestFit(:, :, frame) = X(:, :, frame) .* abc(1) + Y(:, :, frame) .* abc(2) + abc(3);

    dddBestFit = DwBestFit(:, :, frame);
    Dwww = D(:, :, frame);


    E = abs( Dwww - dddBestFit );
    [e, i] = sort(E(:));

    [maxIndex, trash] = size(i);
    percent = 0.1;
    throwIndex = round((1 - percent) * maxIndex);
    throwAwayThresh = e(throwIndex);
% 
    for row = 1 : 424
        for col = 1 : 512
            if ( E(row, col) > throwAwayThresh )  
                D(row, col, frame) = NaN;             
            end
        end
    end
    
end
close(h);



 
DwBestFit = zeros(424, 512, totalDZframes);

h = waitbar(0, 'Throwing the second 8% noises of D ...');

for frame = 1 : totalDZframes
    waitbar(frame/totalDZframes, h);
% frame = 63;
    Dww = D(:, :, frame);
    Xww = X(:, :, frame);
    Yww = Y(:, :, frame);
    
    Dww = Dww(find( ~isnan(Dww(:)) ));
    Xww = Xww(find( ~isnan(Dww(:)) ));
    Yww = Yww(find( ~isnan(Dww(:)) ));
    One = ones(size(Xww));

    AAA = [Xww(:), Yww(:), One(:)];
    BBB = Dww(:);

    abc = (AAA'*AAA)\AAA'*BBB;

    DwBestFit(:, :, frame) = X(:, :, frame) .* abc(1) + Y(:, :, frame) .* abc(2) + abc(3);

    dddBestFit = DwBestFit(:, :, frame);
    Dwww = D(:, :, frame);


    E = abs( Dwww - dddBestFit );
    [e, i] = sort(E(:));

    [maxIndex, trash] = size(i);
    percent = 0.1;
    throwIndex = round((1 - percent) * maxIndex);
    throwAwayThresh = e(throwIndex);
% 
    for row = 1 : 424
        for col = 1 : 512
            if ( E(row, col) > throwAwayThresh )  
                D(row, col, frame) = NaN;             
            end
        end
    end
    
end
close(h);



figure(2);
    
h = waitbar(0, 'Drawing planes ...');
for frame = 1 : totalDZframes
    waitbar(frame/totalDZframes, h);

    surfl( 65535 * D(:, :, frame) / 228, X(:, :, frame), Y(:, :, frame) );
    shading flat;
    hold on;
    surfl( 65535 * DwBestFit(:, :, frame) / 228, X(:, :, frame), Y(:, :, frame) );
    hold on;
    
end
close(h);

grid on;
xlabel('Zw');
ylabel('Xw');
zlabel('Yw');


% figure(4);
% for frame = 1:32
%     warp(Z(:, :, frame), X(:,:,frame),Y(:,:,frame),T(:,:,frame));
%     hold on;
% end
% xlabel('Z^w');
% ylabel('X^w');
% zlabel('Y^w');

% 
% Zsort = zeros(totalDZframes, 1);
% for frame = 1 : totalDZframes
%     Zsort(frame) = Z(212, 256, frame);
% end
%     
% [e, i] = sort(Zsort(:));
% 
% Xsort = zeros(totalDZframes, 2);
% for frame = 1 : totalDZframes
%     Xsort(frame, 1) = X(212,1, i(frame));
%     Xsort(frame, 2) = i(frame);
% end
% 
% 





















    
    
    


