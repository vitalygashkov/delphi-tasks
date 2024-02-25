program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a,i,r:integer;
begin
  readln(a);
  r:=1;
  for i := 1 to a do r:=r*i;
  writeln(r);
  readln;
end.
