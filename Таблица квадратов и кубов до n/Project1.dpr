program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, x2, x3, i: integer;

begin
  readln(n);

  writeln;
  writeln('x   x^2   x^3');
  writeln('-------------');

  for i := 1 to n do
  begin
    x2 := i * i;
    x3 := i * i * i;
    writeln(i, '    ', x2, '    ', x3);
  end;

  readln;

end.
