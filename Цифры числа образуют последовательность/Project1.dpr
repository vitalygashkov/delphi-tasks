program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var i,n: integer; t: boolean;
begin
readln(n);
t:=true;
for I := Length(IntToStr(n)) downto 2 do
begin
  if (StrToInt(IntToStr(n)[i])-StrToInt(IntToStr(n)[i-1])) < 0 then
  begin
    t:=false;
    Break;
  end;
end;
writeln(t);

readln;
end.
