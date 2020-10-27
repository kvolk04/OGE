begin
  var n := 0;
  read(n);
  var max2 := 0;
  var max7 := 0;
  var max141 := 0;
  var max142 := 0;
  var max0 := 0;
  for var i := 1 to n do
  begin
    var x: integer;
    read(x);
    if (x mod 2 = 0) and (x mod 7 <> 0) and (x > max2) then max2 := x;
    if (x mod 7 = 0) and (x mod 2 <> 0) and (x > max7) then max7 := x;
    if (x mod 2 = 0) and (x mod 7 = 0) then
    begin
      if (x > max142) and (x <= max141) then max142 := x;
      if x > max141 then
      begin
        max142 := max141;
        max141 := x;
      end;
    end;
    if (x mod 2 <> 0) and (x mod 7 <> 0) and (x > max0) then max0 := x;
  end;
  var prods: array[1..5] of integer := (max2 * max7, max141 * max2, max141 * max7, max141 * max0, max141 * max142);
  var max := prods[1];
  for var i := 2 to 5 do
    if prods[i] > max then max := prods[i];
    
  write(max);
end.