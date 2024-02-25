unit GameManager;

interface

uses VisualObjects, System.Math, System.Contnrs, FMX.Graphics, System.Types;

const ButtSize = 50;
type
TGameManager = class(TObject)
public
  ButtCount: integer;
  Size: integer;
  width,height: integer;
  constructor Create(Canvas: TCanvas);
  procedure Aim(x,y: integer);
  procedure Shot;
  procedure Update;
  procedure Draw;
private
  FCanvas: TCanvas;
  Gun: TGun;
  Butts: TObjectList;
  function CheckHit: boolean;

end;

implementation

{ TGameManager }

procedure TGameManager.Aim(x, y: integer);
begin

end;

function TGameManager.CheckHit: boolean;
begin

end;

constructor TGameManager.Create(Canvas: TCanvas);
var
  RemainingButtCount: Integer;

  function GiveMeButt: boolean;
  begin
    Dec(RemainingButtCount);
    Result := RemainingButtCount >= 0;
  end;

var
  i,Lines,ButtsOnLine,q,t: integer;
  Butt: TButt;

begin
  Butts:=TObjectList.Create;
  FCanvas:= Canvas;
  Gun:=TGun.Create(FCanvas);
  Gun.angle:=45;
  Gun.x:= Round(width/2);
  Gun.y:= Height;
  Lines:= Round(Width/Size);

  RemainingButtCount := ButtCount;

  while GiveMeButt and (Lines>0) do
  begin
    Butt := TButt.Create(FCanvas);
    Butts.Add(Butt);
    Butt.size:= ButtSize;
    Butt.x:= RandomRange(Round(Butt.size/2),Round(Height/2-Butt.size/2));
    Butt.y:= Butt.size*(Lines-1)+Round(Butt.size/2);

    Dec(Lines);
  end;


end;

procedure TGameManager.Draw;
begin
Gun.Draw;
end;

procedure TGameManager.Shot;
begin

end;

procedure TGameManager.Update;
begin

end;

end.
