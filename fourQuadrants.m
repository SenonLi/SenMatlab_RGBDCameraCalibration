clear;
N = dlmread('81clustersIRdata.txt', ' ', 0, 0);
c = N(:,1);
r = N(:,2);
x = N(:,3);
y = N(:,4);

figure(1);
plot(c,-r,'r*');
grid on;
xlabel('Column');
ylabel('Row');
title('Raw Image Column and Row');
% 
% figure(2);
% plot(x,y,'bX');
% grid on;
% xlabel('X');
% ylabel('Y');
% title('Calibrated X and Y');

q1_count = 0;
q2_count = 0;
q3_count = 0;
q4_count = 0;

xZero = 6;
yZero = -4;
totalClusterNum = 81;

for i = 1:totalClusterNum
    if (x(i) < xZero)
        if (y(i) < yZero)
            q3_count = q3_count + 1;
            c_q3(q3_count) = c(i);   r_q3(q3_count) = r(i);
            x_q3(q3_count) = x(i);   y_q3(q3_count) = y(i);
        
        elseif (y(i) > yZero)
            q2_count = q2_count + 1;
            c_q2(q2_count) = c(i);   r_q2(q2_count) = r(i);
            x_q2(q2_count) = x(i);   y_q2(q2_count) = y(i);
            
        elseif (y(i) == yZero)
            q3_count = q3_count + 1;
            c_q3(q3_count) = c(i);   r_q3(q3_count) = r(i);
            x_q3(q3_count) = x(i);   y_q3(q3_count) = y(i);
            
            q2_count = q2_count + 1;
            c_q2(q2_count) = c(i);   r_q2(q2_count) = r(i);
            x_q2(q2_count) = x(i);   y_q2(q2_count) = y(i);
        end
    elseif (x(i) > xZero)
        if (y(i) < yZero)
            q4_count = q4_count + 1;
            c_q4(q4_count) = c(i);   r_q4(q4_count) = r(i);
            x_q4(q4_count) = x(i);   y_q4(q4_count) = y(i);
        
        elseif (y(i) > yZero)
            q1_count = q1_count + 1;
            c_q1(q1_count) = c(i);   r_q1(q1_count) = r(i);
            x_q1(q1_count) = x(i);   y_q1(q1_count) = y(i);
            
        elseif (y(i) == yZero)
            q4_count = q4_count + 1;
            c_q4(q4_count) = c(i);   r_q4(q4_count) = r(i);
            x_q4(q4_count) = x(i);   y_q4(q4_count) = y(i);
            
            q1_count = q1_count + 1;
            c_q1(q1_count) = c(i);   r_q1(q1_count) = r(i);
            x_q1(q1_count) = x(i);   y_q1(q1_count) = y(i);
        end
    elseif (x(i) == xZero)
        if (y(i) < yZero)
            q3_count = q3_count + 1;
            c_q3(q3_count) = c(i);   r_q3(q3_count) = r(i);
            x_q3(q3_count) = x(i);   y_q3(q3_count) = y(i);
            
            q4_count = q4_count + 1;
            c_q4(q4_count) = c(i);   r_q4(q4_count) = r(i);
            x_q4(q4_count) = x(i);   y_q4(q4_count) = y(i);
        
        elseif (y(i) > yZero)
            q1_count = q1_count + 1;
            c_q1(q1_count) = c(i);   r_q1(q1_count) = r(i);
            x_q1(q1_count) = x(i);   y_q1(q1_count) = y(i);
            
            q2_count = q2_count + 1;
            c_q2(q2_count) = c(i);   r_q2(q2_count) = r(i);
            x_q2(q2_count) = x(i);   y_q2(q2_count) = y(i);
            
        elseif (y(i) == yZero)
            q1_count = q1_count + 1;
            c_q1(q1_count) = c(i);   r_q1(q1_count) = r(i);
            x_q1(q1_count) = x(i);   y_q1(q1_count) = y(i);
            
            q2_count = q2_count + 1;
            c_q2(q2_count) = c(i);   r_q2(q2_count) = r(i);
            x_q2(q2_count) = x(i);   y_q2(q2_count) = y(i);
            
            q3_count = q3_count + 1;
            c_q3(q3_count) = c(i);   r_q3(q3_count) = r(i);
            x_q3(q3_count) = x(i);   y_q3(q3_count) = y(i);
            
            q4_count = q4_count + 1;
            c_q4(q4_count) = c(i);   r_q4(q4_count) = r(i);
            x_q4(q4_count) = x(i);   y_q4(q4_count) = y(i);
        end        
    end
end
% 
% figure(1);
% subplot(2,2,3); plot(c_q2, r_q2, 'bo');title('3nd Quadrant');grid on;
% subplot(2,2,4); plot(c_q1, r_q1, 'bo');title('4st Quadrant');grid on;
% subplot(2,2,1); plot(c_q3, r_q3, 'bo');title('2rd Quadrant');grid on;
% subplot(2,2,2); plot(c_q4, r_q4, 'bo');title('1th Quadrant');grid on;
% 
% figure(2);
% subplot(2,2,1); plot(x_q2, y_q2, 'ro');title('2nd Quadrant');grid on;
% subplot(2,2,2); plot(x_q1, y_q1, 'ro');title('1st Quadrant');grid on;
% subplot(2,2,3); plot(x_q3, y_q3, 'ro');title('3rd Quadrant');grid on;
% subplot(2,2,4); plot(x_q4, y_q4, 'ro');title('4th Quadrant');grid on;

vec_C4   = c_q1.*c_q1.*c_q1.*c_q1;
vec_C3R1 = c_q1.*c_q1.*c_q1.*r_q1;
vec_C2R2 = c_q1.*c_q1.*r_q1.*r_q1;
vec_C1R3 = c_q1.*r_q1.*r_q1.*r_q1;
vec_R4   = r_q1.*r_q1.*r_q1.*r_q1;
vec_C3   = c_q1.*c_q1.*c_q1;
vec_C2R1 = c_q1.*c_q1.*r_q1;
vec_C1R2 = c_q1.*r_q1.*r_q1;
vec_R3   = r_q1.*r_q1.*r_q1;
vec_C2   = c_q1.*c_q1;
vec_C1R1 = c_q1.*r_q1;
vec_R2   = r_q1.*r_q1;
vec_1 = ones(q1_count, 1);

matFeature15(1, 1:q1_count) = vec_C4;
matFeature15(2, 1:q1_count) = vec_C3R1;
matFeature15(3, 1:q1_count) = vec_C2R2;
matFeature15(4, 1:q1_count) = vec_C1R3;
matFeature15(5, 1:q1_count) = vec_R4;
matFeature15(6, 1:q1_count) = vec_C3;
matFeature15(7, 1:q1_count) = vec_C2R1;
matFeature15(8, 1:q1_count) = vec_C1R2;
matFeature15(9, 1:q1_count) = vec_R3;
matFeature15(10, 1:q1_count) = vec_C2;
matFeature15(11, 1:q1_count) = vec_C1R1;
matFeature15(12, 1:q1_count) = vec_R2;
matFeature15(13, 1:q1_count) = c_q1;
matFeature15(14, 1:q1_count) = r_q1;
matFeature15(15, 1:q1_count) = vec_1;


N = dlmread('81_Cq1_X.txt', ' ', 0, 0);
C_X_q1 = (N(:,1))';
N = dlmread('81_Cq1_Y.txt', ' ', 0, 0);
C_Y_q1 = (N(:,1))';

map_X_q1 = (C_X_q1 * matFeature15)';
map_Y_q1 = (C_Y_q1 * matFeature15)';




vec_C4   = c_q2.*c_q2.*c_q2.*c_q2;
vec_C3R1 = c_q2.*c_q2.*c_q2.*r_q2;
vec_C2R2 = c_q2.*c_q2.*r_q2.*r_q2;
vec_C1R3 = c_q2.*r_q2.*r_q2.*r_q2;
vec_R4   = r_q2.*r_q2.*r_q2.*r_q2;
vec_C3   = c_q2.*c_q2.*c_q2;
vec_C2R1 = c_q2.*c_q2.*r_q2;
vec_C1R2 = c_q2.*r_q2.*r_q2;
vec_R3   = r_q2.*r_q2.*r_q2;
vec_C2   = c_q2.*c_q2;
vec_C1R1 = c_q2.*r_q2;
vec_R2   = r_q2.*r_q2;
vec_1 = ones(q2_count, 1);

clear matFeature15;
matFeature15(1, 1:q2_count) = vec_C4;
matFeature15(2, 1:q2_count) = vec_C3R1;
matFeature15(3, 1:q2_count) = vec_C2R2;
matFeature15(4, 1:q2_count) = vec_C1R3;
matFeature15(5, 1:q2_count) = vec_R4;
matFeature15(6, 1:q2_count) = vec_C3;
matFeature15(7, 1:q2_count) = vec_C2R1;
matFeature15(8, 1:q2_count) = vec_C1R2;
matFeature15(9, 1:q2_count) = vec_R3;
matFeature15(10, 1:q2_count) = vec_C2;
matFeature15(11, 1:q2_count) = vec_C1R1;
matFeature15(12, 1:q2_count) = vec_R2;
matFeature15(13, 1:q2_count) = c_q2;
matFeature15(14, 1:q2_count) = r_q2;
matFeature15(15, 1:q2_count) = vec_1;

N = dlmread('81_Cq2_X.txt', ' ', 0, 0);
C_X_q2 = (N(:,1))';
N = dlmread('81_Cq2_Y.txt', ' ', 0, 0);
C_Y_q2 = (N(:,1))';

map_X_q2 = (C_X_q2 * matFeature15)';
map_Y_q2 = (C_Y_q2 * matFeature15)';



vec_C4   = c_q3.*c_q3.*c_q3.*c_q3;
vec_C3R1 = c_q3.*c_q3.*c_q3.*r_q3;
vec_C2R2 = c_q3.*c_q3.*r_q3.*r_q3;
vec_C1R3 = c_q3.*r_q3.*r_q3.*r_q3;
vec_R4   = r_q3.*r_q3.*r_q3.*r_q3;
vec_C3   = c_q3.*c_q3.*c_q3;
vec_C2R1 = c_q3.*c_q3.*r_q3;
vec_C1R2 = c_q3.*r_q3.*r_q3;
vec_R3   = r_q3.*r_q3.*r_q3;
vec_C2   = c_q3.*c_q3;
vec_C1R1 = c_q3.*r_q3;
vec_R2   = r_q3.*r_q3;
vec_1 = ones(q3_count, 1);

clear matFeature15;
matFeature15(1, 1:q3_count) = vec_C4;
matFeature15(2, 1:q3_count) = vec_C3R1;
matFeature15(3, 1:q3_count) = vec_C2R2;
matFeature15(4, 1:q3_count) = vec_C1R3;
matFeature15(5, 1:q3_count) = vec_R4;
matFeature15(6, 1:q3_count) = vec_C3;
matFeature15(7, 1:q3_count) = vec_C2R1;
matFeature15(8, 1:q3_count) = vec_C1R2;
matFeature15(9, 1:q3_count) = vec_R3;
matFeature15(10, 1:q3_count) = vec_C2;
matFeature15(11, 1:q3_count) = vec_C1R1;
matFeature15(12, 1:q3_count) = vec_R2;
matFeature15(13, 1:q3_count) = c_q3;
matFeature15(14, 1:q3_count) = r_q3;
matFeature15(15, 1:q3_count) = vec_1;

N = dlmread('81_Cq3_X.txt', ' ', 0, 0);
C_X_q3 = (N(:,1))';
N = dlmread('81_Cq3_Y.txt', ' ', 0, 0);
C_Y_q3 = (N(:,1))';

map_X_q3 = (C_X_q3 * matFeature15)';
map_Y_q3 = (C_Y_q3 * matFeature15)';





vec_C4   = c_q4.*c_q4.*c_q4.*c_q4;
vec_C3R1 = c_q4.*c_q4.*c_q4.*r_q4;
vec_C2R2 = c_q4.*c_q4.*r_q4.*r_q4;
vec_C1R3 = c_q4.*r_q4.*r_q4.*r_q4;
vec_R4   = r_q4.*r_q4.*r_q4.*r_q4;
vec_C3   = c_q4.*c_q4.*c_q4;
vec_C2R1 = c_q4.*c_q4.*r_q4;
vec_C1R2 = c_q4.*r_q4.*r_q4;
vec_R3   = r_q4.*r_q4.*r_q4;
vec_C2   = c_q4.*c_q4;
vec_C1R1 = c_q4.*r_q4;
vec_R2   = r_q4.*r_q4;
vec_1 = ones(q4_count, 1);

clear matFeature15;
matFeature15(1, 1:q4_count) = vec_C4;
matFeature15(2, 1:q4_count) = vec_C3R1;
matFeature15(3, 1:q4_count) = vec_C2R2;
matFeature15(4, 1:q4_count) = vec_C1R3;
matFeature15(5, 1:q4_count) = vec_R4;
matFeature15(6, 1:q4_count) = vec_C3;
matFeature15(7, 1:q4_count) = vec_C2R1;
matFeature15(8, 1:q4_count) = vec_C1R2;
matFeature15(9, 1:q4_count) = vec_R3;
matFeature15(10, 1:q4_count) = vec_C2;
matFeature15(11, 1:q4_count) = vec_C1R1;
matFeature15(12, 1:q4_count) = vec_R2;
matFeature15(13, 1:q4_count) = c_q4;
matFeature15(14, 1:q4_count) = r_q4;
matFeature15(15, 1:q4_count) = vec_1;

N = dlmread('81_Cq4_X.txt', ' ', 0, 0);
C_X_q4 = (N(:,1))';
N = dlmread('81_Cq4_Y.txt', ' ', 0, 0);
C_Y_q4 = (N(:,1))';

map_X_q4 = (C_X_q4 * matFeature15)';
map_Y_q4 = (C_Y_q4 * matFeature15)';







figure(3);
subplot(2,2,1); plot(map_X_q2, map_Y_q2, 'ro');title('Calibrated 2nd Quadrant');grid on;
subplot(2,2,2); plot(map_X_q1, map_Y_q1, 'ro');title('Calibrated 1st Quadrant');grid on;
subplot(2,2,3); plot(map_X_q3, map_Y_q3, 'ro');title('Calibrated 3rd Quadrant');grid on;
subplot(2,2,4); plot(map_X_q4, map_Y_q4, 'ro');title('Calibrated 4th Quadrant');grid on;

figure(4);
plot( map_X_q1, map_Y_q1, 'rX', map_X_q2, map_Y_q2, 'ro', map_X_q3, map_Y_q3, 'bX', map_X_q4, map_Y_q4, 'bo');
legend('1st Quadrant', '2nd Quandrant','3rd Quandrant', '4rd Quandrant');
grid on;
title('Calibrated 4th Order 4 Quadrants');

mappedPointsFile = fopen('fourQuadrantsMappedPoints.txt', 'wt'); % Open for writing
fprintf(mappedPointsFile, '\n1st Quadrant:\t');
for i=1:q1_count
   fprintf(mappedPointsFile, '(%d, %d) ', map_X_q1(i), map_Y_q1(i));
end
fprintf(mappedPointsFile, '\n');

fprintf(mappedPointsFile, '\n2nd Quadrant:\t');
for i=1:q2_count
   fprintf(mappedPointsFile, '(%d, %d) ', map_X_q2(i), map_Y_q2(i));
end
fprintf(mappedPointsFile, '\n');

fprintf(mappedPointsFile, '\n3rd Quadrant:\t');
for i=1:q3_count
   fprintf(mappedPointsFile, '(%d, %d) ', map_X_q3(i), map_Y_q3(i));
end
fprintf(mappedPointsFile, '\n');

fprintf(mappedPointsFile, '\n4th Quadrant:\t');
for i=1:q4_count
   fprintf(mappedPointsFile, '(%d, %d) ', map_X_q4(i), map_Y_q4(i));
end
fprintf(mappedPointsFile, '\n');

fclose(mappedPointsFile);



mappedPointsFile = 'fourQuadrantsMappedPoints.xlsx';

for k=1:20
 x = rand;
 my_cell = sprintf( 'A%s',num2str(k) );
 xlswrite('my_xls.xls',x, 1,my_cell);
end
% 
% xlswrite(mappedPointsFile, '1st Quadrant', 'A1');
% for i=1:q1_count
%     x = ['(', map_X_q1(i),', ', map_Y_q1(i), ')'];
%     cellAdress = sprintf( 'A%s',num2str(i+1) );
%     xlswrite(mappedPointsFile, x, cellAdress);
% end

% xlswrite(mappedPointsFile, '2nd Quadrant', 'B1');
% for i=1:q2_count
%     x = ['(', map_X_q2(i),', ', map_Y_q2(i), ')'];
%     cellAdress = sprintf( 'B%s',num2str(i+1) );
%     xlswrite(mappedPointsFile, x, cellAdress);
% end
% 
% xlswrite(mappedPointsFile, '3rd Quadrant', 'C1');
% for i=1:q3_count
%     x = ['(', map_X_q3(i),', ', map_Y_q3(i), ')'];
%     cellAdress = sprintf( 'C%s',num2str(i+1) );
%     xlswrite(mappedPointsFile, x, cellAdress);
% end
% 
% xlswrite(mappedPointsFile, '4th Quadrant', 'D1');
% for i=1:q4_count
%     x = ['(', map_X_q4(i),', ', map_Y_q4(i), ')'];
%     cellAdress = sprintf( 'D%s',num2str(i+1) );
%     xlswrite(mappedPointsFile, x, cellAdress);
% end




