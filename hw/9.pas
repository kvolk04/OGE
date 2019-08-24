var
amount,number,max:integer;
begin
  read(amount);
  max := 0;
  for var i:= 1 to amount do begin
    read(number);
    if (number mod 10 = 2) and (number > max) then max:=number;
  end;
  writeln(max);
end.