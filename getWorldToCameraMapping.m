function [Q, P, R, C, Rp, Cp] = getWorldToCameraMapping(str)

% str = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\NIR_XYZDRRRD_01';
% h = imfinfo(str,'tif');
% X = zeros(h(1).Height, h(1).Width, length(h));
% Y = zeros(h(1).Height, h(1).Width, length(h));
% Z = zeros(h(1).Height, h(1).Width, length(h));
% R = zeros(h(1).Height, h(1).Width, length(h));
% C = zeros(h(1).Height, h(1).Width, length(h));
% 
% [c,r]=meshgrid([0:size(X,2)-1],[0:size(X,1)-1]);
% 
% for l = 1:length(h)
%     x = double(imread(str, 'tif', 'index', l));
%     X(:,:,l) = x(:,:,1);
%     Y(:,:,l) = x(:,:,2);
%     Z(:,:,l) = x(:,:,3);
%     C(:,:,l) = c;
%     R(:,:,l) = r;
% end;

srcFiles = dir('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGBimages\*.tif');  % the folder in which ur images exists
str = 'C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGB_XYZDRGBD_01';

h = imfinfo(str,'tif');
X = zeros(h(1).Height, h(1).Width, length(srcFiles));
Y = zeros(h(1).Height, h(1).Width, length(srcFiles));
Z = zeros(h(1).Height, h(1).Width, length(srcFiles));
R = zeros(h(1).Height, h(1).Width, length(srcFiles));
C = zeros(h(1).Height, h(1).Width, length(srcFiles));

[c,r]=meshgrid([0:size(X,2)-1],[0:size(X,1)-1]);

for frame = 1 : length(srcFiles)
    filename = strcat('C:\Users\liziy\Developer\Matlab Analysis\Color_RGB_Data\RGBimages\',srcFiles(frame).name);
    Tiff = imread(filename);
    X(:,:,frame) = Tiff(:,:,1);
    Y(:,:,frame) = Tiff(:,:,2);
    Z(:,:,frame) = Tiff(:,:,3);
    TTT(:, :, frame) = Tiff(:, :, 5);
    C(:,:,frame) = c;
    R(:,:,frame) = r;
end


%%% GET THE BEST LINEAR TRANSFROM (XYZ) TO (RC)
Q = getXYZtoST(X,Y,Z,R,C);

%%% NOW USE THE TRANSFORM TO GET OUR BEST FIT RC VALUES
[S,T] = transform(X,Y,Z,Q);

%%% GET THE BEST FOURTH ORDER TRANFORM FROM (R'C') TO RC
P = getSTtoRC(S,T,R,C);

% if (nargout > 4)
    %%% NOW USE THE A AND B TRANSFORMS TO CONFIRM HOW CLOSE OUR NEW TRANSFORM
    %%% IS AT CONVERT XYZ INTO RC VALUES
    [Rp,Cp] = transform(X,Y,Z,Q,P);
% end;

for frame = 1:length(srcFiles)
    figure(3);
    warp(X(:, :, frame), Y(:, :, frame), Z(:, :, frame), TTT(:, :, frame));
    hold on;
end

return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Q = getXYZtoST(X,Y,Z,R,C)
%
% A = coefficients that map (x,y,z) to (c,r) using polynomial order n
%
[M,N,K]=size(X);

A = zeros(2*M*N*K, 11);
B = zeros(2*M*N*K,  1);

B(1:2:end) = R(:);
B(2:2:end) = C(:);

A(1:2:end,1)  = X(:);
A(1:2:end,2)  = Y(:);
A(1:2:end,3)  = Z(:);
A(1:2:end,4)  = ones(size(X(:)));
A(1:2:end,9)  = -R(:).*X(:);
A(1:2:end,10)  = -R(:).*Y(:);
A(1:2:end,11) = -R(:).*Z(:);

A(2:2:end,5)  = X(:);
A(2:2:end,6)  = Y(:);
A(2:2:end,7)  = Z(:);
A(2:2:end,8)  = ones(size(X(:)));
A(2:2:end,9)  = -C(:).*X(:);
A(2:2:end,10) = -C(:).*Y(:);
A(2:2:end,11) = -C(:).*Z(:);

q = (A'*A)\A'*B(:);

Q = [q(1)  q(2)  q(3)  q(4);
     q(5)  q(6)  q(7)  q(8);
     q(9)  q(10) q(11)   1]';

return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function P = getSTtoRC(S,T,R,C)
%
% P = coefficients that map (s,t) to (r,c) using polynomial order n
%

D = max(size(S));
s = S(:)/D;
t = T(:)/D;

A = [(s.^4) (s.^3).*(t.^1) (s.^2).*(t.^2) (s.^1).*(t.^3) (t.^4) ...
     (s.^3) (s.^2).*(t.^1) (s.^1).*(t.^2) (t.^3) ...
     (s.^2) (s.^1).*(t.^1) (t.^2) ...
     (s.^1) (t.^1) ...
     ones(size(s))];
 
P = (A'*A)\A'*[R(:) C(:)]/D;

return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [R,C] = transform(X,Y,Z,Q,P)

R = X;
C = Y;

%%% USE THE A MATRIX TO CONVERT X,Y,Z, TO R,C
RCw = [X(:) Y(:) Z(:) ones(size(X(:)))]*Q;
R(:) = RCw(:,1)./RCw(:,3);
C(:) = RCw(:,2)./RCw(:,3);

if (nargin > 4)
    %%% USE THE B MATRIX TO CONVERT R,C TO R,C
    D = max(size(R));
    s = R(:)/D;
    t = C(:)/D;

    A = [(s.^4) (s.^3).*(t.^1) (s.^2).*(t.^2) (s.^1).*(t.^3) (t.^4) ...
         (s.^3) (s.^2).*(t.^1) (s.^1).*(t.^2) (t.^3) ...
         (s.^2) (s.^1).*(t.^1) (t.^2) ...
         (s.^1) (t.^1) ...
         ones(size(s))];
     
    RC = A*P;
    R(:) = D*RC(:,1);
    C(:) = D*RC(:,2);
end;

return;
