% function cameraPointsBBB = getCameraPointsMatrix()

clear;
% close all;

totalFrames = 10;

Z = zeros(424, 512, totalFrames);
D = zeros(424, 512, totalFrames);
% 

Xc = zeros(424, 512, totalFrames);
Yc = zeros(424, 512, totalFrames);
Zc = zeros(424, 512, totalFrames);
ZcBestFit = zeros(424, 512, totalFrames);

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
% 
% Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_03.tif');
% Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_09.tif');
% Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_15.tif');
% Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_21.tif');
% Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_27.tif');
% Tiff_16 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_33.tif');
% Tiff_17 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_39.tif');
% Tiff_18 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_45.tif');
% Tiff_19 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_51.tif');
% Tiff_20 = imread('C:\Users\liziy\Developer\Matlab Analysis\Frames30_NearIR_D_NoAverage\NIR_XYZDRRRD_57.tif');
% 
% Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_01.tif');
% Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_02.tif');
% Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_03.tif');
% Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_04.tif');
% Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_05.tif');
% Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_06.tif');
% Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_07.tif');
% Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_08.tif');
% Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_09.tif');
% Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_10.tif');
% 
% Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_11.tif');
% Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_12.tif');
% Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_13.tif');
% Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_14.tif');
% Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_15.tif');
% Tiff_16 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_16.tif');
% Tiff_17 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_17.tif');
% Tiff_18 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_18.tif');
% Tiff_19 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_19.tif');
% Tiff_20 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_20.tif');
% 
% Tiff_21 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_21.tif');
% Tiff_22 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_22.tif');
% Tiff_23 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_23.tif');
% Tiff_24 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_24.tif');
% Tiff_25 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_25.tif');
% Tiff_26 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_26.tif');
% Tiff_27 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_27.tif');
% Tiff_28 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_28.tif');
% Tiff_29 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_29.tif');
% Tiff_30 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_30.tif');
% 
% Tiff_31 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_31.tif');
% Tiff_32 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_32.tif');
% Tiff_33 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_33.tif');
% Tiff_34 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_34.tif');
% Tiff_35 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_35.tif');
% Tiff_36 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_36.tif');
% Tiff_37 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_37.tif');
% Tiff_38 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_38.tif');
% Tiff_39 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_39.tif');
% Tiff_40 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_40.tif');
% 
% Tiff_41 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_41.tif');
% Tiff_42 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_42.tif');
% Tiff_43 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_43.tif');
% Tiff_44 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_44.tif');
% Tiff_45 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_45.tif');
% Tiff_46 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_46.tif');
% Tiff_47 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_47.tif');
% Tiff_48 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_48.tif');
% Tiff_49 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_49.tif');
% Tiff_50 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_50.tif');
% 
% Tiff_51 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_51.tif');
% Tiff_52 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_52.tif');
% Tiff_53 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_53.tif');
% Tiff_54 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_54.tif');
% Tiff_55 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_55.tif');
% Tiff_56 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_56.tif');
% Tiff_57 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_57.tif');
% Tiff_58 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_58.tif');
% Tiff_59 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_59.tif');
% Tiff_60 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_60.tif');
% 
% Tiff_61 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_61.tif');
% Tiff_62 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_62.tif');
% Tiff_63 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_63.tif');

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

% D(:, :, 11) = Tiff_11(:, :, 4);
% D(:, :, 12) = Tiff_12(:, :, 4);
% D(:, :, 13) = Tiff_13(:, :, 4);
% D(:, :, 14) = Tiff_14(:, :, 4);
% D(:, :, 15) = Tiff_15(:, :, 4);
% D(:, :, 16) = Tiff_16(:, :, 4);
% D(:, :, 17) = Tiff_17(:, :, 4);
% D(:, :, 18) = Tiff_18(:, :, 4);
% D(:, :, 19) = Tiff_19(:, :, 4);
% D(:, :, 20) = Tiff_20(:, :, 4);
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

% D(:, :, 31) = Tiff_31(:, :, 4);
% D(:, :, 32) = Tiff_32(:, :, 4);
% D(:, :, 33) = Tiff_33(:, :, 4);
% D(:, :, 34) = Tiff_34(:, :, 4);
% D(:, :, 35) = Tiff_35(:, :, 4);
% D(:, :, 36) = Tiff_36(:, :, 4);
% D(:, :, 37) = Tiff_37(:, :, 4);
% D(:, :, 38) = Tiff_38(:, :, 4);
% D(:, :, 39) = Tiff_39(:, :, 4);
% D(:, :, 40) = Tiff_40(:, :, 4);
% 
% D(:, :, 41) = Tiff_41(:, :, 4);
% D(:, :, 42) = Tiff_42(:, :, 4);
% D(:, :, 43) = Tiff_43(:, :, 4);
% D(:, :, 44) = Tiff_44(:, :, 4);
% D(:, :, 45) = Tiff_45(:, :, 4);
% D(:, :, 46) = Tiff_46(:, :, 4);
% D(:, :, 47) = Tiff_47(:, :, 4);
% D(:, :, 48) = Tiff_48(:, :, 4);
% D(:, :, 49) = Tiff_49(:, :, 4);
% D(:, :, 50) = Tiff_50(:, :, 4);
% 
% D(:, :, 51) = Tiff_51(:, :, 4);
% D(:, :, 52) = Tiff_52(:, :, 4);
% D(:, :, 53) = Tiff_53(:, :, 4);
% D(:, :, 54) = Tiff_54(:, :, 4);
% D(:, :, 55) = Tiff_55(:, :, 4);
% D(:, :, 56) = Tiff_56(:, :, 4);
% D(:, :, 57) = Tiff_57(:, :, 4);
% D(:, :, 58) = Tiff_58(:, :, 4);
% D(:, :, 59) = Tiff_59(:, :, 4);
% D(:, :, 60) = Tiff_60(:, :, 4);
% 
% D(:, :, 61) = Tiff_61(:, :, 4);
% D(:, :, 62) = Tiff_62(:, :, 4);
% D(:, :, 63) = Tiff_63(:, :, 4);
% 
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

% Z(:, :, 11) = Tiff_11(:, :, 3);
% Z(:, :, 12) = Tiff_12(:, :, 3);
% Z(:, :, 13) = Tiff_13(:, :, 3);
% Z(:, :, 14) = Tiff_14(:, :, 3);
% Z(:, :, 15) = Tiff_15(:, :, 3);
% Z(:, :, 16) = Tiff_16(:, :, 3);
% Z(:, :, 17) = Tiff_17(:, :, 3);
% Z(:, :, 18) = Tiff_18(:, :, 3);
% Z(:, :, 19) = Tiff_19(:, :, 3);
% Z(:, :, 20) = Tiff_20(:, :, 3);
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
% Z(:, :, 33) = Tiff_33(:, :, 3);
% Z(:, :, 34) = Tiff_34(:, :, 3);
% Z(:, :, 35) = Tiff_35(:, :, 3);
% Z(:, :, 36) = Tiff_36(:, :, 3);
% Z(:, :, 37) = Tiff_37(:, :, 3);
% Z(:, :, 38) = Tiff_38(:, :, 3);
% Z(:, :, 39) = Tiff_39(:, :, 3);
% Z(:, :, 40) = Tiff_40(:, :, 3);
% 
% Z(:, :, 41) = Tiff_41(:, :, 3);
% Z(:, :, 42) = Tiff_42(:, :, 3);
% Z(:, :, 43) = Tiff_43(:, :, 3);
% Z(:, :, 44) = Tiff_44(:, :, 3);
% Z(:, :, 45) = Tiff_45(:, :, 3);
% Z(:, :, 46) = Tiff_46(:, :, 3);
% Z(:, :, 47) = Tiff_47(:, :, 3);
% Z(:, :, 48) = Tiff_48(:, :, 3);
% Z(:, :, 49) = Tiff_49(:, :, 3);
% Z(:, :, 50) = Tiff_50(:, :, 3);
% 
% Z(:, :, 51) = Tiff_51(:, :, 3);
% Z(:, :, 52) = Tiff_52(:, :, 3);
% Z(:, :, 53) = Tiff_53(:, :, 3);
% Z(:, :, 54) = Tiff_54(:, :, 3);
% Z(:, :, 55) = Tiff_55(:, :, 3);
% Z(:, :, 56) = Tiff_56(:, :, 3);
% Z(:, :, 57) = Tiff_57(:, :, 3);
% Z(:, :, 58) = Tiff_58(:, :, 3);
% Z(:, :, 59) = Tiff_59(:, :, 3);
% Z(:, :, 60) = Tiff_60(:, :, 3);
% 
% Z(:, :, 61) = Tiff_61(:, :, 3);
% Z(:, :, 62) = Tiff_62(:, :, 3);
% Z(:, :, 63) = Tiff_63(:, :, 3);

T = Tiff_01(:, :, 5);

% clear Tiff_01;clear Tiff_02;clear Tiff_03;clear Tiff_04;clear Tiff_05;clear Tiff_06;clear Tiff_07;clear Tiff_08;clear Tiff_09;clear Tiff_10;
% clear Tiff_11;clear Tiff_12;clear Tiff_13;clear Tiff_14;clear Tiff_15;clear Tiff_16;clear Tiff_17;clear Tiff_18;clear Tiff_19;clear Tiff_20;
% clear Tiff_21;clear Tiff_22;clear Tiff_23;clear Tiff_24;clear Tiff_25;clear Tiff_26;clear Tiff_27;clear Tiff_28;clear Tiff_29;clear Tiff_30;
% clear Tiff_31;clear Tiff_32;clear Tiff_33;clear Tiff_34;clear Tiff_35;clear Tiff_36;clear Tiff_37;clear Tiff_38;clear Tiff_39;clear Tiff_40;
% clear Tiff_41;clear Tiff_42;clear Tiff_43;clear Tiff_44;clear Tiff_45;clear Tiff_46;clear Tiff_47;clear Tiff_48;clear Tiff_49;clear Tiff_50;
% clear Tiff_51;clear Tiff_52;clear Tiff_53;clear Tiff_54;clear Tiff_55;clear Tiff_56;clear Tiff_57;clear Tiff_58;clear Tiff_59;clear Tiff_60;
% clear Tiff_61;clear Tiff_62;clear Tiff_63;

% figure(1);
% frame = 13
for frame = 1:totalFrames
    
    for row = 1:424
        for col = 1:512
            if (D(row, col, frame) == 0)
                D(row, col, frame) = NaN;
            end            
        end
    end
    
end




horFov = 70.6 ;%* 3.1415926 / 180;
verFov = 60.0 ;%* 3.1415926 / 180 ;


maxError = zeros(totalFrames, 1);
meanError = zeros(totalFrames, 1);
varError = zeros(totalFrames, 1);
Zzzz = zeros(totalFrames, 1);
zTheshold = zeros(totalFrames, 1);


zTheshold(1) = -4;
    

            

h = waitbar(0, 'Generate 3D Reconstruction...');
for frame = 1:totalFrames
    waitbar(frame/totalFrames, h);
    for row = 1:424
        for col = 1:512
            
            Zc(row, col, frame) = D(row, col, frame) * 65535 / 228; 
            Xc(row, col, frame) = - tand(horFov / 2) * (((col - 1) / 255.5) - 1) * Zc(row, col, frame);
            Yc(row, col, frame) = - tand(verFov / 2) * (((row - 1) / 211.5) - 1) * Zc(row, col, frame);
   
%             Xc(row, col, frame) = - tand(horFov * (col/512 - 0.5)) * Zc(row, col, frame);
%             Yc(row, col, frame) = - tand(verFov * (row/424 - 0.5)) * Zc(row, col, frame);
            
        end
    end
end
close(h);
% 




h = waitbar(0, 'Throwing the 10% noises...');
for frame = 1 : totalFrames
    waitbar(frame/totalFrames, h);
% frame = 2;
    Zcc = Zc(:, :, frame);
    Xcc = Xc(:, :, frame);
    Ycc = Yc(:, :, frame);
    
    Zcc = Zcc(find( ~isnan(Zcc(:)) ));
    Xcc = Xcc(find( ~isnan(Xcc(:)) ));
    Ycc = Ycc(find( ~isnan(Ycc(:)) ));
    One = ones(size(Xcc));

    AAA = [Xcc(:), Ycc(:), One(:)];
    BBB = Zcc(:);

    abc = (AAA'*AAA)\AAA'*BBB;

    ZcBestFit(:, :, frame) = Xc(:, :, frame) .* abc(1) + Yc(:, :, frame) .* abc(2) + abc(3);

%     Error = (abs(ZwBestFit(:, :, frame) - Zw(:, :, frame))).^2;
%     err = Error(find(~isnan(Error)));
%     maxError(frame) = max(err(:));
%     meanError(frame) = mean(err(:));
%     varError(frame) = var(err(:));
%     Zzzz(frame) = Z(23, 23, frame);

%     clear Xww; clear Yww; clear Zww; clear One; clear AAA; clear BBB; clear abc;
%     clear Error;





    zzzBestFit = ZcBestFit(:, :, frame);
    Zccc = Zc(:, :, frame);


    E = abs( Zccc - zzzBestFit );
    [e, i] = sort(E(:));

    [maxIndex, trash] = size(i);
    percent = 0.07;
    throwIndex = round((1 - percent) * maxIndex);
    throwAwayThresh = e(throwIndex);

    for row = 1 : 424
        for col = 1 : 512
            if ( E(row, col) > throwAwayThresh )  
                Zc(row, col, frame) = NaN;
                Xc(row, col, frame) = NaN;
                Yc(row, col, frame) = NaN;                
            end
        end
    end
    
end
close(h);





h = waitbar(0, 'Throwing the 10% noises...');
for frame = 1 : totalFrames
    waitbar(frame/totalFrames, h);
% % frame = 2;
    Zcc = Zc(:, :, frame);
    Xcc = Xc(:, :, frame);
    Ycc = Yc(:, :, frame);
    
    Zcc = Zcc(find( ~isnan(Zcc(:)) ));
    Xcc = Xcc(find( ~isnan(Xcc(:)) ));
    Ycc = Ycc(find( ~isnan(Ycc(:)) ));
    One = ones(size(Xcc));

    AAA = [Xcc(:), Ycc(:), One(:)];
    BBB = Zcc(:);

    abc = (AAA'*AAA)\AAA'*BBB;

        if (frame == 8)
        viewABC = abc;
        end
    
    
    ZcBestFit(:, :, frame) = Xc(:, :, frame) .* abc(1) + Yc(:, :, frame) .* abc(2) + abc(3);

    zzzBestFit = ZcBestFit(:, :, frame);
    Zccc = Zc(:, :, frame);


    E = abs( Zccc - zzzBestFit );
    [e, i] = sort(E(:));

    [maxIndex, trash] = size(i);
    percent = 0.07;
    throwIndex = round((1 - percent) * maxIndex);
    throwAwayThresh = e(throwIndex);

    for row = 1 : 424
        for col = 1 : 512
            if ( E(row, col) > throwAwayThresh )  
                Zc(row, col, frame) = NaN;
                Xc(row, col, frame) = NaN;
                Yc(row, col, frame) = NaN;                
            end
        end
    end
    
end
close(h);


% figure(5);
% hist(Error(:));

% err = Error(find(~isnan(Error)));
% 
% maxError(frame) = max(err(:));
% meanError(frame) = mean(err(:));
% varError(frame) = var(err(:));
% Zzzz(frame) = Z(23, 23, frame);


strCameraToWoldRotate = 'C:\Users\liziy\Developer\SenOutput\LUT\SenCameraToWoldRotate.txt';
strCameraToWoldTranslate = 'C:\Users\liziy\Developer\SenOutput\LUT\CameraToWoldTranslate.txt';

rotate = dlmread(strCameraToWoldRotate, '\t', 0, 0);
translate = dlmread(strCameraToWoldTranslate, '\t', 0, 0);

% 
h = waitbar(0, 'Transfering from Camera Space To World Space...');
for frame = 1 : totalFrames
    waitbar(frame/totalFrames, h);

    for row = 1 : 424
        for col = 1 : 512
            
            xTemp = Xc(row, col, frame);
            yTemp = Yc(row, col, frame);
            zTemp = Zc(row, col, frame);
            
            cameraPoint = [xTemp; yTemp; zTemp];
            worldPoint = rotate * cameraPoint + translate;
            
            Xc(row, col, frame) = worldPoint(1);
            Yc(row, col, frame) = worldPoint(2);
            Zc(row, col, frame) = worldPoint(3);
            
        end
    end
end
close(h);

figure(2);
h = waitbar(0, 'Drawing planes ...');

for frame = 1 : totalFrames
    waitbar(frame/totalFrames, h);
% frame = 13;
    surfl( Xc(:, :, frame), Yc(:, :, frame), Zc(:, :, frame));
    shading flat;
    hold on;
%     surfl( ZcBestFit(:, :, frame), Xc(:, :, frame), Yc(:, :, frame) );
%     hold on;
end
close(h);

grid on;
xlabel('Xw');
ylabel('Yw');
zlabel('Zw');
title('Raw Camera Coordinates Reconstruction in World Space');


view(0, 0)
axis equal;
zlim([-11.5 -4.5]);
xlim([-8.1 8.1]);

% 
% % depth = zeros(63, 1);
% % for frame = 1: 63
% %     depth(frame) = D(212, 256, frame);
% % end
% 
% % figure(3)
% % warp( Zc(:, :, frame), Xc(:, :, frame), Yc(:, :, frame) , T)



% cameraPointsBBB = [ Xc(find(~isnan(Xc(:)))),  Yc(find(~isnan(Yc(:)))),  Zc(find(~isnan(Zc(:)))) ];



% worldPointsAA
% end

















