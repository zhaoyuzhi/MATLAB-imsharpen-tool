RGB = imread('1_43_long6.png'); 
I = double(rgb2gray(RGB));
I = I./max(I(:));
figure, imshow(I)
%res = wlsFilter(I, 0.5);
%figure, imshow(res)
%res = wlsFilter(I, 2, 2);
%figure, imshow(res)
res = wlsFilter(I, 0.5, 0.1);
figure, imshow(res)