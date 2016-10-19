clear;
close all;
% x = imread('C:\Users\liziy\Desktop\Untitled2.tif');
% x = imread('C:\Users\liziy\Desktop\LauChangedZto1.tif');
%x = imread('C:\Users\liziy\Desktop\Half.tif');
% x = imread('C:\Users\liziy\Desktop\NIR_XYZDRRRD\NearIR_1528.tif');
x = imread('C:\Users\liziy\Developer\Untitled.tif');

% x = imread('C:\Users\liziy\Desktop\Centers1To4.tif');

% T = x(:, :, 1);
X = x(:, :, 1);
Y = x(:, :, 2);
Z = x(:, :, 3);
D = x(:, :, 4);
% A = x(:,:,8);

% wrongCount = 0;
% for row = 1:424
%     for col = 1:512
%         if (x(row,col,1)> 10 || x(row,col,1) < -10 || x(row,col,2) < -8 || x(row,col,2)> 8)
%             wrongCount = wrongCount + 1;
%             wrongPixel(wrongCount, 1) = row;
%             wrongPixel(wrongCount, 2) = col;
%         end
%     end
% end
      
                    
  SenMin =  999999;
  SenMax = -999999;
  SenSum = 0;
  for f=1:6
      for i=1:424
          for j=1:512
%                 SenSum = SenSum + x(i,j,f);
                if(x(i,j,f) < SenMin)
                    SenMin = x(i,j,f);
                end
                if(x(i,j,f) > SenMax)
                    SenMax = x(i,j,f);
                end
                                
          end
      end
        switch f
            case 1
%                   fprintf('X frame,  Xmin = %d ,  Xmax = %d  ,  SenSum = %d\n',SenMin,SenMax, SenSum);
                  fprintf('X frame,  Xmin = %d ,  Xmax = %d\n',SenMin,SenMax);
            case 2
                  fprintf('Y frame,  Ymin = %d ,  Ymax = %d\n',SenMin,SenMax);
            case 3
                  fprintf('Z frame,  Zmin = %d ,  Zmax = %d\n',SenMin,SenMax);
            case 4
                  fprintf('W frame,  Wmin = %d ,  Wmax = %d\n',SenMin,SenMax);
            case 5
                  fprintf('R frame,  Rmin = %d ,  Rmax = %d\n',SenMin,SenMax);
            case 6
                  fprintf('G frame,  Gmin = %d ,  Gmax = %d\n',SenMin,SenMax);
            case 7
                  fprintf('B frame,  Bmin = %d ,  Bmax = %d\n',SenMin,SenMax);
            case 8
                  fprintf('D frame,  Dmin = %d ,  Dmax = %d\n',SenMin,SenMax);                  
            otherwise
                  fprintf('Something Wrong!!!\n\n');
        end
        SenMin =  999999;
        SenMax = -999999;
  end

figure(1);imagesc(x(:,:,1));   % look at the X data
figure(2);imagesc(x(:,:,2));   % look at the Y data
figure(3);imagesc(x(:,:,3));   % look at the Z data
figure(4);imagesc(x(:,:,4));   % look at the R data
figure(5);imagesc(x(:,:,5));   % look at the G data
figure(6);imagesc(x(:,:,6));   % look at the B data
figure(7);imagesc(x(:,:,7));   % look at the B data
figure(8);imagesc(x(:,:,8));   % look at the B data  