var
number,sum:integer;
begin
  sum := 0;
  read(number);
  while number <> 0 do begin
    if (number div 10 >=1) and (number mod 8 = 0) and (number div 10<10) then sum += number;
    read(number);
  end;
  writeln(sum);
end.