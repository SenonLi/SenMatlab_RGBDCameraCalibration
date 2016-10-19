function buildKinectV2NIRLUT(str)
%
%  buildLUT Build look up table.
%     LUT = buildLUT(str) builds a look up table (LUT) from the
%     calibration data stored in the file with filename str.
%
%     [LUT, P, Q] = buildLUT(str) returns the measured and reconstructed
%     depth matrices for evaluating the quality of the LUT.
%
%     [..., X, Y, Z] = buildLUT(str) returns the XYZ matrices.

str = 'C:\Users\liziy\Developer\VS\LUT\SenKinectV2NIR_LUT.lut';
totalFrames = 63;

Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_01.tif');
Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_02.tif');
Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_03.tif');
Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_04.tif');
Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_05.tif');
Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_06.tif');
Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_07.tif');
Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_08.tif');
Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_09.tif');
Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_10.tif');

Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_11.tif');
Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_12.tif');
Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_13.tif');
Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_14.tif');
Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_15.tif');
Tiff_16 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_16.tif');
Tiff_17 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_17.tif');
Tiff_18 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_18.tif');
Tiff_19 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_19.tif');
Tiff_20 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_20.tif');

Tiff_21 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_21.tif');
Tiff_22 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_22.tif');
Tiff_23 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_23.tif');
Tiff_24 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_24.tif');
Tiff_25 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_25.tif');
Tiff_26 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_26.tif');
Tiff_27 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_27.tif');
Tiff_28 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_28.tif');
Tiff_29 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_29.tif');
Tiff_30 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_30.tif');

Tiff_31 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_31.tif');
Tiff_32 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_32.tif');
Tiff_33 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_33.tif');
Tiff_34 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_34.tif');
Tiff_35 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_35.tif');
Tiff_36 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_36.tif');
Tiff_37 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_37.tif');
Tiff_38 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_38.tif');
Tiff_39 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_39.tif');
Tiff_40 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_40.tif');

Tiff_41 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_41.tif');
Tiff_42 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_42.tif');
Tiff_43 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_43.tif');
Tiff_44 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_44.tif');
Tiff_45 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_45.tif');
Tiff_46 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_46.tif');
Tiff_47 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_47.tif');
Tiff_48 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_48.tif');
Tiff_49 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_49.tif');
Tiff_50 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_50.tif');

Tiff_51 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_51.tif');
Tiff_52 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_52.tif');
Tiff_53 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_53.tif');
Tiff_54 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_54.tif');
Tiff_55 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_55.tif');
Tiff_56 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_56.tif');
Tiff_57 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_57.tif');
Tiff_58 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_58.tif');
Tiff_59 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_59.tif');
Tiff_60 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_60.tif');

Tiff_61 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_61.tif');
Tiff_62 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_62.tif');
Tiff_63 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_63.tif');

X = zeros(424, 512, totalFrames);
Y = zeros(424, 512, totalFrames);
Z = zeros(424, 512, totalFrames);
% D = zeros(424, 512, totalFrames);

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

X(:, :, 21) = Tiff_21(:, :, 1);
X(:, :, 22) = Tiff_22(:, :, 1);
X(:, :, 23) = Tiff_23(:, :, 1);
X(:, :, 24) = Tiff_24(:, :, 1);
X(:, :, 25) = Tiff_25(:, :, 1);
X(:, :, 26) = Tiff_26(:, :, 1);
X(:, :, 27) = Tiff_27(:, :, 1);
X(:, :, 28) = Tiff_28(:, :, 1);
X(:, :, 29) = Tiff_29(:, :, 1);
X(:, :, 30) = Tiff_30(:, :, 1);

X(:, :, 31) = Tiff_31(:, :, 1);
X(:, :, 32) = Tiff_32(:, :, 1);
X(:, :, 33) = Tiff_33(:, :, 1);
X(:, :, 34) = Tiff_34(:, :, 1);
X(:, :, 35) = Tiff_35(:, :, 1);
X(:, :, 36) = Tiff_36(:, :, 1);
X(:, :, 37) = Tiff_37(:, :, 1);
X(:, :, 38) = Tiff_38(:, :, 1);
X(:, :, 39) = Tiff_39(:, :, 1);
X(:, :, 40) = Tiff_40(:, :, 1);

X(:, :, 41) = Tiff_41(:, :, 1);
X(:, :, 42) = Tiff_42(:, :, 1);
X(:, :, 43) = Tiff_43(:, :, 1);
X(:, :, 44) = Tiff_44(:, :, 1);
X(:, :, 45) = Tiff_45(:, :, 1);
X(:, :, 46) = Tiff_46(:, :, 1);
X(:, :, 47) = Tiff_47(:, :, 1);
X(:, :, 48) = Tiff_48(:, :, 1);
X(:, :, 49) = Tiff_49(:, :, 1);
X(:, :, 50) = Tiff_50(:, :, 1);

X(:, :, 51) = Tiff_51(:, :, 1);
X(:, :, 52) = Tiff_52(:, :, 1);
X(:, :, 53) = Tiff_53(:, :, 1);
X(:, :, 54) = Tiff_54(:, :, 1);
X(:, :, 55) = Tiff_55(:, :, 1);
X(:, :, 56) = Tiff_56(:, :, 1);
X(:, :, 57) = Tiff_57(:, :, 1);
X(:, :, 58) = Tiff_58(:, :, 1);
X(:, :, 59) = Tiff_59(:, :, 1);
X(:, :, 60) = Tiff_60(:, :, 1);

X(:, :, 61) = Tiff_61(:, :, 1);
X(:, :, 62) = Tiff_62(:, :, 1);
X(:, :, 63) = Tiff_63(:, :, 1);

for m = 1:26
    X(:, :, m) = X(:, :, m) - 1;
end
X(:, :, 28) = X(:, :, 28) - 1;
X(:, :, 31) = X(:, :, 31) - 1;
X(:, :, 34) = X(:, :, 34) - 1;

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

Y(:, :, 21) = Tiff_21(:, :, 2);
Y(:, :, 22) = Tiff_22(:, :, 2);
Y(:, :, 23) = Tiff_23(:, :, 2);
Y(:, :, 24) = Tiff_24(:, :, 2);
Y(:, :, 25) = Tiff_25(:, :, 2);
Y(:, :, 26) = Tiff_26(:, :, 2);
Y(:, :, 27) = Tiff_27(:, :, 2);
Y(:, :, 28) = Tiff_28(:, :, 2);
Y(:, :, 29) = Tiff_29(:, :, 2);
Y(:, :, 30) = Tiff_30(:, :, 2);

Y(:, :, 31) = Tiff_31(:, :, 2);
Y(:, :, 32) = Tiff_32(:, :, 2);
Y(:, :, 33) = Tiff_33(:, :, 2);
Y(:, :, 34) = Tiff_34(:, :, 2);
Y(:, :, 35) = Tiff_35(:, :, 2);
Y(:, :, 36) = Tiff_36(:, :, 2);
Y(:, :, 37) = Tiff_37(:, :, 2);
Y(:, :, 38) = Tiff_38(:, :, 2);
Y(:, :, 39) = Tiff_39(:, :, 2);
Y(:, :, 40) = Tiff_40(:, :, 2);

Y(:, :, 41) = Tiff_41(:, :, 2);
Y(:, :, 42) = Tiff_42(:, :, 2);
Y(:, :, 43) = Tiff_43(:, :, 2);
Y(:, :, 44) = Tiff_44(:, :, 2);
Y(:, :, 45) = Tiff_45(:, :, 2);
Y(:, :, 46) = Tiff_46(:, :, 2);
Y(:, :, 47) = Tiff_47(:, :, 2);
Y(:, :, 48) = Tiff_48(:, :, 2);
Y(:, :, 49) = Tiff_49(:, :, 2);
Y(:, :, 50) = Tiff_50(:, :, 2);

Y(:, :, 51) = Tiff_51(:, :, 2);
Y(:, :, 52) = Tiff_52(:, :, 2);
Y(:, :, 53) = Tiff_53(:, :, 2);
Y(:, :, 54) = Tiff_54(:, :, 2);
Y(:, :, 55) = Tiff_55(:, :, 2);
Y(:, :, 56) = Tiff_56(:, :, 2);
Y(:, :, 57) = Tiff_57(:, :, 2);
Y(:, :, 58) = Tiff_58(:, :, 2);
Y(:, :, 59) = Tiff_59(:, :, 2);
Y(:, :, 60) = Tiff_60(:, :, 2);

Y(:, :, 61) = Tiff_61(:, :, 2);
Y(:, :, 62) = Tiff_62(:, :, 2);
Y(:, :, 63) = Tiff_63(:, :, 2);

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

Z(:, :, 21) = Tiff_21(:, :, 3);
Z(:, :, 22) = Tiff_22(:, :, 3);
Z(:, :, 23) = Tiff_23(:, :, 3);
Z(:, :, 24) = Tiff_24(:, :, 3);
Z(:, :, 25) = Tiff_25(:, :, 3);
Z(:, :, 26) = Tiff_26(:, :, 3);
Z(:, :, 27) = Tiff_27(:, :, 3);
Z(:, :, 28) = Tiff_28(:, :, 3);
Z(:, :, 29) = Tiff_29(:, :, 3);
Z(:, :, 30) = Tiff_30(:, :, 3);

Z(:, :, 31) = Tiff_31(:, :, 3);
Z(:, :, 32) = Tiff_32(:, :, 3);
Z(:, :, 33) = Tiff_33(:, :, 3);
Z(:, :, 34) = Tiff_34(:, :, 3);
Z(:, :, 35) = Tiff_35(:, :, 3);
Z(:, :, 36) = Tiff_36(:, :, 3);
Z(:, :, 37) = Tiff_37(:, :, 3);
Z(:, :, 38) = Tiff_38(:, :, 3);
Z(:, :, 39) = Tiff_39(:, :, 3);
Z(:, :, 40) = Tiff_40(:, :, 3);

Z(:, :, 41) = Tiff_41(:, :, 3);
Z(:, :, 42) = Tiff_42(:, :, 3);
Z(:, :, 43) = Tiff_43(:, :, 3);
Z(:, :, 44) = Tiff_44(:, :, 3);
Z(:, :, 45) = Tiff_45(:, :, 3);
Z(:, :, 46) = Tiff_46(:, :, 3);
Z(:, :, 47) = Tiff_47(:, :, 3);
Z(:, :, 48) = Tiff_48(:, :, 3);
Z(:, :, 49) = Tiff_49(:, :, 3);
Z(:, :, 50) = Tiff_50(:, :, 3);

Z(:, :, 51) = Tiff_51(:, :, 3);
Z(:, :, 52) = Tiff_52(:, :, 3);
Z(:, :, 53) = Tiff_53(:, :, 3);
Z(:, :, 54) = Tiff_54(:, :, 3);
Z(:, :, 55) = Tiff_55(:, :, 3);
Z(:, :, 56) = Tiff_56(:, :, 3);
Z(:, :, 57) = Tiff_57(:, :, 3);
Z(:, :, 58) = Tiff_58(:, :, 3);
Z(:, :, 59) = Tiff_59(:, :, 3);
Z(:, :, 60) = Tiff_60(:, :, 3);

Z(:, :, 61) = Tiff_61(:, :, 3);
Z(:, :, 62) = Tiff_62(:, :, 3);
Z(:, :, 63) = Tiff_63(:, :, 3);

% D(:, :, 1) = Tiff_01(:, :, 4);
% D(:, :, 2) = Tiff_02(:, :, 4);
% D(:, :, 3) = Tiff_03(:, :, 4);
% D(:, :, 4) = Tiff_04(:, :, 4);
% D(:, :, 5) = Tiff_05(:, :, 4);
% D(:, :, 6) = Tiff_06(:, :, 4);
% D(:, :, 7) = Tiff_07(:, :, 4);
% D(:, :, 8) = Tiff_08(:, :, 4);
% D(:, :, 9) = Tiff_09(:, :, 4);
% D(:, :, 10) = Tiff_10(:, :, 4);
% 
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
% 
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

clear Tiff_01;
clear Tiff_02;
clear Tiff_03;
clear Tiff_04;
clear Tiff_05;
clear Tiff_06;
clear Tiff_07;
clear Tiff_08;
clear Tiff_09;

clear Tiff_10;
clear Tiff_11;
clear Tiff_12;
clear Tiff_13;
clear Tiff_14;
clear Tiff_15;
clear Tiff_16;
clear Tiff_17;
clear Tiff_18;
clear Tiff_19;

clear Tiff_20;
clear Tiff_21;
clear Tiff_22;
clear Tiff_23;
clear Tiff_24;
clear Tiff_25;
clear Tiff_26;
clear Tiff_27;
clear Tiff_28;
clear Tiff_29;

clear Tiff_30;
clear Tiff_31;
clear Tiff_32;
clear Tiff_33;
clear Tiff_34;
clear Tiff_35;
clear Tiff_36;
clear Tiff_37;
clear Tiff_38;
clear Tiff_39;

clear Tiff_40;
clear Tiff_41;
clear Tiff_42;
clear Tiff_43;
clear Tiff_44;
clear Tiff_45;
clear Tiff_46;
clear Tiff_47;
clear Tiff_48;
clear Tiff_49;

clear Tiff_50;
clear Tiff_51;
clear Tiff_52;
clear Tiff_53;
clear Tiff_54;
clear Tiff_55;
clear Tiff_56;
clear Tiff_57;
clear Tiff_58;
clear Tiff_59;

clear Tiff_60;
clear Tiff_61;
clear Tiff_62;
clear Tiff_63;

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


X20X = zeros(424, 512, totalDZframes);
Y20Y = zeros(424, 512, totalDZframes);
Z20Z = zeros(424, 512, totalDZframes);
D20D = zeros(424, 512, totalDZframes);

X20X(:, :, 1) = Tiff_01(:, :, 1);
X20X(:, :, 2) = Tiff_02(:, :, 1);
X20X(:, :, 3) = Tiff_03(:, :, 1);
X20X(:, :, 4) = Tiff_04(:, :, 1);
X20X(:, :, 5) = Tiff_05(:, :, 1);
X20X(:, :, 6) = Tiff_06(:, :, 1);
X20X(:, :, 7) = Tiff_07(:, :, 1);
X20X(:, :, 8) = Tiff_08(:, :, 1);
X20X(:, :, 9) = Tiff_09(:, :, 1);
X20X(:, :, 10) = Tiff_10(:, :, 1);

X20X(:, :, 11) = Tiff_11(:, :, 1);
X20X(:, :, 12) = Tiff_12(:, :, 1);
X20X(:, :, 13) = Tiff_13(:, :, 1);
X20X(:, :, 14) = Tiff_14(:, :, 1);
X20X(:, :, 15) = Tiff_15(:, :, 1);
X20X(:, :, 16) = Tiff_16(:, :, 1);
X20X(:, :, 17) = Tiff_17(:, :, 1);
X20X(:, :, 18) = Tiff_18(:, :, 1);
X20X(:, :, 19) = Tiff_19(:, :, 1);
X20X(:, :, 20) = Tiff_20(:, :, 1);

for frame = 11:15
    X20X(:, :, frame) = X20X(:, :, frame) - 1;
end


Y20Y(:, :, 1) = Tiff_01(:, :, 2);
Y20Y(:, :, 2) = Tiff_02(:, :, 2);
Y20Y(:, :, 3) = Tiff_03(:, :, 2);
Y20Y(:, :, 4) = Tiff_04(:, :, 2);
Y20Y(:, :, 5) = Tiff_05(:, :, 2);
Y20Y(:, :, 6) = Tiff_06(:, :, 2);
Y20Y(:, :, 7) = Tiff_07(:, :, 2);
Y20Y(:, :, 8) = Tiff_08(:, :, 2);
Y20Y(:, :, 9) = Tiff_09(:, :, 2);
Y20Y(:, :, 10) = Tiff_10(:, :, 2);

Y20Y(:, :, 11) = Tiff_11(:, :, 2);
Y20Y(:, :, 12) = Tiff_12(:, :, 2);
Y20Y(:, :, 13) = Tiff_13(:, :, 2);
Y20Y(:, :, 14) = Tiff_14(:, :, 2);
Y20Y(:, :, 15) = Tiff_15(:, :, 2);
Y20Y(:, :, 16) = Tiff_16(:, :, 2);
Y20Y(:, :, 17) = Tiff_17(:, :, 2);
Y20Y(:, :, 18) = Tiff_18(:, :, 2);
Y20Y(:, :, 19) = Tiff_19(:, :, 2);
Y20Y(:, :, 20) = Tiff_20(:, :, 2);

Z20Z(:, :, 1) = Tiff_01(:, :, 3);
Z20Z(:, :, 2) = Tiff_02(:, :, 3);
Z20Z(:, :, 3) = Tiff_03(:, :, 3);
Z20Z(:, :, 4) = Tiff_04(:, :, 3);
Z20Z(:, :, 5) = Tiff_05(:, :, 3);
Z20Z(:, :, 6) = Tiff_06(:, :, 3);
Z20Z(:, :, 7) = Tiff_07(:, :, 3);
Z20Z(:, :, 8) = Tiff_08(:, :, 3);
Z20Z(:, :, 9) = Tiff_09(:, :, 3);
Z20Z(:, :, 10) = Tiff_10(:, :, 3);

Z20Z(:, :, 11) = Tiff_11(:, :, 3);
Z20Z(:, :, 12) = Tiff_12(:, :, 3);
Z20Z(:, :, 13) = Tiff_13(:, :, 3);
Z20Z(:, :, 14) = Tiff_14(:, :, 3);
Z20Z(:, :, 15) = Tiff_15(:, :, 3);
Z20Z(:, :, 16) = Tiff_16(:, :, 3);
Z20Z(:, :, 17) = Tiff_17(:, :, 3);
Z20Z(:, :, 18) = Tiff_18(:, :, 3);
Z20Z(:, :, 19) = Tiff_19(:, :, 3);
Z20Z(:, :, 20) = Tiff_20(:, :, 3);

D20D(:, :, 1) = Tiff_01(:, :, 4);
D20D(:, :, 2) = Tiff_02(:, :, 4);
D20D(:, :, 3) = Tiff_03(:, :, 4);
D20D(:, :, 4) = Tiff_04(:, :, 4);
D20D(:, :, 5) = Tiff_05(:, :, 4);
D20D(:, :, 6) = Tiff_06(:, :, 4);
D20D(:, :, 7) = Tiff_07(:, :, 4);
D20D(:, :, 8) = Tiff_08(:, :, 4);
D20D(:, :, 9) = Tiff_09(:, :, 4);
D20D(:, :, 10) = Tiff_10(:, :, 4);

D20D(:, :, 11) = Tiff_11(:, :, 4);
D20D(:, :, 12) = Tiff_12(:, :, 4);
D20D(:, :, 13) = Tiff_13(:, :, 4);
D20D(:, :, 14) = Tiff_14(:, :, 4);
D20D(:, :, 15) = Tiff_15(:, :, 4);
D20D(:, :, 16) = Tiff_16(:, :, 4);
D20D(:, :, 17) = Tiff_17(:, :, 4);
D20D(:, :, 18) = Tiff_18(:, :, 4);
D20D(:, :, 19) = Tiff_19(:, :, 4);
D20D(:, :, 20) = Tiff_20(:, :, 4);

for frame = 1:totalDZframes
    for row = 1:424
        for col = 1:512
            if (D20D(row, col, frame) == 0)
                D20D(row, col, frame) = NaN;
            end            
        end
    end
end

 
DwBestFit = zeros(424, 512, totalDZframes);

h = waitbar(0, 'Throwing the first 4% noises of D20D ...');
for frame = 1 : totalDZframes
    waitbar(frame/totalDZframes, h);
% frame = 63;
    Dww = D20D(:, :, frame);
    Xww = X20X(:, :, frame);
    Yww = Y20Y(:, :, frame);
    
    Dww = Dww(find( ~isnan(Dww(:)) ));
    Xww = Xww(find( ~isnan(Dww(:)) ));
    Yww = Yww(find( ~isnan(Dww(:)) ));
    One = ones(size(Xww));

    AAA = [Xww(:), Yww(:), One(:)];
    BBB = Dww(:);

    abc = (AAA'*AAA)\AAA'*BBB;

    DwBestFit(:, :, frame) = X20X(:, :, frame) .* abc(1) + Y20Y(:, :, frame) .* abc(2) + abc(3);

    dddBestFit = DwBestFit(:, :, frame);
    Dwww = D20D(:, :, frame);


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
                D20D(row, col, frame) = NaN;             
            end
        end
    end
    
end
close(h);



 
DwBestFit = zeros(424, 512, totalDZframes);

h = waitbar(0, 'Throwing the second 8% noises of D20D ...');

for frame = 1 : totalDZframes
    waitbar(frame/totalDZframes, h);
    Dww = D20D(:, :, frame);
    Xww = X20X(:, :, frame);
    Yww = Y20Y(:, :, frame);
    
    Dww = Dww(find( ~isnan(Dww(:)) ));
    Xww = Xww(find( ~isnan(Dww(:)) ));
    Yww = Yww(find( ~isnan(Dww(:)) ));
    One = ones(size(Xww));

    AAA = [Xww(:), Yww(:), One(:)];
    BBB = Dww(:);

    abc = (AAA'*AAA)\AAA'*BBB;

    DwBestFit(:, :, frame) = X20X(:, :, frame) .* abc(1) + Y20Y(:, :, frame) .* abc(2) + abc(3);

    dddBestFit = DwBestFit(:, :, frame);
    Dwww = D20D(:, :, frame);


    E = abs( Dwww - dddBestFit );
    [e, i] = sort(E(:));

    [maxIndex, trash] = size(i);
    percent = 0.1;
    throwIndex = round((1 - percent) * maxIndex);
    throwAwayThresh = e(throwIndex);

    for row = 1 : 424
        for col = 1 : 512
            if ( E(row, col) > throwAwayThresh )  
                D20D(row, col, frame) = NaN;             
            end
        end
    end
    
end
close(h);

D20D = - D20D;

%%% SHIFT THE X AND Y SO THAT THE CAMERA IS LOOKING AT THE ORIGIN OF SPACE
X = X - mean(X(:));
Y = Y - mean(Y(:));

%%% USE THE XYZD MATRICES TO BUILD OUT LOOK UP TABLE
LUT = calibrateLUT(X,Y,Z, Z20Z,D20D);

%%% EXPORT LUT TO DISK USING THE INPUT FILENAME
LUT.Software = 'Sen RGB-D Cameras Calibration';
LUT.Model = '';
LUT.Make = '';

 saveLUT(LUT, str);
 LUT
return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function LUT = calibrateLUT(X,Y,Z, Z32Z,D32D)

[M,N,S]=size(X);

data = ones(M,N,12)*nan;

varZ = -13.97 : 0.05 : 0;

strZXaaa = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_ZXaaa.txt';
strZXbbb = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_ZXbbb.txt';
strZYccc = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_ZYccc.txt';
strZYddd = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_ZYddd.txt';
strDZeee = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_DZeee.txt';
strDZfff = 'C:\Users\liziy\Developer\SenOutput\LUT\SenKinectV2LUT_DZfff.txt';

fileID_ZXaaa = fopen(strZXaaa,'w');
fileID_ZXbbb = fopen(strZXbbb,'w');
fileID_ZYccc = fopen(strZYccc,'w');
fileID_ZYddd = fopen(strZYddd,'w');
fileID_DZeee = fopen(strDZeee,'w');
fileID_DZfff = fopen(strDZfff,'w');


h = waitbar(0, 'Building the LUT...');
for m=1:M
    waitbar(m/M, h);
    for n=1:N
        x = X(m,n,:); x = x(:);
        y = Y(m,n,:); y = y(:);
        z = Z(m,n,:); z = z(:);
%         d = D(m,n,:); d = d(:);
        z32z = Z32Z(m,n,:); z32z = z32z(:);
        d32d = D32D(m,n,:); d32d = d32d(:);
        
        
        A = [z ones(size(z))];
        v = (A'*A)\A'*[x y];
        
        data(m,n,1) = v(1,1);
        data(m,n,2) = v(2,1);
        data(m,n,3) = v(1,2);
        data(m,n,4) = v(2,2);
        
                   
%       if ( ( m ==  1 && mod(n,2) == 0) || ( m ==  424 && mod(n,2) == 0) || ( n ==  1 && mod(m,2) == 0) || ( n ==  512 && mod(m,2) == 0) )
%           varX = data(m,n,1)*varZ + data(m,n,2);
%           varY = data(m,n,3)*varZ + data(m,n,4);
%           plot3(varZ, varX, varY, 'Color', [0.2 0.2 0.2]);
%           hold on;
%       end
      
        z32z = z32z(find(~isnan(d32d)));
        d32d = d32d(find(~isnan(d32d)));
        if (length(d32d) > 1)
            v = polyfit(d32d,z32z,1);
            data(m,n,5:6) = v(:);
        end;
        
             if (n ~= 512)     
				fprintf(fileID_ZXaaa,'%f\t',  data(m,n,1) );  
				fprintf(fileID_ZXbbb,'%f\t',  data(m,n,2) );  
				fprintf(fileID_ZYccc,'%f\t',  data(m,n,3) );  
				fprintf(fileID_ZYddd,'%f\t',  data(m,n,4) );  
				fprintf(fileID_DZeee,'%f\t',  data(m,n,5) );  
				fprintf(fileID_DZfff,'%f\t',  data(m,n,6) );  
				
            else                
				fprintf(fileID_ZXaaa,'%f\n',  data(m,n,1)  );
				fprintf(fileID_ZXbbb,'%f\n',  data(m,n,2)  );
				fprintf(fileID_ZYccc,'%f\n',  data(m,n,3)  );
				fprintf(fileID_ZYddd,'%f\n',  data(m,n,4)  );
				fprintf(fileID_DZeee,'%f\n',  data(m,n,5)  );
				fprintf(fileID_DZfff,'%f\n',  data(m,n,6)  );				
            end
            
    end;
end;
close(h);


fclose(fileID_ZXaaa);
fclose(fileID_ZXbbb);
fclose(fileID_ZYccc);
fclose(fileID_ZYddd);
fclose(fileID_DZeee);
fclose(fileID_DZfff);


% axis equal;
% xlabel('Z^w');
% ylabel('X^w');
% zlabel('Y^w');
% title('Samples Beams of Calibrated NearIR Sensor');
% xlim([-12, 0])


LUT = struct('data', single(data), 'zMin', min(min(min(Z))), 'zMax', max(max(max(Z))), ...
             'xMin', min(min(min(X))), 'xMax', max(max(max(X))), 'yMin', min(min(min(Y))), ...
             'yMax', max(max(max(Y))), 'camera', 'KinectV2', ...
             'fileName', 'SenKinectV2LUT', 'width', uint32(N), 'height', uint32(M), ...
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