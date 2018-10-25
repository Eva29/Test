Program P5;
var
   i,n,j:integer;
function C(n,k:integer):integer;
 begin
 if k=0 then C:=1
  else C:=(n-k+1)+C(n,k-1) div k;
 end;
 
begin
 write('n=');
 readln(n);
 for i:=1 to n do begin
 for j:=1 to n do
  write(C(j,i));
  writeln;
 end;
end.