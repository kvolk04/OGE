var  
number,sum:integer;
begin
  sum:=0;
  read(number);
  while number <> 0 do
  begin
    if (number mod 3 = 0) and (number mod 10 = 8) then sum:=sum+number;
    read(number);
  end;
  writeln(sum);
end.