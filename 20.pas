﻿{
20.2 Напишите программу, которая в последовательности натуральных чисел определяет сумму чисел, кратных 6. 
Программа получает на вход количество чисел в последовательности, а затем сами числа. 
В последовательности всегда имеется число, кратное 6. Количество чисел не превышает 100. 
Введённые числа не превышают 300. Программа должна вывести одно число — сумму чисел, кратных 6.
}
var
  amount, number, sum : integer;
begin
  read(amount);
  sum := 0;
  for var i := 1 to amount do
  begin
    read(number);
    if (number mod 6 = 0) then sum += number;
  end;
  writeln(sum);
end.