I = imread('roadlines.jpg');
figure(1);
imshow(I);
A = rgb2gray(I);
figure(2);
imshow(A);
% imshowpair(I,A,'montage')
Ablur = imgaussfilt(A,5);
figure(3);
imshow(Ablur);
% BW1 = edge(A, 'canny'); % canny was
a little too grainy
BW = edge(A, 'sobel');
figure(4)
imshow(BW)
% imshowpair(BW,BW1,'montage')
% % imshow('solidWhiteCurve.jpg');
% % e = imellipse;
% %
% % BW = createMask(e);
% % figure;
% % imshow(BW)
% % 

[H,T,R] = hough(BW);
imshow(H,[],'XData',T,'YData',R,...

'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P =
houghpeaks(H,5,'threshold',ceil(0.3*ma
x(H(:))));
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');
lines =
houghlines(BW,T,R,P,'FillGap',5,'MinLe
ngth',7);
figure, imshow(A), hold on
max_len = 0;
for k = 1:length(lines)
 xy = [lines(k).point1;
lines(k).point2];

plot(xy(:,1),xy(:,2),'LineWidth',2,'Co
lor','green');
% Plot beginnings and ends of lines

plot(xy(1,1),xy(1,2),'x','LineWidth',2
,'Color','yellow');

plot(xy(2,1),xy(2,2),'x','LineWidth',2
,'Color','red');
% Determine the endpoints of the
longest line segment
 len = norm(lines(k).point1 -
lines(k).point2);
 if ( len > max_len)
 max_len = len;
 xy_long = xy;
 end
end
plot(xy_long(:,1),xy_long(:,2),'LineWi
dth',2,'Color','cyan');
