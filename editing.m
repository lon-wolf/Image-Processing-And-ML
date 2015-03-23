function [ im2] = editing(im )


im = 1- im ;

stats = regionprops(im , 'BoundingBox' , 'Area') ;
[area1 index ]  = max([stats.Area]) ;

rect  =floor( stats(index).BoundingBox );
im2   = imcrop(1-im, rect);
% 


end
