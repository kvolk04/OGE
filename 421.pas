{
Напишите программу для решения следующей задачи. Камера наблюдения регистрирует в автоматическом режиме скорость проезжающих мимо неё автомобилей, 
округляя значения скорости до целых чисел. Необходимо определить среднюю зарегистрированную скорость всех автомобилей. 
Если скорость хотя бы одного автомобиля была не меньше 60 км/ч, выведите «YES», иначе выведите «NO».

Программа получает на вход число проехавших автомобилей N (1 ≤ N ≤ 30), затем указываются их скорости. 
Значение скорости не может быть меньше 1 и больше 300. Программа должна сначала вывести среднюю скорость с точностью до одного знака после запятой, затем «YES» или «NO».
}

var
  speed: real;
  amount, velocity, sum, count60: integer;
  //flag: boolean;
  
begin
  sum := 0;
  count60 := 0;
  //flag := false;
  readln(amount);
  for var i := 1 to amount do
  begin
    read(speed);
    velocity := round(speed);
    sum += velocity;
    if velocity >= 60 then count60 += 1;
    //if velocity >= 60 then flag := true;  
  end;
  writeln(sum / amount);
  //if flag then writeln('YES') else writeln('NO');
  if count60 > 0 then writeln('YES') else writeln('NO');
end.