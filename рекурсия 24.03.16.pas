{»спользу€ рекурсивную подпрограмму, вычислить n-ое число фибонначи}
Program P1;
var 
   n:integer;
function Fib_NonRec(m:integer):integer;
 var
    a,b,c,i:integer;
 begin
    a:=1;
    b:=1;
    for i:=3 to m do begin
     c:=a+b;
     a:=b;
     b:=c;
     end;
 Fib_NonRec:=c;
 end;

function Fib_Rec(m:integer):integer;
 begin
  if m<=2 then Fib_Rec:=1
   else Fib_Rec:=Fib_Rec(m-2)+Fib_Rec(m-1);
 end;
 
begin
 write('n=');
 readln(n);
 writeln(Fib_NonRec(n));
 writeln(Fib_Rec(n));
end.