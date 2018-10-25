Program P1; 
Uses CRT;
type
    Persoana=record
             FamiliaImea:string;
             DeniRojd:1..31;
             MesRojd:1..12;
             GodRojd:integer;
    end;
var
   p:array[1..50] of Persoana;
   n,i,min,v,d:integer;
   ch:char;
   {d:string;}
begin
   clrscr;
   write('n=');
   readln(n);
   writeln('¬ведите данные о лицах');
   for i:=1 to n do
     begin
      write('Vvedite familiu i imea');
      readln(p[i].FamiliaImea);
      write('Vvedite deni rojdenia');
      readln(p[i].DeniRojd);
      write('Vvedite mesiat rojdenia');
      readln(p[i].MesRojd);
      write('Vvedite god rojdenia');
      readln(p[i].GodRojd);
     end;
     writeln('Vvedite bukvu');
     readln(ch);
   for i:=1 to n do
   if p[i].FamiliaImea[1]=ch then 
   writeln(p[i].FamiliaImea,'.', p[i].DeniRojd,'.', p[i].MesRojd,'.', p[i].GodRojd);
   
   for i:=1 to n do
   if p[i].MesRojd=2 then 
   writeln(p[i].FamiliaImea,'.', p[i].DeniRojd,'.', p[i].MesRojd,'.', p[i].GodRojd);
   
   writeln('Vvedite datu rojdenia');
   readln(d);
   for i:=1 to n do
   if d=p[i].GodRojd then
   writeln(p[i].FamiliaImea,'.', p[i].DeniRojd,'.', p[i].MesRojd,'.', p[i].GodRojd);
   
   min:=1;
   for i:=2 to n do
   if p[i].GodRojd<p[min].GodRojd then min:=i;
   writeln(p[min].FamiliaImea, '.', p[min].DeniRojd,'.', p[min].MesRojd, '.',p[min].GodRojd);
   
   v:=0;
   for i:=1 to n do
   begin 
    v:=2015-p[i].GodRojd;
    writeln('v=',v);
end;
   readln;
end.
   
   