begin
  var diskSpace: integer;
  read(diskSpace);
  var amountOfUsers: integer;
  read(amountOfUsers);
  var sizesOfUserFiles := new integer[amountOfUsers];
  for var user := 0 to amountOfUsers - 1 do
  begin
    read(sizesOfUserFiles[user]);
  end;
  
  for var step := 1 to amountOfUsers do
  begin
    for var user := 0 to amountOfUsers - 2 do
    begin
      if sizesOfUserFiles[user] > sizesOfUserFiles[user + 1] then
      begin
        var temp := sizesOfUserFiles[user];
        sizesOfUserFiles[user] := sizesOfUserFiles[user + 1];
        sizesOfUserFiles[user] := temp;
      end;
    end;
  end;
  
  if sizesOfUserFiles[0] > diskSpace then
  begin
    write('0 0');
    exit;
  end;
  
  var maxAmount := 0;
  var indexOfMax := 0;
  var sumOfFiles := 0;
  
  for var user := 0 to amountOfUsers - 1 do
  begin
    sumOfFiles += sizesOfUserFiles[user];
    if sumOfFiles > diskSpace then
    begin
      sumOfFiles -= sizesOfUserFiles[user];
      indexOfMax := user - 1;
      maxAmount := user;
      break;
    end;
  end;
  
  if maxAmount = 0 then
  begin
    write(amountOfUsers, ' ', sizesOfUserFiles[amountOfUsers - 1]);
    exit;
  end;
  
  for var user := indexOfMax to amountOfUsers - 1 do
  begin
    var currentSumOfFiles := sumOfFiles - sizesOfUserFiles[indexOfMax] + sizesOfUserFiles[user];
    if currentSumOfFiles > diskSpace then
    begin
      sumOfFiles += sizesOfUserFiles[user - 1] - sizesOfUserFiles[indexOfMax];
      indexOfMax := user - 1;
      break;
    end;
  end;
  
  Write(maxAmount, ' ', sizesOfUserFiles[indexOfMax]);
end.