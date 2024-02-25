program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a: integer;
begin
  Readln(a);
  writeln((a div 100)+1,'-е столетие');
  readln;
end.
