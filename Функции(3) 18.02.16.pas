Program P3;
Uses CRT;
type 
    massiv=array[1..30] of integer;
var
    i,n:integer;
    a:massiv;
    function KCE(x:massiv; m:integer):integer;
    var
       k,j:integer;
    begin
       for j:=1 to m do
       if a[j] mod 2=0 then inc(k);
       KCE:=k;
    end;
    
    begin
       writeln('n=');
       readln(n);
       for i:=1 to n do
       read(a[i]);
       writeln('kol-vo cetnih=',KCE(a,n));
       readln;
    end.