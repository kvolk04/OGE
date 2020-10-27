var
a, N, x2, x13, x26, i, x0, x: integer;
begin
  read(N);
  x0 := 0;
  x2 := 0;
  x13 := 0;
  x26 := 0;
  for i := 1 to N do begin
    read(a);
    if a mod 26 = 0 then x26 := x26 + 1;
    if (a mod 13 = 0) and (a mod 2 <> 0) then x13 := x13 + 1;
    if (a mod 2 = 0) and (a mod 13 <> 0) then x2 := x2 + 1;
    if (a mod 2 <> 0) and (a mod 13 <> 0) then x0 += 1;
  end;
  write(x26 * (x2 + x0 + x13 + (x26 - 1) / 2) + x2 * x13);
end.