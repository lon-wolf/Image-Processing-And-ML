function c=makeString(a)

    
    load('theta');
    if a== ones(size(a));
        c=' ';
        
   % else if a==eye(50);
   %    c='.';    
    else    
    p = predict(Theta1,Theta2,vector(a));
    
switch p
   case 1
      c='A';
   case 2
      c='B';
   case 3
      c='C';
   case 4
      c='D';
   case 5
      c='E';
   case 6
      c='F';
   case 7
      c='G';
   case 8
      c='H';
   case 9
      c='I';
   case 10
      c='J';    
   case 11
      c='K';
   case 12
      c='L'; 
   case 13
      c='M';
   case 14
      c='N';
   case 15
      c='O';
   case 16
      c='P';
   case 17
      c='Q';
   case 18
      c='R';
   case 19
      c='S';
   case 20
      c='T';
   case 21
      c='U';
   case 22
      c='V';
   case 23
      c='W';
   case 24
      c='X';
   case 25
      c='Y';
   case 26
      c='Z';
   
end
    end

    end