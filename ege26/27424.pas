var
Max, i, s, N, a, b, Min, MinRaz: integer;
begin
  s:=0;
  MinRaz:=10000;
  readln(n);
  for i := 1 to N do begin
    readln(a,b);
    if a>b then begin Max:=a; Min:=b end
    else begin Max:=b; Min:=a end;
    s:=s+Max;
    if ((Max-Min) mod 3 <> 0) and ( Max - Min < MinRaz)
    then MinRaz:= Max - Min
  end;
  if s mod 3 = 0 then 
    writeln(s-MinRaz)
    else writeln(s);
end.