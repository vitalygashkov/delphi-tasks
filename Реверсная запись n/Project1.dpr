program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, i: integer;
  s: string;

begin
  readln(n);
  s := IntToStr(n);
  for i := Length(s) downto 0 do
  begin
    write(s[i]);
  end;
  readln;

end.
