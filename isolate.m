function x1= isolate(a)

    x1=ones(2,0);
    [m,n]=size(a);
    fedge=0;
    sedge=0;
    
    for j=2:n-1
        if(sum(a(:,j))== m && sum(a(:,j+1))<m)
            fedge=fedge+1;
            x1(1,fedge)=j;
        end
        
        if(sum(a(:,j-1))< m && sum(a(:,j)) == m)
            sedge=sedge+1;
            x1(2,sedge)=j;
        end
    
    end
    
     
end