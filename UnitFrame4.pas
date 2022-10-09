unit UnitFrame4;

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
  TFrame3 = class(TFrame)
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


procedure TFrame3.sg1SelectCell(Sender: TObject; ACol,
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


procedure TFrame3.cb1Change(Sender: TObject);
begin
{SG1.Cells[cb1.Tag mod 65536,cb1.tag div 65536]:=
  cb1.Items[cb1.itemindex];}
StringGridPIs.Cells[StringGridPIs.Col, StringGridPIs.Row]:=
  ComboBox1.Items[ComboBox1.itemindex];
  ComboBox1.visible:=false;
end;


procedure TFrame3.cb1Exit(Sender: TObject);
begin
ComboBox1.visible:=false;
end;

procedure TFrame3.sg1TopLeftChanged(Sender: TObject);
var
  R: TRect;
begin
      R := StringGridPIs.CellRect(StringGridPIs.Col, StringGridPIs.Row);
      ComboBox1.left := R.Left+ StringGridPIs.Left+1;
end;


procedure TFrame3.ts_AvaliarPIsShow(Sender: TObject);
begin
  FillStrinGridPIs();
end;

// STRING GRID de partes interessadas

procedure TFrame3.FillStrinGridPIs;
var
  quantos : Integer;
  i : Integer;
begin
  quantos :=  10;
  StringGridPIs.RowCount := quantos+1;
  StringGridPIs.Cells[0,0] := 'Partes Interessadas';
  StringGridPIs.Cells[1,0] := 'Poder';
  StringGridPIs.Cells[2,0] := 'Urgência';
  StringGridPIs.Cells[3,0] := 'Legitimidade';
  for i := 1 to quantos do
    StringGridPIs.Cells[0,i] := IntToStr(i);
end;


Constructor TFrame3.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FillStrinGridPIs;
end;

destructor TFrame3.Destroy;
begin
    inherited Destroy;
end;


end.
