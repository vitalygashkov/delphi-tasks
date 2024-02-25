program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, i, a: integer;

begin
  readln(n);
  i := 1;
  a := n;
  while i <> 0 do
  begin
    i := a mod 10;
    a := a div 10;
    if i <> 0 then
      write(i);
  end;
  readln;

end.
