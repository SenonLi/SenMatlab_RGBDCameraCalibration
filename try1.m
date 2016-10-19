% hSurface = mesh(X_4th,Y_4th,zeros(size(X_4th)));
% colormap([0.4 0.4 0.4]);
% 
% plot(x_4th,y_4th, 'b*');
% x_zero = FourthModel_X(279, 224);
% y_zero = FourthModel_Y(279, 224);
% ang=0:0.01:2*pi; 
% xp=0.3*cos(ang) + x_zero;
% yp=0.3*sin(ang) + y_zero;
% plot(xp,yp, 'c', 'Linewidth', 3);
% 
% x_match(1, 1) = FourthModel_X(20, 393);
% y_match(1, 1) = FourthModel_Y(20, 393);
% x_match(2, 1) = FourthModel_X(492, 394);
% y_match(2, 1) = FourthModel_Y(492, 394);
% x_match(3, 1) = FourthModel_X(278, 403);
% y_match(3, 1) = FourthModel_Y(278, 403);
% plot(x_match,y_match, 'cO', 'Linewidth', 2);
% x_line=[x_match(1, 1),x_match(2, 1)];
% y_line=[y_match(2, 1),y_match(2, 1)];
% plot(x_line,y_line, 'g', 'Linewidth', 2);
% x_line=[x_match(3, 1),x_match(3, 1)];
% y_line=[y_match(1, 1),y_match(3, 1)];
% plot(x_line,y_line, 'r', 'Linewidth', 2);
% 
figure(5)
hSurface = mesh(511-C, 423-R,zeros(size(C)));
hold on;
grid on;
axis equal;
xlabel('Colum');
ylabel('Row');
colormap([0.5 0.5 0.5]);

plot(511 - c, r, 'b*');
x_zero = 279;
y_zero = 224;
ang=0:0.01:2*pi; 
xp = 13*cos(ang) + 511 - x_zero;
yp = 13*sin(ang) + y_zero;
plot(xp,yp, 'c', 'Linewidth', 3);

x_match(1, 1) = 20;
y_match(1, 1) = 393;
x_match(2, 1) = 492;
y_match(2, 1) = 394;
x_match(3, 1) = 511 - 278;
y_match(3, 1) = 403;
plot(x_match,y_match, 'cO', 'Linewidth', 2);
x_line=[x_match(1, 1),x_match(2, 1)];
y_line=[y_match(2, 1),y_match(2, 1)];
plot(x_line,y_line, 'g', 'Linewidth', 2);
x_line=[x_match(3, 1),x_match(3, 1)];
y_line=[y_match(1, 1),y_match(3, 1)];
plot(x_line,y_line, 'r', 'Linewidth', 2);

