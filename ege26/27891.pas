begin
  var n := 0;
  read(n);
  var max2 := 0;
  var max7 := 0;
  var max14 := 0;
  var max0 := 0;
  for var i := 1 to n do
  begin
    var x: integer;
    read(x);
    if (x mod 2 = 0) and (x mod 7 <> 0) and (x > max2) then max2 := x;
    if (x mod 7 = 0) and (x mod 2 <> 0) and (x > max7) then max7 := x;
    if (x mod 2 = 0) and (x mod 7 = 0) and (x > max14) then max14 := x;
    if (x mod 2 <> 0) and (x mod 7 <> 0) and (x > max0) then max0 := x;
  end;
  var prods: array[1..4] of integer := (max2 * max7, max14 * max2, max14 * max7, max14 * max0);
  var max := prods[1];
  for var i := 2 to 4 do
    if prods[i] > max then max := prods[i];
    
  write(max);
end.