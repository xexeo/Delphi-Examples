program DelphiExamples;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  UnitFrame1 in 'UnitFrame1.pas' {Frame1: TFrame},
  UnitFrame2 in 'UnitFrame2.pas' {Frame2: TFrame},
  UnitFrame3 in 'UnitFrame3.pas' {FrameChoice: TFrame},
  UnitFrame4 in 'UnitFrame4.pas' {Frame3: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
