﻿var
number,sum:integer;
begin
  sum := 0;
  read(number);
  while number <> 0 do begin
    if (number mod 7 = 0) and (number mod 10 = 3) then sum += number;
    read(number);
  end;
  writeln(sum);
end.