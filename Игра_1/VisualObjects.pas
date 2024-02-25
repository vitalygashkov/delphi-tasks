unit VisualObjects;

interface

uses FMX.Graphics, System.Types, System.UITypes;

type
  TSpeed = integer;
  TVisualObject = class
  public
    x,y: integer;
    constructor Create(Canvas: TCanvas);
    procedure Draw; virtual; abstract;
  private
    FCanvas: TCanvas;
  end;

  TButt = class(TVisualObject)
  public
    size: integer;
  end;

  TBullet = class(TVisualObject)
  public
    angle: integer;
    Speed: TSpeed;
  end;

  TGun = class(TVisualObject)
  public
    angle: integer;
    FLength: integer;
    procedure Draw; override;
  end;

implementation

{ TGun }

procedure TGun.Draw;
var FirstPoint, SecondPoint: TPointF;
begin
FirstPoint.X:=X;
FirstPoint.Y:=Y;
SecondPoint.X:=X-cos(angle*pi/180)*FLength;
SecondPoint.Y:=Y-sin(angle*pi/180)*FLength;
FCanvas.Stroke.Color:=TAlphaColorRec.Black;
FCanvas.DrawLine(FirstPoint,SecondPoint,1);
end;

{ TVisualObject }

constructor TVisualObject.Create(Canvas: TCanvas);
begin
FCanvas:= Canvas;
end;

end.
