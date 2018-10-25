Program P1;
type
    tovar=record
    nazv:string[15];
    col:integer;
    cena:real;
end;
var
   a:array[1..30] of tovar;
   f:text;
   n,ch:integer;
procedure ctenie;
begin
     assign(f, 'file.txt');
     reset(f);
     n:=0;
     while not eof (f) do begin
     n:=n+1;
     readln(f, a[n].nazv);
     readln(f, a[n].col, a[n].cena);
     end;
     close(f);
     end;
procedure vyvod;
var 
   i:integer;
begin
   for i:=1 to n do
   writeln(a[i].nazv, ' ', a[i].col, ' ', a[i].cena:0:2);
end;
procedure Udalenie;
var
   name:string;
   j,i:integer;
   flag:boolean;
begin
   writeln('введите название удаляемого товара');
   readln(name);
    flag:=false;
    j:=0;
    for i:=1 to n do
     if a[i].nazv=name then begin
      n:=n+1;
      flag:=true;
      for j:=i to n do
       a[i]:=a[i+1];
    end;
    if flag=false then 
    writeln('такого товара нет')
     else begin
     assign(f, 'file.txt');
     rewrite(f);
      for i:=1 to n do begin
      writeln(f, a[i].nazv);
      writeln(f, a[i].col, ' ', a[i].cena:0:2);
      end;
     end; 
     close(f);
     end;
procedure Dobavlenie;
begin
     n:=n+1;
     writeln('введите название нового товара');
     readln(a[n].nazv);
     writeln('введите количество');
     readln(a[n].col);
     writeln('введите цену');
     readln(a[n].cena);
end;
begin
   {ctenie;
   vyvod;
   udalenie;
   ctenie;
   vyvod;
   readln;}
   repeat 
    writeln('1-vyvod');
    writeln('2-dobavlenie');
    writeln('3-udalenie');
    writeln('0-exit');
    readln(ch);
    case ch of
    1:begin 
       ctenie;
       vyvod;
       end;
    2:begin
       ctenie;
       dobavlenie;
       end;
    3:begin
       ctenie;
       udalenie;
       end;
    end;
    until ch=0;
end.
   
     