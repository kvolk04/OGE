begin
  var max1:=0;
  var max7:=0;
  
  read(x);
  while x <> 0 do begin
    if (x mod 7 = 0) and (x mod 49 <> 0) and (x > max7) then max7 := x;
    if (x mod 7 <> 0) and (x > max1) then max1 := x;
    read(x);
  end;
  
  var max := max1*max7;
  if max = 0 then max := 1;
  
  writeln(max);
end.