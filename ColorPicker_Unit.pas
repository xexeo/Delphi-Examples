unit ColorPicker_Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameColorPicker = class(TFrame)
    BrushColorBox: TColorBox;
    Shape1: TShape;
    PenColorBox: TColorBox;
    procedure BrushColorBoxChange(Sender: TObject);
    procedure PenColorBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameColorPicker.BrushColorBoxChange(Sender: TObject);
begin
  Shape1.brush.style := bsSolid;
  Shape1.brush.Color := BrushColorBox.Selected;

end;

procedure TFrameColorPicker.PenColorBoxChange(Sender: TObject);
begin
  Shape1.pen.Color := PenColorBox.Selected;
end;

end.
