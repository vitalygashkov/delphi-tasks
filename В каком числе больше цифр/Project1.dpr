program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var  a, b, c, d, e: integer;  s: string;
begin
  while s <> 'Off' do
  begin
    writeln('������� 2 ����� ����� Enter');
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
      writeln('� ������ ����� ������ ����')
    else if d = e then
      writeln('���������� ���� � ������ ���������')
    else
      writeln('�� ������ ����� ������ ����');

    writeln('��� �������� ��������� �������� "Off" � ������� Enter');
    readln(s);
  end;
end.
