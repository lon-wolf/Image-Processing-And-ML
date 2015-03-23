function y1= findlines(a)

    y1=ones(2,0);
    [m,n]=size(a);
    fedge=0;
    sedge=0;
    
    for i=2:m-1
        if(sum(a(i,:))== n && sum(a(i+1,:))<n)
            fedge=fedge+1;
            y1(1,fedge)=i;
        end
        
        if(sum(a(i-1,:))< n && sum(a(i,:)) == n)
            sedge=sedge+1;
            y1(2,sedge)=i;
        end
    
    end
    
     
end