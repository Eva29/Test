{»спользу€ рекурсивную подпрограмму, вычислить произведение P(n)=1*4*7...*(3n-2)}
Program P2;
var 
   m:integer;
function PNR(n:integer):integer;
 var
    p,i:integer;
 begin
  p:=1;
  for i:=1 to n do
   p:=p*(3*i-2);
  PNR:=p;
 end;
 
function PR(n:integer):integer;
 begin
  if n=1 then PR:=1
   else PR:=PR(n-1)*(3*n-2);
 end;

begin
 write('m=');
 readln(m);
 writeln(PNR(m));
 writeln(PR(m));
 readln;
end.
   
