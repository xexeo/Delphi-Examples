unit GridDropBox_Unit;

{

 This code inspired by

 http://www.delphigroups.info/2/0f/293845.html

}


interface

uses
// Windoes
  Winapi.Windows, Winapi.Messages,
// System
  System.SysUtils, System.Variants, System.Classes,
  System.StrUtils,
// VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TFrameGridDropDown = class(TFrame)
    StringGridPIs: TStringGrid;
    ComboBox1: TComboBox;

    procedure sg1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
  procedure cb1Change(Sender: TObject);
  procedure cb1Exit(Sender: TObject);
  procedure sg1TopLeftChanged(Sender: TObject);
  procedure ts_AvaliarPIsShow(Sender: TObject);
  procedure FillStrinGridPIs;


  private
    { Private declarations }
  public
    Public Constructor Create(AOwner : TComponent); override;
    Public destructor Destroy; override;
  end;

implementation

{$R *.dfm}
// GRID


procedure TFrameGridDropDown.sg1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  R: TRect;
begin
  if (ARow >= 1) and (ACol >= 1) then
    begin
      R := StringGridPIs.CellRect(ACol, ARow);
      ComboBox1.Text := StringGridPIs.Cells[ACol, ARow];
      ComboBox1.left := R.Left + StringGridPIs.Left + 1;
      ComboBox1.top := R.Top + StringGridPIs.top+1;
      ComboBox1.Width := StringGridPIs.ColWidths[acol];
      ComboBox1.Visible := True;
      ComboBox1.SetFocus;
    end;
  CanSelect := True;
end;


procedure TFrameGridDropDown.cb1Change(Sender: TObject);
begin
{SG1.Cells[cb1.Tag mod 65536,cb1.tag div 65536]:=
  cb1.Items[cb1.itemindex];}
StringGridPIs.Cells[StringGridPIs.Col, StringGridPIs.Row]:=
  ComboBox1.Items[ComboBox1.itemindex];
  ComboBox1.visible:=false;
end;


procedure TFrameGridDropDown.cb1Exit(Sender: TObject);
begin
ComboBox1.visible:=false;
end;

procedure TFrameGridDropDown.sg1TopLeftChanged(Sender: TObject);
var
  R: TRect;
begin
      R := StringGridPIs.CellRect(StringGridPIs.Col, StringGridPIs.Row);
      ComboBox1.left := R.Left+ StringGridPIs.Left+1;
end;


procedure TFrameGridDropDown.ts_AvaliarPIsShow(Sender: TObject);
begin
  FillStrinGridPIs();
end;

// STRING GRID de partes interessadas

procedure TFrameGridDropDown.FillStrinGridPIs;
var
  howmany : Integer;
  i : Integer;
begin
  howmany :=  100;
  StringGridPIs.RowCount := howmany+1;
  StringGridPIs.Cells[0,0] := 'Numbers';
  StringGridPIs.Cells[1,0] := 'Prime';
  StringGridPIs.Cells[2,0] := 'Odd';
  StringGridPIs.Cells[3,0] := 'Square';
  for i := 1 to howmany do
    StringGridPIs.Cells[0,i] := IntToStr(i);
end;


Constructor TFrameGridDropDown.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FillStrinGridPIs;
end;

destructor TFrameGridDropDown.Destroy;
begin
    inherited Destroy;
end;


end.
