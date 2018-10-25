{Написать программу с использованием функции, которая вычисляет количество 
гласных букв в строке}
Program P2;
var
   str:string; {глобальные переменные}
   function KG{имя функции}(s:string):integer{тип результата}; {заголовок функции}
   var
     i,k:integer;{локальные переменные}
   begin
     k:=0;
     for i:=1 to length(s) do
     if s[i] in ['a', 'o', 'u', 'i', 'e'] then inc(k);
     KG:=k;{возвращение результата}
   end;
   begin
     writeln('введите строку');
     readln(str);
     writeln('количество гласных=', KG(str)); {оператор вызова}
   end.
   