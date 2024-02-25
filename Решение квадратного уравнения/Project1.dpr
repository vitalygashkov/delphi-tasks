program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

const
  a: integer = 3;
  b: integer = 6;
  c: integer = 8;

var
  d: integer;
  x1, x2: double;

begin
  d := b * b - 4 * a * c;
  if d > 0 then
  begin
    x1 := (-b + sqrt(d)) / (2 * a);
    x2 := (-b - sqrt(d)) / (2 * a);
    writeln('x1=', x1, ' x2=', x2);
  end
  else if d = 0 then
  begin
    x1 := (-b) / (2 * a);
    writeln('x=', x1)
  end
  else if d < 0 then
    writeln('Нет корней');
  readln;

end.
