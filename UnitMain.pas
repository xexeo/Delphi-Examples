unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  UnitFrame1, UnitFrame2, UnitFrame3;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    ts_Tab1Frame1: TTabSheet;
    ts_Tab2Frame2: TTabSheet;
    ts_Tab3Frame3: TTabSheet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    frame1 : TFrame1;
    frame2 : TFrame2;
    frame3 : TFrameChoice;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  frame1 := TFrame1.Create(self);
  frame1.Parent := PageControl1.Pages[0];

  frame2 := TFrame2.Create(self);
  frame2.Parent := PageControl1.Pages[1];

  frame3 := TFrameChoice.Create(self);
  frame3.Parent := PageControl1.Pages[3];

end;


end.
