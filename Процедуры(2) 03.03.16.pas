{������� ��������� Minmax(X,Y), ������������ � ���������� Y - ������������� �� ���� ��������(X � Y - ������������ ���������, ���������� ������������ ��������
� ����������). ��������� 4 ������ ���� ���������, ����� ����������� � ������������ �� ������ ����� a,b,c,d.}
Program P2;
var
   a,b,c,d,t:real;
procedure Minmax(var x,y:real);
begin
     if x>y then begin
      t:=x;
      x:=y;
      y:=t;
     end;
end;

begin
     writeln('a=');
     readln(a);
     writeln('b=');
     readln(b);
     writeln('c=');
     readln(c);
     writeln('d=');
     readln(d);
     Minmax(a,b);
     Minmax(c,d);
     Minmax(a,c);
     Minmax(b,d);
     writeln('min=',a);
     writeln('max=',d);
     readln;
end.