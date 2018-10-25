Program P1;
Uses CRT;
var
   a,x,b,k:real;
   function KRN(x,y,z:real):real;
    var
       d:real;
    begin
       if x=0 then writeln('net kornei')
         else d:=-z/x;
       KRN:=d;
    end;
    
    begin
       clrscr;
       writeln('Vvedite 2 cisla');
       readln(a,b);
       k:=KRN(a,x,b);
       writeln(k);
       readln;
    end.