unit UnitFrame3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,    System.StrUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst;

type
  TFrameChoice = class(TFrame)
    lbl_PossiveisGestores: TLabel;
    ckb_GestoresPossiveis: TCheckListBox;
    btn_IncluirGestor: TButton;
    CheckListBoxEscolhidos: TCheckListBox;
    brn_ExcluirGestor: TButton;
    edit_FilterPossiveis: TEdit;
    lbl_Filtro: TLabel;
    lbl_GestoresEscolhidos: TLabel;

    procedure btn_IncluirGestorClick(Sender: TObject);
    procedure edit_FilterPossiveisChange(Sender: TObject);
    procedure brn_ExcluirGestorClick(Sender: TObject);

  private
    { Private declarations }
        ListOfPeople : TStringList;
  public
    { Public declarations }
    Public Constructor Create(AOwner : TComponent); override;
    Public destructor Destroy; override;
  end;

implementation

{$R *.dfm}
// GESTORES

procedure TFrameChoice.btn_IncluirGestorClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ckb_GestoresPossiveis.Items.Count-1 do
  begin
    if ckb_GestoresPossiveis.Checked[i] then
      begin
        CheckListBoxEscolhidos.AddItem(ckb_GestoresPossiveis.Items[i],nil);
      end;
  end;
  for i := ckb_GestoresPossiveis.Items.Count-1 downto 0 do
  begin
    if ckb_GestoresPossiveis.Checked[i] then
      begin
        ListOfPeople.Delete(ListOfPeople.IndexOf(ckb_GestoresPossiveis.Items[i])) ;
        ckb_GestoresPossiveis.Items.Delete(i);
      end;
   end;
  ckb_GestoresPossiveis.Items.Assign(ListOfPeople);
  edit_FilterPossiveis.Text := '';
  CheckListBoxEscolhidos.Sorted := True;
end;

procedure TFrameChoice.edit_FilterPossiveisChange(Sender: TObject);
var
  S : String;
  I : Integer;
begin
  ckb_GestoresPossiveis.Items.BeginUpdate;
  if edit_FilterPossiveis.GetTextLen > 0  then
    begin
      ckb_GestoresPossiveis.Clear;
      S := edit_FilterPossiveis.Text;
      for I := 0 to ListOfPeople.Count-1 do
        begin
          if ContainsText(ListOfPeople[I],S) then
            ckb_GestoresPossiveis.Items.Add(ListOfPeople[I]);
        end;
    end
  else
  ckb_GestoresPossiveis.Items.Assign(ListOfPeople);
  ckb_GestoresPossiveis.Items.EndUpdate;
end;

procedure TFrameChoice.brn_ExcluirGestorClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to CheckListBoxEscolhidos.Items.Count-1 do
  begin
    if CheckListBoxEscolhidos.Checked[i] then
      begin
        ListOfPeople.Add(CheckListBoxEscolhidos.Items[i]);
      end;
  end;
  for i := CheckListBoxEscolhidos.Items.Count-1 downto 0 do
  begin
    if CheckListBoxEscolhidos.Checked[i] then
      begin
        CheckListBoxEscolhidos.Items.Delete(i);
      end;
  end;
  edit_FilterPossiveis.Text := '';
  ckb_GestoresPossiveis.Items.Assign(ListOfPeople);
  ckb_GestoresPossiveis.Sorted := True;
end;


constructor TFrameChoice.Create(AOwner : TComponent);
begin
  ListOfPeople := TStringList.Create();
  inherited Create(AOwner);
//  ckb_GestoresPossiveis.Sorted := True;
 // ListOfPeople.Assign(ckb_GestoresPossiveis.Items);
end;

destructor TFrameChoice.Destroy;
begin
   //cleanup stuff

   inherited Destroy;
   ListOfPeople.Free;
end;


end.
