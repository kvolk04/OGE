﻿{Напишите программу, которая в последовательности целых чисел определяет количество нечётных чисел, кратных 3.
 Программа получает на вход целые числа, количество введённых чисел неизвестно, последовательность чисел заканчивается числом 0 (0 — признак окончания ввода, не входит в последовательность). 
 Количество чисел не превышает 1000. Введённые числа по модулю не превышают 30 000. Программа должна вывести два числа: длину последовательности (завершающий 0 не учитывается) и количество нечётных чисел, кратных 3.
}
var
number, num:integer;
begin
  num:=0;
  read(number);
  while number <>0 do
  begin
    if (number mod 2 = 1) and (number mod 3 = 0) then num += 1;
    read(number);
  end;
  writeln(number);writeln(num);
end.