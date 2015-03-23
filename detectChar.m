function charI=detectChar(lineI,lines, scale)

    %close all force;
    charI=zeros(scale,scale,0);
    whiteSpace= ones(scale,scale);
    k=0;
    
for l=1:lines
    
    k=k+1;
    charI(:,:,k)=whiteSpace;
    im=lineI{l};
    x=ones(2,0);
    [m,n]=size(im);
    fedge=0;
    sedge=0;
    
    for j=2:n-1
        if(sum(im(:,j))== m && sum(im(:,j+1))<m)
            fedge=fedge+1;
            x(1,fedge)=j;
        end
        
        if(sum(im(:,j-1))< m && sum(im(:,j)) == m)
            sedge=sedge+1;
            x(2,sedge)=j;
        end
    
    end
    
    x2=x(1,2:end);
    x3=x(2,1:end-1);
    
    x4=x2-x3;
    
    space=  mean( x(2,:)-x(1,:));%, [], 2) ;
    
    x5=x4>space;
    x5(end+1)=0;
    
    m= size(x,2); 
    
        for i = 1:m
            k=k+1;
            b=editing(im(:,x(1,i):x(2,i)));
            c=imresize(b,[scale,scale]);
            %sum(sum(c)) 
            %size(b,2)/size(b,1)
            
            % if sum(sum(c))< 1100  && size(b,2)/size(b,1) > 0.8 ;
            % charI(:,:,k)=eye(50);
            % else
             charI(:,:,k)=c;
           
                if x5(i)==1
                
                k=k+1;
                charI(:,:,k)=whiteSpace;
                end
       
            % end
        end

end
    
    
    










