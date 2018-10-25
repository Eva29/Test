{создть процедуру для вычисления периметра и площади прямоугольника по длинам ег сторон}
Program P1;
var
   s,p,a,b:integer;
procedure PP(a,b:integer; var x,y:integer); 
    {длина прямоугольника, ширина прямоугольника, площадь и периметр}
    {a-длина,b-ширина, x-площадь, y-периметр}
begin
     x:=a*b;
     y:=(a+b)*2;
end; {PP}

begin
     writeln('Введите длину прямоугольника a=');
     readln(a);
     writeln('Введите ширину прямоугольника b=');
     readln(b);
     PP(a,b,s,p);
     writeln('s=',s);
     writeln('p=',p);
     readln;
end.