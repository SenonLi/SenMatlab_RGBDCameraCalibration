clear;
N = dlmread('SenMappingData.txt', '\t', 0, 0);
c = N(:,1);
r = N(:,2);
x = N(:,3);
y = N(:,4);

x = -x;

ang=0:0.01:2*pi; 
xp=0.3*cos(ang);
yp=0.3*sin(ang);
plot(xp,yp, 'b');
% grid on;
% axis equal;
% xlim([-5 6]);
% ylim([-4 5]);
% xlabel('X^w');
% ylabel('Y^w');

figure(2);

[C,R]=meshgrid([0:511],[0:423]);
X_2nd = SecondModel_X(C,R);
Y_2nd = SecondModel_Y(C,R);
hSurface = mesh(X_2nd,Y_2nd,zeros(size(X_2nd)));
hold on;
grid on;
axis equal;
xlim([-5.26 6.26]);
ylim([-4.545 5]);
xlabel('X^w');
ylabel('Y^w');
colormap([0.4 0.4 0.4]);

x_2nd = SecondModel_X(c,r);
y_2nd = SecondModel_Y(c,r);
plot(x_2nd,y_2nd, 'b*');
x_zero = SecondModel_X(279, 224);
y_zero = SecondModel_Y(279, 224);
ang=0:0.01:2*pi; 
xp=0.3*cos(ang) + x_zero;
yp=0.3*sin(ang) + y_zero;
plot(xp,yp, 'c', 'Linewidth', 3);

x_match(1, 1) = SecondModel_X(20, 393);
y_match(1, 1) = SecondModel_Y(20, 393);
x_match(2, 1) = SecondModel_X(492, 394);
y_match(2, 1) = SecondModel_Y(492, 394);
x_match(3, 1) = SecondModel_X(278, 403);
y_match(3, 1) = SecondModel_Y(278, 403);
plot(x_match,y_match, 'cO', 'Linewidth', 2);
x_line=[x_match(1, 1),x_match(2, 1)];
y_line=[y_match(2, 1),y_match(2, 1)];
plot(x_line,y_line, 'g', 'Linewidth', 2);
x_line=[x_match(3, 1),x_match(3, 1)];
y_line=[y_match(1, 1),y_match(3, 1)];
plot(x_line,y_line, 'r', 'Linewidth', 2);


figure(3);
X_4th = FourthModel_X(C,R);
Y_4th = FourthModel_Y(C,R);
hSurface = mesh(X_4th,Y_4th,zeros(size(X_4th)));
hold on;
grid on;
axis equal;
xlabel('X^w');
ylabel('Y^w');
colormap([0.4 0.4 0.4]);

x_4th = FourthModel_X(c,r);
y_4th = FourthModel_Y(c,r);
plot(x_4th,y_4th, 'b*');
x_zero = FourthModel_X(279, 224);
y_zero = FourthModel_Y(279, 224);
ang=0:0.01:2*pi; 
xp=0.3*cos(ang) + x_zero;
yp=0.3*sin(ang) + y_zero;
plot(xp,yp, 'c', 'Linewidth', 3);

x_match(1, 1) = FourthModel_X(20, 393);
y_match(1, 1) = FourthModel_Y(20, 393);
x_match(2, 1) = FourthModel_X(492, 394);
y_match(2, 1) = FourthModel_Y(492, 394);
x_match(3, 1) = FourthModel_X(278, 403);
y_match(3, 1) = FourthModel_Y(278, 403);
plot(x_match,y_match, 'cO', 'Linewidth', 2);
x_line=[x_match(1, 1),x_match(2, 1)];
y_line=[y_match(2, 1),y_match(2, 1)];
plot(x_line,y_line, 'g', 'Linewidth', 2);
x_line=[x_match(3, 1),x_match(3, 1)];
y_line=[y_match(1, 1),y_match(3, 1)];
plot(x_line,y_line, 'r', 'Linewidth', 2);

figure(4)
X_1st = FirstModel_X(C,R);
Y_1st = FirstModel_Y(C,R);
hSurface = mesh(X_1st,Y_1st,zeros(size(X_1st)));
hold on;
grid on;
axis equal;
xlabel('X^w');
ylabel('Y^w');
colormap([0.4 0.4 0.4]);

x_1st = FirstModel_X(c,r);
y_1st = FirstModel_Y(c,r);
plot(x_1st,y_1st, 'b*');
x_zero = FirstModel_X(279, 224);
y_zero = FirstModel_Y(279, 224);
ang=0:0.01:2*pi; 
xp=0.3*cos(ang) + x_zero;
yp=0.3*sin(ang) + y_zero;
plot(xp,yp, 'c', 'Linewidth', 3);

x_match(1, 1) = FirstModel_X(20, 393);
y_match(1, 1) = FirstModel_Y(20, 393);
x_match(2, 1) = FirstModel_X(492, 394);
y_match(2, 1) = FirstModel_Y(492, 394);
x_match(3, 1) = FirstModel_X(278, 403);
y_match(3, 1) = FirstModel_Y(278, 403);
plot(x_match,y_match, 'cO', 'Linewidth', 2);
x_line=[x_match(1, 1),x_match(2, 1)];
y_line=[y_match(2, 1),y_match(2, 1)];
plot(x_line,y_line, 'g', 'Linewidth', 2);
x_line=[x_match(3, 1),x_match(3, 1)];
y_line=[y_match(1, 1),y_match(3, 1)];
plot(x_line,y_line, 'r', 'Linewidth', 2);

figure(5)
hSurface = mesh(C,R,zeros(C));
hold on;
grid on;
axis equal;
xlabel('Colum');
ylabel('Row');
colormap([0.4 0.4 0.4]);

plot(c, r, 'b*');
x_zero = 279;
y_zero = 224;
ang=0:0.01:2*pi; 
xp = 3*cos(ang) + x_zero;
yp = 3*sin(ang) + y_zero;
plot(xp,yp, 'c', 'Linewidth', 3);

x_match(1, 1) = 20;
y_match(1, 1) = 393;
x_match(2, 1) = 492;
y_match(2, 1) = 394;
x_match(3, 1) = 278;
y_match(3, 1) = 403;
plot(x_match,y_match, 'cO', 'Linewidth', 2);
x_line=[x_match(1, 1),x_match(2, 1)];
y_line=[y_match(2, 1),y_match(2, 1)];
plot(x_line,y_line, 'g', 'Linewidth', 2);
x_line=[x_match(3, 1),x_match(3, 1)];
y_line=[y_match(1, 1),y_match(3, 1)];
plot(x_line,y_line, 'r', 'Linewidth', 2);

