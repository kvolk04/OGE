var
a,i,sum:integer;
begin
  sum := 0;
  for i:=1 to 8 do begin
    readln(a);
    if (a mod 3 = 0) and (a mod 10 = 4) then sum:=sum + 1;
  end;
  writeln(sum);
end.