unit UnitFrame1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame1 = class(TFrame)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.RadioGroup1Click(Sender: TObject);
begin
  Label1.Caption := IntToStr(RadioGroup1.itemindex+1);
end;

end.
