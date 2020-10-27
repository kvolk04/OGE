begin
  var mc171 := 0;
  var mn171 := 0;
  var mc172 := 0;
  var mn172 := 0;
  var mc := 0;
  var mn := 0;
  
  var n := 0;
  read(N);
  for var i := 1 to N do
  begin
    var x := 0;
    read(x);
    
    if (x mod 17 = 0) and (x mod 2 = 0) then
    begin
      if (x > mc172) and (x <= mc171) then mc172 := x;
      if x > mc171 then
      begin
        mc172 := mc171;
        mc171 := x;
      end;
    end;
    
    if (x mod 17 = 0) and (x mod 2 <> 0) then
    begin
      if (x > mn172) and (x <= mn171) then mn172 := x;
      if x > mn171 then
      begin
        mn172 := mn171;
        mn171 := x;
      end;
    end;
    
    if (x mod 17 <> 0) and (x mod 2 = 0) then
    begin
      if x > mc then mc := x;
    end;
    
    if (x mod 17 <> 0) and (x mod 2 <> 0) then
    begin
      if x > mn then mn := x;
    end;
  end;
  
  // mc171 + mc172, mc171 + mc, mn171 + mn172, mn171 + mn
end.