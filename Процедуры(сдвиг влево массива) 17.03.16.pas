Program P1;
type massiv=array[1..50] of integer;
var
   a:massiv;
   i,n:integer;
procedure ShiftLeft(var x:massiv);
var
   t,t1,i:integer;
 begin
   t:=x[1];
   t1:=x[2];
   for i:=1 to n-2 do
   x[i]:=x[i+2];
   x[n-1]:=t;
   x[n]:=t1;
 end;
begin
   write('n=');
   readln(n);
   for i:=1 to n do
   readln(a[i]);
   for i:=1 to n do
   writeln(a[i]);
   ShiftLeft(a);
   for i:=1 to n do
   write(a[i]:3);
end.