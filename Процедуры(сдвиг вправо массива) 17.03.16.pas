Program P1;
type massiv=array[1..50] of integer;
var
   a:massiv;
   i,n:integer;
procedure ShiftRight(var x:massiv);
var
   t,t1,i:integer;
 begin
   t:=x[n-1];
   t1:=x[n];
   for i:=n downto 3 do
   x[i]:=x[i-2];
   x[2]:=t1;
   x[1]:=t;
 end;
begin
   write('n=');
   readln(n);
   for i:=1 to n do
   readln(a[i]);
   for i:=1 to n do
   writeln(a[i]);
   ShiftRight(a);
   for i:=1 to n do
   write(a[i]:3);
end.