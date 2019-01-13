unit Unit1;
{$mode objfpc}{$H+}
interface
uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  DXFya;
type
  { TForm1 }
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  public
    dxfFile: TDXFfile;
  end;

var
  Form1: TForm1;

implementation
{$R *.lfm}
{ TForm1 }
procedure TForm1.FormPaint(Sender: TObject);
var
  ent: TDXFentitie;
  x, y: Integer;
begin
  //Draw graphic entities
  for ent in dxfFile.entities do begin
    case ent.etype of
    etyLine: begin
        canvas.Line(round(ent.x0), round(ent.y0),
                    round(ent.x1)*10, round(ent.y1)*10);
      end;
    etyCircle: begin //Not implemented
      end;
    etyPolyline: begin //Not implemented
      end;
    end;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  dxfFile := TDXFfile.Create;
  dxfFile.ReadFromFile('prueba.dxf');
  if dxfFile.Er<>'' then begin
    //Some error
  end;
end;

end.

