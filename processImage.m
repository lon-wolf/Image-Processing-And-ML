function im=processImage(im)

im=rgb2gray(im);

im= (im < 75);

%imtool(1- im);



se = strel('disk',0);
im= imopen(im,se);

%imshow(im);

se = strel('disk',1 );
im=imdilate(im,se);

im=1-im;

%imshow(im);





end
