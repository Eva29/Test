{Используя подпрграммы составить прграмму. Даны 2 матрицы A(n,m) и B(n,m). Составить матрицу C(n,m) следующим образом:
     Cij=среднее геометрическое /Aij/и /Bij/}
Program P3;

type
  matrix = array[1..20, 1..20] of real;

var
  n, m, i, j: integer;
  x, y, z: matrix;

procedure SM(a, b: matrix; var c: matrix);
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to m do 
    begin
      c[i, j] := sqrt(abs(a[i, j]) * abs(b[i, j]));
    end;
end;

begin
  writeln('n=');
  readln(n);
  writeln('m=');
  readln(m);
  for i := 1 to n do
    for j := 1 to m do
      read(x[i, j]);
  
  writeln('n=');
  readln(n);
  writeln('m=');
  readln(m);
  for i := 1 to n do
    for j := 1 to m do
      read(y[i, j]);
  
  SM(x, y, z);
  for i := 1 to n do 
  begin
    for j := 1 to m do
      write(x[i, j]:7:2);
    writeln;
  end;
  writeln('**********************');
  for i := 1 to n do 
  begin
    for j := 1 to m do
      write(y[i, j]:7:2);
    writeln;
  end;
  
  writeln('**********************');
  
  for i := 1 to n do 
  begin
    for j := 1 to m do
      write(z[i, j]:7:2);
    writeln;
  end;
  readln;
end.