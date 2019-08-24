 var
 number,sum:integer;
 begin
   read(number);
   sum:=0;
   while number<>0 do begin
     if (number mod 6 = 0) and (number mod 10 = 4) then sum:=sum+number;
     read(number);
   end;
   writeln(sum);
 end.