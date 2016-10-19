close all;
clear;

X = zeros(1080, 1920, 15);
Y = zeros(1080, 1920, 15);
Z = zeros(1080, 1920, 15);
T = zeros(1080, 1920, 15);

% X = zeros(424, 512, 60);
% Y = zeros(424, 512, 60);
% Z = zeros(424, 512, 60);
% T = zeros(424, 512, 60);

frameTotal = 1199;
% frameTotal = 1868;%935;
countTotal = frameTotal * 60;

XXX = zeros(1, countTotal);
YYY = zeros(1, countTotal);
CCC = zeros(1, countTotal);
RRR = zeros(1, countTotal);
ZZZ = zeros(1, countTotal);


Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_01.tif');
Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_02.tif');
Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_03.tif');
Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_04.tif');
Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_05.tif');
Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_06.tif');
Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_07.tif');
Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_08.tif');
Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_09.tif');
Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_10.tif');

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

Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_11.tif');
Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_12.tif');
Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_13.tif');
Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_14.tif');
Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_15.tif');
Tiff_16 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_16.tif');
Tiff_17 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_17.tif');
Tiff_18 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_18.tif');
Tiff_19 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_19.tif');
Tiff_20 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_20.tif');

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

T(:, :, 11) = Tiff_11(:, :, 5);
T(:, :, 12) = Tiff_12(:, :, 5);
T(:, :, 13) = Tiff_13(:, :, 5);
T(:, :, 14) = Tiff_14(:, :, 5);
T(:, :, 15) = Tiff_15(:, :, 5);
T(:, :, 16) = Tiff_16(:, :, 5);
T(:, :, 17) = Tiff_17(:, :, 5);
T(:, :, 18) = Tiff_18(:, :, 5);
T(:, :, 19) = Tiff_19(:, :, 5);
T(:, :, 20) = Tiff_20(:, :, 5);

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

Tiff_21 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_21.tif');
Tiff_22 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_22.tif');
Tiff_23 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_23.tif');
Tiff_24 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_24.tif');
Tiff_25 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_25.tif');
Tiff_26 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_26.tif');
Tiff_27 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_27.tif');
Tiff_28 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_28.tif');
Tiff_29 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_29.tif');
Tiff_30 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_30.tif');

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
% 
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

T(:, :, 21) = Tiff_21(:, :, 5);
T(:, :, 22) = Tiff_22(:, :, 5);
T(:, :, 23) = Tiff_23(:, :, 5);
T(:, :, 24) = Tiff_24(:, :, 5);
T(:, :, 25) = Tiff_25(:, :, 5);
T(:, :, 26) = Tiff_26(:, :, 5);
T(:, :, 27) = Tiff_27(:, :, 5);
T(:, :, 28) = Tiff_28(:, :, 5);
T(:, :, 29) = Tiff_29(:, :, 5);
T(:, :, 30) = Tiff_30(:, :, 5);

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

Tiff_31 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_31.tif');
Tiff_32 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_32.tif');
Tiff_33 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_33.tif');
Tiff_34 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_34.tif');
Tiff_35 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_35.tif');
Tiff_36 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_36.tif');
Tiff_37 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_37.tif');
Tiff_38 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_38.tif');
Tiff_39 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_39.tif');
Tiff_40 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_40.tif');

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

T(:, :, 31) = Tiff_31(:, :, 5);
T(:, :, 32) = Tiff_32(:, :, 5);
T(:, :, 33) = Tiff_33(:, :, 5);
T(:, :, 34) = Tiff_34(:, :, 5);
T(:, :, 35) = Tiff_35(:, :, 5);
T(:, :, 36) = Tiff_36(:, :, 5);
T(:, :, 37) = Tiff_37(:, :, 5);
T(:, :, 38) = Tiff_38(:, :, 5);
T(:, :, 39) = Tiff_39(:, :, 5);
T(:, :, 40) = Tiff_40(:, :, 5);

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

Tiff_41 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_41.tif');
Tiff_42 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_42.tif');
Tiff_43 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_43.tif');
Tiff_44 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_44.tif');
Tiff_45 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_45.tif');
Tiff_46 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_46.tif');
Tiff_47 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_47.tif');
Tiff_48 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_48.tif');
Tiff_49 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_49.tif');
Tiff_50 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_50.tif');

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
% 
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

T(:, :, 41) = Tiff_41(:, :, 5);
T(:, :, 42) = Tiff_42(:, :, 5);
T(:, :, 43) = Tiff_43(:, :, 5);
T(:, :, 44) = Tiff_44(:, :, 5);
T(:, :, 45) = Tiff_45(:, :, 5);
T(:, :, 46) = Tiff_46(:, :, 5);
T(:, :, 47) = Tiff_47(:, :, 5);
T(:, :, 48) = Tiff_48(:, :, 5);
T(:, :, 49) = Tiff_49(:, :, 5);
T(:, :, 50) = Tiff_50(:, :, 5);

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

Tiff_51 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_51.tif');
Tiff_52 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_52.tif');
Tiff_53 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_53.tif');
Tiff_54 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_54.tif');
Tiff_55 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_55.tif');
Tiff_56 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_56.tif');
Tiff_57 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_57.tif');
Tiff_58 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_58.tif');
Tiff_59 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_59.tif');
Tiff_60 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_60.tif');

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

T(:, :, 51) = Tiff_51(:, :, 5);
T(:, :, 52) = Tiff_52(:, :, 5);
T(:, :, 53) = Tiff_53(:, :, 5);
T(:, :, 54) = Tiff_54(:, :, 5);
T(:, :, 55) = Tiff_55(:, :, 5);
T(:, :, 56) = Tiff_56(:, :, 5);
T(:, :, 57) = Tiff_57(:, :, 5);
T(:, :, 58) = Tiff_58(:, :, 5);
T(:, :, 59) = Tiff_59(:, :, 5);
T(:, :, 60) = Tiff_60(:, :, 5);

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

% Tiff_61 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_61.tif');
% Tiff_62 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_62.tif');
% Tiff_63 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_63.tif');
% 
% X(:, :, 61) = Tiff_61(:, :, 1);
% X(:, :, 62) = Tiff_62(:, :, 1);
% X(:, :, 63) = Tiff_63(:, :, 1);
% 
% Y(:, :, 61) = Tiff_61(:, :, 2);
% Y(:, :, 62) = Tiff_62(:, :, 2);
% Y(:, :, 63) = Tiff_63(:, :, 2);
% % 
% % Z(:, :, 61) = Tiff_61(:, :, 3);
% % Z(:, :, 62) = Tiff_62(:, :, 3);
% % Z(:, :, 63) = Tiff_63(:, :, 3);
% 
% clear Tiff_61;
% clear Tiff_62;
% clear Tiff_63;



% for m = 1:26
%     X(:, :, m) = X(:, :, m) - 1;
% end
% X(:, :, 28) = X(:, :, 28) - 1;
% X(:, :, 31) = X(:, :, 31) - 1;
% X(:, :, 34) = X(:, :, 34) - 1;

for frame = 1:60
    ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
end


[C,R]=meshgrid([0:1919],[0:1079]);
% hSurface = mesh(C,R,zeros(size(C)));
figure(5);
for m = 1:10
    warp(Z(:,:,m), X(:,:,m),Y(:,:,m),T(:,:,m));
    hold on;
end

count = 0;
totalCount = 0;
for row = 1:1080
    for col = 1:1920
        
      if ( ( row ==  1 && mod(col,5) == 0) || ( row ==  1080 && mod(col,5) == 0) || ( col ==  1 && mod(row,5) == 0) || ( col ==  1920 && mod(row,5) == 0) )
%       if ( ( row ==  1 && mod(col,1) == 0) || ( row ==  424 && mod(col,1) == 0) || ( col ==  1 && mod(row,1) == 0) || ( col ==  512 && mod(row,1) == 0) )

            count = count + 1;
            for frameCount = 1:60
                XXX(frameTotal*(frameCount - 1) + count) = X(row, col, frameCount);
                YYY(frameTotal*(frameCount - 1) + count) = Y(row, col, frameCount);
                CCC(frameTotal*(frameCount - 1) + count) = C(row, col);
                RRR(frameTotal*(frameCount - 1) + count) = R(row, col);
            
                totalCount = totalCount + 1;
            end
            
      end

    end
end

BBB = [CCC; RRR];

AAA = zeros(35, countTotal);

AAA(1, :)  = XXX .* XXX .* XXX .* XXX;
AAA(2, :)  = XXX .* XXX .* XXX .* YYY;
AAA(3, :)  = XXX .* XXX .* XXX .* ZZZ;
AAA(4, :)  = XXX .* XXX .* YYY .* YYY;
AAA(5, :)  = XXX .* XXX .* YYY .* ZZZ;
AAA(6, :)  = XXX .* XXX .* ZZZ .* ZZZ;
AAA(7, :)  = XXX .* YYY .* YYY .* YYY;
AAA(8, :)  = XXX .* YYY .* YYY .* ZZZ;
AAA(9, :)  = XXX .* YYY .* ZZZ .* ZZZ;
AAA(10, :) = XXX .* ZZZ .* ZZZ .* ZZZ;
AAA(11, :) = YYY .* YYY .* YYY .* YYY;
AAA(12, :) = YYY .* YYY .* YYY .* ZZZ;
AAA(13, :) = YYY .* YYY .* ZZZ .* ZZZ;
AAA(14, :) = YYY .* ZZZ .* ZZZ .* ZZZ;
AAA(15, :) = ZZZ .* ZZZ .* ZZZ .* ZZZ;

AAA(16, :)  = XXX .* XXX .* XXX;
AAA(17, :)  = XXX .* XXX .* YYY;
AAA(18, :)  = XXX .* XXX .* ZZZ;
AAA(19, :)  = XXX .* YYY .* YYY;
AAA(20, :)  = XXX .* YYY .* ZZZ;
AAA(21, :)  = XXX .* ZZZ .* ZZZ;
AAA(22, :)  = YYY .* YYY .* YYY;
AAA(23, :)  = YYY .* YYY .* ZZZ;
AAA(24, :)  = YYY .* ZZZ .* ZZZ;
AAA(25, :)  = ZZZ .* ZZZ .* ZZZ;

AAA(26, :)  = XXX .* XXX;
AAA(27, :)  = XXX .* YYY;
AAA(28, :)  = XXX .* ZZZ;
AAA(29, :)  = YYY .* YYY;
AAA(30, :)  = YYY .* ZZZ;
AAA(31, :)  = ZZZ .* ZZZ;

AAA(32, :)  = XXX;
AAA(33, :)  = YYY;
AAA(34, :)  = ZZZ;
AAA(35, :)  = 1;

Feature2x35 = (BBB * AAA') / (AAA * AAA');





% Tiff_test = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_53_1250.tif');
Tiff_test = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_29.tif');

X_Test = Tiff_test(:, :, 1);
Y_Test = Tiff_test(:, :, 2);
Z_Test = Tiff_test(:, :, 3);
T_Test = Tiff_test(:, :, 5);


CC_Recovery = ...
  Feature2x35(1, 1)  .* X_Test .* X_Test .* X_Test .* X_Test ...
+ Feature2x35(1, 2)  .* X_Test .* X_Test .* X_Test .* Y_Test ...
+ Feature2x35(1, 3)  .* X_Test .* X_Test .* X_Test .* Z_Test ...
+ Feature2x35(1, 4)  .* X_Test .* X_Test .* Y_Test .* Y_Test ...
+ Feature2x35(1, 5)  .* X_Test .* X_Test .* Y_Test .* Z_Test ...
+ Feature2x35(1, 6)  .* X_Test .* X_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 7)  .* X_Test .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(1, 8)  .* X_Test .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(1, 9)  .* X_Test .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 10) .* X_Test .* Z_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 11) .* Y_Test .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(1, 12) .* Y_Test .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(1, 13) .* Y_Test .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 14) .* Y_Test .* Z_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 15) .* Z_Test .* Z_Test .* Z_Test .* Z_Test ...
...
+ Feature2x35(1, 16)  .* X_Test .* X_Test .* X_Test ...
+ Feature2x35(1, 17)  .* X_Test .* X_Test .* Y_Test ...
+ Feature2x35(1, 18)  .* X_Test .* X_Test .* Z_Test ...
+ Feature2x35(1, 19)  .* X_Test .* Y_Test .* Y_Test ...
+ Feature2x35(1, 20)  .* X_Test .* Y_Test .* Z_Test ...
+ Feature2x35(1, 21)  .* X_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 22)  .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(1, 23)  .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(1, 24)  .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(1, 25)  .* Z_Test .* Z_Test .* Z_Test ...
...
+ Feature2x35(1, 26)  .* X_Test .* X_Test ...
+ Feature2x35(1, 27)  .* X_Test .* Y_Test ...
+ Feature2x35(1, 28)  .* X_Test .* Z_Test ...
+ Feature2x35(1, 29)  .* Y_Test .* Y_Test ...
+ Feature2x35(1, 30)  .* Y_Test .* Z_Test ...
+ Feature2x35(1, 31)  .* Z_Test .* Z_Test ...
...
+ Feature2x35(1, 32)  .* X_Test ...
+ Feature2x35(1, 33)  .* Y_Test ...
+ Feature2x35(1, 34)  .* Z_Test ...
+ Feature2x35(1, 35);

RR_Recovery = ...
  Feature2x35(2, 1)  .* X_Test .* X_Test .* X_Test .* X_Test ...
+ Feature2x35(2, 2)  .* X_Test .* X_Test .* X_Test .* Y_Test ...
+ Feature2x35(2, 3)  .* X_Test .* X_Test .* X_Test .* Z_Test ...
+ Feature2x35(2, 4)  .* X_Test .* X_Test .* Y_Test .* Y_Test ...
+ Feature2x35(2, 5)  .* X_Test .* X_Test .* Y_Test .* Z_Test ...
+ Feature2x35(2, 6)  .* X_Test .* X_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 7)  .* X_Test .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(2, 8)  .* X_Test .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(2, 9)  .* X_Test .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 10) .* X_Test .* Z_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 11) .* Y_Test .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(2, 12) .* Y_Test .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(2, 13) .* Y_Test .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 14) .* Y_Test .* Z_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 15) .* Z_Test .* Z_Test .* Z_Test .* Z_Test ...
...
+ Feature2x35(2, 16)  .* X_Test .* X_Test .* X_Test ...
+ Feature2x35(2, 17)  .* X_Test .* X_Test .* Y_Test ...
+ Feature2x35(2, 18)  .* X_Test .* X_Test .* Z_Test ...
+ Feature2x35(2, 19)  .* X_Test .* Y_Test .* Y_Test ...
+ Feature2x35(2, 20)  .* X_Test .* Y_Test .* Z_Test ...
+ Feature2x35(2, 21)  .* X_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 22)  .* Y_Test .* Y_Test .* Y_Test ...
+ Feature2x35(2, 23)  .* Y_Test .* Y_Test .* Z_Test ...
+ Feature2x35(2, 24)  .* Y_Test .* Z_Test .* Z_Test ...
+ Feature2x35(2, 25)  .* Z_Test .* Z_Test .* Z_Test ...
...
+ Feature2x35(2, 26)  .* X_Test .* X_Test ...
+ Feature2x35(2, 27)  .* X_Test .* Y_Test ...
+ Feature2x35(2, 28)  .* X_Test .* Z_Test ...
+ Feature2x35(2, 29)  .* Y_Test .* Y_Test ...
+ Feature2x35(2, 30)  .* Y_Test .* Z_Test ...
+ Feature2x35(2, 31)  .* Z_Test .* Z_Test ...
...
+ Feature2x35(2, 32)  .* X_Test ...
+ Feature2x35(2, 33)  .* Y_Test ...
+ Feature2x35(2, 34)  .* Z_Test ...
+ Feature2x35(2, 35);


figure(2);
hSurface = mesh(CC_Recovery,RR_Recovery,zeros(size(CC_Recovery)));
axis equal;
xlabel('Recovered     Column');
ylabel('Recovered     Row');

figure(3);
hSurface = mesh(X_Test,Y_Test,zeros(size(X_Test)));





























% % X = zeros(1080, 1920, 15);
% % Y = zeros(1080, 1920, 15);
% % Z = zeros(1080, 1920, 15);
% % T = zeros(1080, 1920, 15);
% 
% X = zeros(424, 512, 15);
% Y = zeros(424, 512, 15);
% Z = zeros(424, 512, 15);
% T = zeros(424, 512, 15);
% 
% % frameTotal = 1199;
% frameTotal = 1868;%935;
% countTotal = frameTotal * 15;
% 
% XXX = zeros(1, countTotal);
% YYY = zeros(1, countTotal);
% CCC = zeros(1, countTotal);
% RRR = zeros(1, countTotal);
% ZZZ = zeros(1, countTotal);
% 
% 
% Tiff_01 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_01_2565.tif');
% X(:, :, 1) = Tiff_01(:, :, 1);
% X(:, :, 1) = X(:, :, 1) - 1;
% Y(:, :, 1) = Tiff_01(:, :, 2);
% Z(:, :, 1) = Tiff_01(:, :, 3);
% T(:, :, 1) = Tiff_01(:, :, 5);
% frame = 1;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_01;
% 
% Tiff_02 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_05_2465.tif');
% X(:, :, 2) = Tiff_02(:, :, 1);
% X(:, :, 2) = X(:, :, 2) - 1;
% Y(:, :, 2) = Tiff_02(:, :, 2);
% Z(:, :, 2) = Tiff_02(:, :, 3);
% T(:, :, 2) = Tiff_02(:, :, 5);
% frame = 2;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_02;
% 
% Tiff_03 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_09_2365.tif');
% X(:, :, 3) = Tiff_03(:, :, 1);
% Y(:, :, 3) = Tiff_03(:, :, 2);
% Z(:, :, 3) = Tiff_03(:, :, 3);
% T(:, :, 3) = Tiff_03(:, :, 5);
% frame = 3;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_03;
% 
% Tiff_04 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_13_2265.tif');
% X(:, :, 4) = Tiff_04(:, :, 1);
% Y(:, :, 4) = Tiff_04(:, :, 2);
% Z(:, :, 4) = Tiff_04(:, :, 3);
% T(:, :, 4) = Tiff_04(:, :, 5);
% frame = 4;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_04;
% 
% Tiff_05 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_17_2165.tif');
% X(:, :, 5) = Tiff_05(:, :, 1);
% X(:, :, 5) = X(:, :, 5) - 1;
% Y(:, :, 5) = Tiff_05(:, :, 2);
% Z(:, :, 5) = Tiff_05(:, :, 3);
% T(:, :, 5) = Tiff_05(:, :, 5);
% frame = 5;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_05;
% 
% Tiff_06 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_21_2065.tif');
% X(:, :, 6) = Tiff_06(:, :, 1);
% Y(:, :, 6) = Tiff_06(:, :, 2);
% Z(:, :, 6) = Tiff_06(:, :, 3);
% T(:, :, 6) = Tiff_06(:, :, 5);
% frame = 6;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_06;
% 
% Tiff_07 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_25_1965.tif');
% X(:, :, 7) = Tiff_07(:, :, 1);
% Y(:, :, 7) = Tiff_07(:, :, 2);
% Z(:, :, 7) = Tiff_07(:, :, 3);
% T(:, :, 7) = Tiff_07(:, :, 5);
% frame = 7;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_07;
% 
% Tiff_08 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_29_1865.tif');
% X(:, :, 8) = Tiff_08(:, :, 1);
% X(:, :, 8) = X(:, :, 8) - 1;
% Y(:, :, 8) = Tiff_08(:, :, 2);
% Z(:, :, 8) = Tiff_08(:, :, 3);
% T(:, :, 8) = Tiff_08(:, :, 5);
% frame = 8;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_08;
% 
% Tiff_09 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_33_1765.tif');
% X(:, :, 9) = Tiff_09(:, :, 1);
% X(:, :, 9) = X(:, :, 9) - 1;
% Y(:, :, 9) = Tiff_09(:, :, 2);
% Z(:, :, 9) = Tiff_09(:, :, 3);
% T(:, :, 9) = Tiff_09(:, :, 5);
% frame = 9;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_09;
% 
% Tiff_10 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_37_1665.tif');
% X(:, :, 10) = Tiff_10(:, :, 1);
% Y(:, :, 10) = Tiff_10(:, :, 2);
% Z(:, :, 10) = Tiff_10(:, :, 3);
% T(:, :, 10) = Tiff_10(:, :, 5);
% frame = 10;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_10;
% 
% Tiff_11 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_41_1565.tif');
% X(:, :, 11) = Tiff_11(:, :, 1);
% Y(:, :, 11) = Tiff_11(:, :, 2);
% Y(:, :, 11) = Y(:, :, 11) - 1;
% Z(:, :, 11) = Tiff_11(:, :, 3);
% T(:, :, 11) = Tiff_11(:, :, 5);
% frame = 11;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_11;
% 
% Tiff_12 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_45_1465.tif');
% X(:, :, 12) = Tiff_12(:, :, 1);
% Y(:, :, 12) = Tiff_12(:, :, 2);
% Z(:, :, 12) = Tiff_12(:, :, 3);
% T(:, :, 12) = Tiff_12(:, :, 5);
% frame = 12;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_12;
% 
% Tiff_13 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_49_1365.tif');
% X(:, :, 13) = Tiff_13(:, :, 1);
% Y(:, :, 13) = Tiff_13(:, :, 2);
% Z(:, :, 13) = Tiff_13(:, :, 3);
% T(:, :, 13) = Tiff_13(:, :, 5);
% frame = 13;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_13;
% 
% Tiff_14 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_54_1265.tif');
% X(:, :, 14) = Tiff_14(:, :, 1);
% Y(:, :, 14) = Tiff_14(:, :, 2);
% Z(:, :, 14) = Tiff_14(:, :, 3);
% T(:, :, 14) = Tiff_14(:, :, 5);
% frame = 14;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_14;
% 
% Tiff_15 = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_58_1165.tif');
% X(:, :, 15) = Tiff_15(:, :, 1);
% Y(:, :, 15) = Tiff_15(:, :, 2);
% Z(:, :, 15) = Tiff_15(:, :, 3);
% T(:, :, 15) = Tiff_15(:, :, 5);
% frame = 15;
% ZZZ(1, (frameTotal*(frame - 1) + 1):frameTotal*frame) = Z(1,1, frame);
% clear Tiff_15;
% 
% [C,R]=meshgrid([0:511],[0:423]);
% % hSurface = mesh(C,R,zeros(size(C)));
% figure(5);
% for m = 1:15
%     warp(Z(:,:,m), X(:,:,m),Y(:,:,m),T(:,:,m));
%     hold on;
% end
% 
% count = 0;
% totalCount = 0;
% for row = 1:424
%     for col = 1:512
%         
% %       if ( ( row ==  1 && mod(col,5) == 0) || ( row ==  424 && mod(col,5) == 0) || ( col ==  1 && mod(row,5) == 0) || ( col ==  512 && mod(row,5) == 0) )
%       if ( ( row ==  1 && mod(col,1) == 0) || ( row ==  424 && mod(col,1) == 0) || ( col ==  1 && mod(row,1) == 0) || ( col ==  512 && mod(row,1) == 0) )
% 
%             count = count + 1;
%             for frameCount = 1:15
%                 XXX(frameTotal*(frameCount - 1) + count) = X(row, col, frameCount);
%                 YYY(frameTotal*(frameCount - 1) + count) = Y(row, col, frameCount);
%                 CCC(frameTotal*(frameCount - 1) + count) = C(row, col);
%                 RRR(frameTotal*(frameCount - 1) + count) = R(row, col);
%             
%                 totalCount = totalCount + 1;
%             end
%             
%       end
% 
%     end
% end
% 
% BBB = [CCC; RRR];
% 
% AAA = zeros(35, countTotal);
% 
% AAA(1, :)  = XXX .* XXX .* XXX .* XXX;
% AAA(2, :)  = XXX .* XXX .* XXX .* YYY;
% AAA(3, :)  = XXX .* XXX .* XXX .* ZZZ;
% AAA(4, :)  = XXX .* XXX .* YYY .* YYY;
% AAA(5, :)  = XXX .* XXX .* YYY .* ZZZ;
% AAA(6, :)  = XXX .* XXX .* ZZZ .* ZZZ;
% AAA(7, :)  = XXX .* YYY .* YYY .* YYY;
% AAA(8, :)  = XXX .* YYY .* YYY .* ZZZ;
% AAA(9, :)  = XXX .* YYY .* ZZZ .* ZZZ;
% AAA(10, :) = XXX .* ZZZ .* ZZZ .* ZZZ;
% AAA(11, :) = YYY .* YYY .* YYY .* YYY;
% AAA(12, :) = YYY .* YYY .* YYY .* ZZZ;
% AAA(13, :) = YYY .* YYY .* ZZZ .* ZZZ;
% AAA(14, :) = YYY .* ZZZ .* ZZZ .* ZZZ;
% AAA(15, :) = ZZZ .* ZZZ .* ZZZ .* ZZZ;
% 
% AAA(16, :)  = XXX .* XXX .* XXX;
% AAA(17, :)  = XXX .* XXX .* YYY;
% AAA(18, :)  = XXX .* XXX .* ZZZ;
% AAA(19, :)  = XXX .* YYY .* YYY;
% AAA(20, :)  = XXX .* YYY .* ZZZ;
% AAA(21, :)  = XXX .* ZZZ .* ZZZ;
% AAA(22, :)  = YYY .* YYY .* YYY;
% AAA(23, :)  = YYY .* YYY .* ZZZ;
% AAA(24, :)  = YYY .* ZZZ .* ZZZ;
% AAA(25, :)  = ZZZ .* ZZZ .* ZZZ;
% 
% AAA(26, :)  = XXX .* XXX;
% AAA(27, :)  = XXX .* YYY;
% AAA(28, :)  = XXX .* ZZZ;
% AAA(29, :)  = YYY .* YYY;
% AAA(30, :)  = YYY .* ZZZ;
% AAA(31, :)  = ZZZ .* ZZZ;
% 
% AAA(32, :)  = XXX;
% AAA(33, :)  = YYY;
% AAA(34, :)  = ZZZ;
% AAA(35, :)  = 1;
% 
% Feature2x35 = (BBB * AAA') / (AAA * AAA');
% 
% 
% 
% 
% 
% Tiff_test = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_53_1250.tif');
% % Tiff_test = imread('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_NoDepthAverage\NIR_29_1865.tif');
% 
% X_Test = Tiff_test(:, :, 1);
% Y_Test = Tiff_test(:, :, 2);
% Z_Test = Tiff_test(:, :, 3);
% 
% 
% CC_Recovery = ...
%   Feature2x35(1, 1)  .* X_Test .* X_Test .* X_Test .* X_Test ...
% + Feature2x35(1, 2)  .* X_Test .* X_Test .* X_Test .* Y_Test ...
% + Feature2x35(1, 3)  .* X_Test .* X_Test .* X_Test .* Z_Test ...
% + Feature2x35(1, 4)  .* X_Test .* X_Test .* Y_Test .* Y_Test ...
% + Feature2x35(1, 5)  .* X_Test .* X_Test .* Y_Test .* Z_Test ...
% + Feature2x35(1, 6)  .* X_Test .* X_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 7)  .* X_Test .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(1, 8)  .* X_Test .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(1, 9)  .* X_Test .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 10) .* X_Test .* Z_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 11) .* Y_Test .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(1, 12) .* Y_Test .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(1, 13) .* Y_Test .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 14) .* Y_Test .* Z_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 15) .* Z_Test .* Z_Test .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(1, 16)  .* X_Test .* X_Test .* X_Test ...
% + Feature2x35(1, 17)  .* X_Test .* X_Test .* Y_Test ...
% + Feature2x35(1, 18)  .* X_Test .* X_Test .* Z_Test ...
% + Feature2x35(1, 19)  .* X_Test .* Y_Test .* Y_Test ...
% + Feature2x35(1, 20)  .* X_Test .* Y_Test .* Z_Test ...
% + Feature2x35(1, 21)  .* X_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 22)  .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(1, 23)  .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(1, 24)  .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(1, 25)  .* Z_Test .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(1, 26)  .* X_Test .* X_Test ...
% + Feature2x35(1, 27)  .* X_Test .* Y_Test ...
% + Feature2x35(1, 28)  .* X_Test .* Z_Test ...
% + Feature2x35(1, 29)  .* Y_Test .* Y_Test ...
% + Feature2x35(1, 30)  .* Y_Test .* Z_Test ...
% + Feature2x35(1, 31)  .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(1, 32)  .* X_Test ...
% + Feature2x35(1, 33)  .* Y_Test ...
% + Feature2x35(1, 34)  .* Z_Test ...
% + Feature2x35(1, 35);
% 
% RR_Recovery = ...
%   Feature2x35(2, 1)  .* X_Test .* X_Test .* X_Test .* X_Test ...
% + Feature2x35(2, 2)  .* X_Test .* X_Test .* X_Test .* Y_Test ...
% + Feature2x35(2, 3)  .* X_Test .* X_Test .* X_Test .* Z_Test ...
% + Feature2x35(2, 4)  .* X_Test .* X_Test .* Y_Test .* Y_Test ...
% + Feature2x35(2, 5)  .* X_Test .* X_Test .* Y_Test .* Z_Test ...
% + Feature2x35(2, 6)  .* X_Test .* X_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 7)  .* X_Test .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(2, 8)  .* X_Test .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(2, 9)  .* X_Test .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 10) .* X_Test .* Z_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 11) .* Y_Test .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(2, 12) .* Y_Test .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(2, 13) .* Y_Test .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 14) .* Y_Test .* Z_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 15) .* Z_Test .* Z_Test .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(2, 16)  .* X_Test .* X_Test .* X_Test ...
% + Feature2x35(2, 17)  .* X_Test .* X_Test .* Y_Test ...
% + Feature2x35(2, 18)  .* X_Test .* X_Test .* Z_Test ...
% + Feature2x35(2, 19)  .* X_Test .* Y_Test .* Y_Test ...
% + Feature2x35(2, 20)  .* X_Test .* Y_Test .* Z_Test ...
% + Feature2x35(2, 21)  .* X_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 22)  .* Y_Test .* Y_Test .* Y_Test ...
% + Feature2x35(2, 23)  .* Y_Test .* Y_Test .* Z_Test ...
% + Feature2x35(2, 24)  .* Y_Test .* Z_Test .* Z_Test ...
% + Feature2x35(2, 25)  .* Z_Test .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(2, 26)  .* X_Test .* X_Test ...
% + Feature2x35(2, 27)  .* X_Test .* Y_Test ...
% + Feature2x35(2, 28)  .* X_Test .* Z_Test ...
% + Feature2x35(2, 29)  .* Y_Test .* Y_Test ...
% + Feature2x35(2, 30)  .* Y_Test .* Z_Test ...
% + Feature2x35(2, 31)  .* Z_Test .* Z_Test ...
% ...
% + Feature2x35(2, 32)  .* X_Test ...
% + Feature2x35(2, 33)  .* Y_Test ...
% + Feature2x35(2, 34)  .* Z_Test ...
% + Feature2x35(2, 35);
% 
% 
% figure(2);
% hSurface = mesh(CC_Recovery,RR_Recovery,zeros(size(CC_Recovery)));
% axis equal;
% xlabel('Recovered     Column');
% ylabel('Recovered     Row');
% 
% 
% 
















