function savetxt(a)

    %close all force;
    scale=50;
    string=num2str(zeros(1,0));
    
    lineI=lineArray(a);
    lines=size(lineI,2);
    %charI=charArray(lineI,lines,scale);
    charI=detectChar(lineI,lines,scale);
    chars=size(charI,3);
       
    for i =1:chars
        string(end+1)=makeString(charI(:,:,i));
    end
    
    %tts(string,1,-1);
    
    fprintf(string);
    %save('text','string');
    %load('text')
    tts(string);
        
   
end