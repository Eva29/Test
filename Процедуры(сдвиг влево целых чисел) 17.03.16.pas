Program P1; 
var
   a,b,c:integer;
   procedure ShiftLeft(var x,y,z:integer);
 var
   t:integer;
 begin
   t:=x;
   x:=y;
   y:=z;
   z:=t;
 end;
begin
   writeln('¬ведите 3 целых числа');
   readln(a,b,c);
   writeln(a, b, c);
   ShiftLeft(a, b, c);
   writeln(a, b, c);
end.