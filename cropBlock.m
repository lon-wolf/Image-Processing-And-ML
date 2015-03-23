function cropScaleI=cropBlock(a,scale)
    [m,n]=size(a);
    
    xmin=0;
    xmax=0;
    ymin=0;
    ymax=0;
    
    
    for i=1:m
       if(sum(a(i,:)')<n)
           ymin=i;
           break;
       end    
    end
    
    for i=m:-1:1
       if(sum(a(i,:)')<n)
           ymax=i;
           break;
       end    
    end
        
    for i=1:n
       if(sum(a(:,i))<m)
           xmin=i;
           break;
       end    
    end
    
    for i=n:-1:1
       if(sum(a(:,i))<m)
           xmax=i;
           break;
       end    
    end
    
    rect=[xmin,ymin,xmax-xmin,ymax-ymin];
    cropI=imcrop(a,rect);
    cropScaleI=imresize(cropI,[scale,scale]);
end