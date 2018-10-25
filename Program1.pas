Program P1;
Uses CRT;
type
    Data=record
        Ziua:1..31;
        Luna:1..12;
        Anul:integer;
         end;
    Persoana=record
        NumePrenume:string;
        DataNasterii:Data;
         end;
    ListaPersoane=array[1..50] of Persoana;
var
   z:1..31;
   l:1..12;
   dr:Data;
   NumePrenume,f:Persoana;
   max,min,vz,v,n,i,a,spisok3,ssc,smc:integer;
   s:ListaPersoane;
   d:Data;
   spisok: set of 'A'..'Z';
   spisok2: set of Data;
   c:char;
begin
   clrscr;
   write('n='); {количество людей}
   readln(n);
   writeln('Введите информацию о ',n,' человек');
   write('np');
   readln(s[i].NumePrenume);
   write('z');
   readln(d[i].z);
   write('l');
   readln(d[i].l);
   write('a');
   readln(d[i].a);
   write('dr');
   readln(d[i].dr);
{end;}

   max:=1;
   for i:=2 to n do             {самый старший человек}
   if s[i].ssc>s[max].ssc then
   writeln('s[i].np, s[i].z, s[i].l, s[i].a, s[i].dr');
   
   min:=1;
   for i:=2 to n do
   if s[i].smc<s[min].smc then
   writeln('s[i].np, s[i].z, s[i].l, s[i].a, s[i].dr');
   
   vz:=0;
   for i:=1 to  n do
   if s[i].dr<2015 then vz:=2015-s[i].dr;
   writeln('Возраст каждого человека равен=', vz);
   readln(vz);
   
   write('v=');
   readln(v);
   s:=0;
   for i:=1 to n do
   if s[i]>v then s:=s+1;
   writeln('Список лиц старше ',v,' лет');
   readln;
   
   for i:=1 to length(f) do
      begin
        s[i]:=upcase(s[i]);
        include(spisok, s[i]);
      end;
   for c:='A' to 'Z' do
   if c in spisok then write(c:5);
end.
   
   
       
   
   
   