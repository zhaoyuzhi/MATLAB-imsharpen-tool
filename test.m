path = 'E:\Deblur\Short-Long RGB to RGB Mapping\data\slrgb2rgb_simulated_mobile_phone_4times_longer_sharp\val\night';
files = scanDir(path);

for i=1:100000000
% read file name
a1 = files{1,i};
disp(i)
disp(a1)
% read image and process image
RGB = imread(a1); 
RGB_imsharpen = imsharpen(RGB);
% wtrite
imwrite(RGB_imsharpen, a1)
end