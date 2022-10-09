unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  ColorPicker_Unit, SelectNames_Unit, GridDropBox_Unit, RadioControl_Unit,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    // these tab sheets will get their own frame
    ts_RadioButtos: TTabSheet;
    ts_UsingColors: TTabSheet;
    ts_SortedChoice: TTabSheet;
    ts_GridWithDropDown: TTabSheet;
    // Simple Tab sheet for about, don´t need a frame
    ts_About: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    // Just an end button
    bt_End: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bt_EndClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    frame1 : TFrameRadioControl;
    frame2 : TFrameColorPicker;
    frame3 : TFrameChoice;
    frame4 : TFrameGridDropDown;
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
  frame1 := TFrameRadioControl.Create(self);
  frame1.Parent := PageControl1.Pages[1];

  frame2 := TFrameColorPicker.Create(self);
  frame2.Parent := PageControl1.Pages[2];

  frame3 := TFrameChoice.Create(self);
  frame3.Parent := PageControl1.Pages[4];

  frame4 := TFrameGridDropDown.Create(self);
  frame4.Parent := PageControl1.Pages[3];

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
  frame4.Free;
end;



end.
