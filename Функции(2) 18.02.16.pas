Program P2;
Uses CRT;
var
  str:string;
  function KS(s:string):integer;
  var
     i,k:integer;
  begin
     k:=0;
     for i:=1 to length(s) do
     if s[i]=' ' then inc(k);
     KS:=k+1;
  end;
  
  begin
     clrscr;
     writeln('Vvedite stroku');
     readln(str);
     writeln('kol-vo slov=', KS(str));
  end.