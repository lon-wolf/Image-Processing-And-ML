function lineI=lineArray(a)

    y=findlines(a);
    n=size(y,2);
    lineI=cell(1,n);
    
    for i = 1:n
        lineI{i}=a(y(1,i):y(2,i),:);
    end
    
    
end