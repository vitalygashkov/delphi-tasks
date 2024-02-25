program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  s: string;
  i, a, b: integer;

begin
  readln(s);
  for i := 1 to Length(s) do
  begin
    if s[i] = '(' then
      Inc(a);
    if s[i] = ')' then
      Inc(b);
  end;
  if a = b then
    writeln('Баланс скобок верный')
  else
    writeln('Баланс скобок неверный!');
  readln;

end.
