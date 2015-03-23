function testImage(filename)
clc;
close all force;
im=imread(filename);
imshow(im);
im=processImage(im);
savetxt(im);
end
