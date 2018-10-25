{ќписать процедуру Minmax(X,Y), записывающую в переменную Y - макксимальное из этих значений(X и Y - вещественные параметры, €вл€ющиес€ одновременно входными
и выходныыми). »спользу€ 4 вызова этой процедуры, найти минимальное и максимальное из данных чисел a,b,c,d.}
Program P2;
var
   a,b,c,d,t:real;
procedure Minmax(var x,y:real);
begin
     if x>y then begin
      t:=x;
      x:=y;
      y:=t;
     end;
end;

begin
     writeln('a=');
     readln(a);
     writeln('b=');
     readln(b);
     writeln('c=');
     readln(c);
     writeln('d=');
     readln(d);
     Minmax(a,b);
     Minmax(c,d);
     Minmax(a,c);
     Minmax(b,d);
     writeln('min=',a);
     writeln('max=',d);
     readln;
end.