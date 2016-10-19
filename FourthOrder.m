clear all;
clc;

N = dlmread('CRXY.m', ' ', 0, 0);
c = N(:,1);
r = N(:,2);
x = N(:,3);
y = N(:,4);
figure(1);

plot(c,r,'r.');
grid on;
xlabel('Column');
ylabel('Row');
title('Raw Image Column and Row');

vec_C4   = c.*c.*c.*c;
vec_C3R1 = c.*c.*c.*r;
vec_C2R2 = c.*c.*r.*r;
vec_C1R3 = c.*r.*r.*r;
vec_R4   = r.*r.*r.*r;
vec_C3   = c.*c.*c;
vec_C2R1 = c.*c.*r;
vec_C1R2 = c.*r.*r;
vec_R3   = r.*r.*r;
vec_C2   = c.*c;
vec_C1R1 = c.*r;
vec_R2   = r.*r;
vec_1 = ones(41, 1);

N = dlmread('CR_Y_Coeffiecient.m', ' ', 0, 0);
C_cr2Y = (N(:,1))';
N = dlmread('CR_X_Coeffiecient.m', ' ', 0, 0);
C_cr2X = (N(:,1))';

N = dlmread('SecondOrder_X_Coeffiecient.m', ' ', 0, 0);
C_cr2X_2nd = (N(:,1))';
N = dlmread('SecondOrder_Y_Coeffiecient.m', ' ', 0, 0);
C_cr2Y_2nd = (N(:,1))';

matFeature15(1, 1:41) = vec_C4;
matFeature15(2, 1:41) = vec_C3R1;
matFeature15(3, 1:41) = vec_C2R2;
matFeature15(4, 1:41) = vec_C1R3;
matFeature15(5, 1:41) = vec_R4;
matFeature15(6, 1:41) = vec_C3;
matFeature15(7, 1:41) = vec_C2R1;
matFeature15(8, 1:41) = vec_C1R2;
matFeature15(9, 1:41) = vec_R3;
matFeature15(10, 1:41) = vec_C2;
matFeature15(11, 1:41) = vec_C1R1;
matFeature15(12, 1:41) = vec_R2;
matFeature15(13, 1:41) = c;
matFeature15(14, 1:41) = r;
matFeature15(15, 1:41) = vec_1;

prediction_Y = (C_cr2Y * matFeature15)';
prediction_X = (C_cr2X * matFeature15)';


matFeature6(1, 1:41) = vec_C2;
matFeature6(2, 1:41) = vec_C1R1;
matFeature6(3, 1:41) = vec_R2;
matFeature6(4, 1:41) = c;
matFeature6(5, 1:41) = r;
matFeature6(6, 1:41) = vec_1;

prediction_2nd_X = (C_cr2X_2nd * matFeature6)';
prediction_2nd_Y = (C_cr2Y_2nd * matFeature6)';

figure(2);
plot(prediction_X, prediction_Y,'bo');
hold on;
plot(prediction_2nd_X, prediction_2nd_Y,'r+');
grid on;
xlabel('prediction_X');
ylabel('prediction_Y');
title('4th/2nd Order Prediction X and Y');


