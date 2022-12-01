Uses Crt;

var
  a, b, h, x, s, p, s1: real;
  n, z: integer;

function f(x: real): real;
begin
  f := 2 * power(x, 3) + 1 * power(x, 2) + (-4) * x + 1;
end;

function ft(x: real): real;
begin
  ft := 0.5 * power(x, 4) + 1 / 3 * power(x, 3) - 2 * power(x, 2) + x;
end;

procedure proc1;
var
  i: integer;
begin
  ClrScr;
  h := (b - a) / n;
  x := a + (h / 2);
  for i := 0 to n - 1 do
  begin
    s += f(x);
    x += h;
  end;
  s *= h;
  writeln('Приближённая площадь фигуры = ', abs(s):0:2);
  
  Readkey;
end;

procedure proc3;
var
  i: integer;
begin
  ClrScr;  
  s1 := ft(b) - ft(a);
  writeln('Точная площадь фигуры = ', abs(s1):0:2);
  
  Readkey;
end;

procedure proc4;
var
  i: integer;
begin
  ClrScr;
  h := (b - a) / n;
  x := a + (h / 2);
  for i := 0 to n - 1 do
  begin
    s += f(x);
    x += h;
  end;
  s *= h;
  
  s1 := ft(b) - ft(a);
  
  writeln('Погрешность = ', abs(s - s1):0:2);
  Readkey;
end;

procedure proc2;
begin
  ClrScr;
  WriteLn('введите область итеграции(>1)');
  ReadLn(a, b);
  WriteLn('введите количество промежутков');
  ReadLn(n);
end;

procedure proc0;
begin
  ClrScr;
  WriteLn('Эта программа вычисляет площадь фигуры.');
  readkey;
end;



begin
  repeat
    ClrScr;
    writeln('формулировка -1');
    WriteLn('ввод a,b,n - 2');
    WriteLn('приближённое вычисление - 3');
    WriteLn('точное вычисление - 4');
    WriteLn('погрешность - 5');
    WriteLn('Exit - 0');
    ReadLn(z);
    
    case z of
      1: proc0;
      2: proc2;
      3: proc1;
      4: proc3;
      5: proc4;
    end;
    
  until z = 0;
end.