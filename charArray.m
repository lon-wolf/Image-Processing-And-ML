function charI=charArray(lineI,lines,scale)
    
    charI=zeros(scale,scale,0);
    k=0;
    
    
    for j=1:lines
        a=lineI{j};
        x=isolate(a);
        m=size(x,2);
    
        for i = 1:m
            k=k+1;
            charI(:,:,k)=cropBlock(a(:,x(1,i):x(2,i)),scale);
            figure,imshow(charI(:,:,k));
        end
    
    
    end
    
end