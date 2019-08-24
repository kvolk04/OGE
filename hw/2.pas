var
number, sum:integer;
begin
  sum := 0;
  read(number);
  while number<>0 do
  begin
    if (number mod 8 = 0) and (number mod 10 = 6) then sum +=number;
     read(number);
  end;
  writeln(sum);
end.