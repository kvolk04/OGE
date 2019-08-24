var
number, sum:integer;
begin;
  sum := 0;
  read(number);
  while number<>0 do
    begin
  if (number mod 2 = 0) and (number mod 5 = 0) then sum += 1;
  read(number);
  end;
  writeln(sum);
end.