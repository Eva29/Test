{Напиши программу, используя рекурсивную подпрограмму, которая выводит на экран компоненты одномерного массива}
Program P3;
type massiv=array [1..20] of integer;
var
   x:massiv; 
   n,i:integer;
procedure Show(n:integer; a:massiv);
 var
    i:integer;
 begin
  for i:=1 to n do
   write(a[i]);
 end;
 procedure ShowR(n:integer; a:massiv);
 begin
  if n=1 then write(a[n])
   else begin
            ShowR(n-1,a);
            write(a[n]);
        end;
 end;

begin
 write('n=');
 readln(n);
 for i:=1 to n do
   readln(x[i]);
 Show(n,x);
 writeln;
  ShowR(n,x);
 readln;
end.