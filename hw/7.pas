var
number,sum:integer;
begin
  read(number);
  sum:=0;
  while number<>0 do begin
    if (number mod 6 =0) and (number mod 10 = 2) then sum += number;
    read(number);
  end;
  writeln(sum);
end.