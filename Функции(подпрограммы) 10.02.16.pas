{�������� ��������� � �������������� �������, ������� ��������� ���������� 
������� ���� � ������}
Program P2;
var
   str:string; {���������� ����������}
   function KG{��� �������}(s:string):integer{��� ����������}; {��������� �������}
   var
     i,k:integer;{��������� ����������}
   begin
     k:=0;
     for i:=1 to length(s) do
     if s[i] in ['a', 'o', 'u', 'i', 'e'] then inc(k);
     KG:=k;{����������� ����������}
   end;
   begin
     writeln('������� ������');
     readln(str);
     writeln('���������� �������=', KG(str)); {�������� ������}
   end.
   