unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  UnitFrame1, UnitFrame2, UnitFrame3, UnitFrame4, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    ts_Tab1Frame1: TTabSheet;
    ts_Tab2Frame2: TTabSheet;
    ts_Tab3Frame3: TTabSheet;
    bt_End: TButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure bt_EndClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    frame1 : TFrame1;
    frame2 : TFrame2;
    frame3 : TFrameChoice;
    frame4 : TFrame3;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bt_EndClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  frame1 := TFrame1.Create(self);
  frame1.Parent := PageControl1.Pages[1];

  frame2 := TFrame2.Create(self);
  frame2.Parent := PageControl1.Pages[2];

  frame3 := TFrameChoice.Create(self);
  frame3.Parent := PageControl1.Pages[3];

  frame4 := TFrame3.Create(self);
  frame4.Parent := PageControl1.Pages[4];

end;


{
"But in Delphi you never free an object (a form or not) by writing X.Destroy.
You use X.Free which effectively does if X <> nil then X.Destroy"
https://stackoverflow.com/questions/62046543/what-is-the-right-way-to-destroy-a-form-in-delphi
}
procedure TForm1.FormDestroy(Sender: TObject);
begin
  frame1.Free;
  frame2.Free;
  frame3.Free;
end;



end.
