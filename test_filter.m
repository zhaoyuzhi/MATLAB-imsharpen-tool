RGB = imread('1_43_long6.png'); 
%figure, imshow(RGB)

f_laplacian = fspecial('laplacian', 0);
%f_laplacian = [-1 -1 -1 ; -1 8 -1 ; -1 -1 -1];
res = imfilter(RGB, f_laplacian);
RGB_laplacian = RGB + res;
imwrite(RGB_laplacian, 'laplacian.png')

RGB_imsharpen = imsharpen(RGB);
%figure, imshow(res)
imwrite(RGB_imsharpen, 'imsharpen.png')
