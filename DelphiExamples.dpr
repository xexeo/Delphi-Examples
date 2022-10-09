program DelphiExamples;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {Form1},
  RadioControl_Unit in 'RadioControl_Unit.pas' {FrameRadioControl: TFrame},
  ColorPicker_Unit in 'ColorPicker_Unit.pas' {FrameColorPicker: TFrame},
  SelectNames_Unit in 'SelectNames_Unit.pas' {FrameChoice: TFrame},
  GridDropBox_Unit in 'GridDropBox_Unit.pas' {FrameGridDropDown: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
