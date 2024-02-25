program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var  a, b, c, d, e: integer;  s: string;
begin
  while s <> 'Off' do
  begin
    writeln('Введите 2 числа через Enter');
    readln(a);
    readln(b);
    c := a;

    while c <> 0 do
    begin
      c := (c div 10);
      Inc(e);
    end;
    c := b;

    while c <> 0 do
    begin
      c := (c div 10);
      Inc(d);
    end;

    { repeat
      c := (c div 10);
      Inc(e);
      until not (c <> 0);
      c := b;
      repeat
      c := (c div 10);
      Inc(d);
      until not (c <> 0); }

    if e > d then
      writeln('В первом числе больше цифр')
    else if d = e then
      writeln('Количество цифр в числах одинаково')
    else
      writeln('Во втором числе больше цифр');

    writeln('Для закрытия программы напишите "Off" и нажмите Enter');
    readln(s);
  end;
end.
