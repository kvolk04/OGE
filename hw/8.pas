var 
amount,number,min:integer;
begin
  read(amount);
  min:=30001;
  for var i:= 1 to amount do begin
    read(number);
    if (number mod 2 = 0) and (number < min) then min:=number;
  end;
  writeln(min);
end.