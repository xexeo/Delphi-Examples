unit UnitFrame2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrame2 = class(TFrame)
    ColorBox1: TColorBox;
    Shape1: TShape;
    ColorBox2: TColorBox;
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame2.ColorBox1Change(Sender: TObject);
begin
  Shape1.brush.style := bsSolid;
  Shape1.brush.Color := ColorBox1.Selected;

end;

procedure TFrame2.ColorBox2Change(Sender: TObject);
begin
  Shape1.pen.Color := ColorBox2.Selected;
end;

end.
