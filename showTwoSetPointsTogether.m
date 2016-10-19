clc;
clear;

worldPointsAAA = getWorldPointsMatrix();
cameraPointsBBB = getCameraPointsMatrix();
[R,t] = rigid_transform_3D(worldPointsAAA, cameraPointsBBB);


strCameraToWoldRotate = 'C:\Users\liziy\Developer\SenOutput\LUT\SenCameraToWoldRotate.txt';
strCameraToWoldTranslate = 'C:\Users\liziy\Developer\SenOutput\LUT\CameraToWoldTranslate.txt';

fileID_Rotate = fopen(strCameraToWoldRotate,'w');
fileID_Translate = fopen(strCameraToWoldTranslate,'w');


fprintf(fileID_Rotate,'%f\t%f\t%f\n',  R );  
fprintf(fileID_Translate,'%f\n',  t );  


fclose(fileID_Rotate);
fclose(fileID_Translate);

rotate = dlmread(strCameraToWoldRotate, '\t', 0, 0);
translate = dlmread(strCameraToWoldTranslate, '\t', 0, 0);



