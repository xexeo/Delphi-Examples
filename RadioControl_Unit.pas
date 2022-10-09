unit RadioControl_Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrameRadioControl = class(TFrame)
    RadioGroup1: TRadioGroup;
    TheBigNumber: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameRadioControl.RadioGroup1Click(Sender: TObject);
begin
  TheBigNumber.Caption := IntToStr(RadioGroup1.itemindex+1);
end;

end.
