unit SelectNames_Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,    System.StrUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst;

type
  TFrameChoice = class(TFrame)
    lbl_PossibleNames: TLabel;
    chkb_Possible: TCheckListBox;
    btn_IncludeName: TButton;
    chkb_Chosen: TCheckListBox;
    brn_ExcludeName: TButton;
    edit_FilterPossible: TEdit;
    lbl_Filter: TLabel;
    lbl_Chosen: TLabel;

    procedure btn_IncludeNameClick(Sender: TObject);
    procedure edit_FilterPossibleChange(Sender: TObject);
    procedure brn_ExcludeNameClick(Sender: TObject);

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

procedure TFrameChoice.btn_IncludeNameClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to chkb_Possible.Items.Count-1 do
  begin
    if chkb_Possible.Checked[i] then
      begin
        chkb_Chosen.AddItem(chkb_Possible.Items[i],nil);
      end;
  end;
  for i := chkb_Possible.Items.Count-1 downto 0 do
  begin
    if chkb_Possible.Checked[i] then
      begin
        ListOfPeople.Delete(ListOfPeople.IndexOf(chkb_Possible.Items[i])) ;
        chkb_Possible.Items.Delete(i);
      end;
   end;
  chkb_Possible.Items.Assign(ListOfPeople);
  edit_FilterPossible.Text := '';
  chkb_Chosen.Sorted := True;
end;

procedure TFrameChoice.edit_FilterPossibleChange(Sender: TObject);
var
  S : String;
  I : Integer;
begin
  chkb_Possible.Items.BeginUpdate;
  if edit_FilterPossible.GetTextLen > 0  then
    begin
      chkb_Possible.Clear;
      S := edit_FilterPossible.Text;
      for I := 0 to ListOfPeople.Count-1 do
        begin
          if ContainsText(ListOfPeople[I],S) then
            chkb_Possible.Items.Add(ListOfPeople[I]);
        end;
    end
  else
  chkb_Possible.Items.Assign(ListOfPeople);
  chkb_Possible.Items.EndUpdate;
end;

procedure TFrameChoice.brn_ExcludeNameClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to chkb_Chosen.Items.Count-1 do
  begin
    if chkb_Chosen.Checked[i] then
      begin
        ListOfPeople.Add(chkb_Chosen.Items[i]);
      end;
  end;
  for i := chkb_Chosen.Items.Count-1 downto 0 do
  begin
    if chkb_Chosen.Checked[i] then
      begin
        chkb_Chosen.Items.Delete(i);
      end;
  end;
  edit_FilterPossible.Text := '';
  chkb_Possible.Items.Assign(ListOfPeople);
  chkb_Possible.Sorted := True;
end;


constructor TFrameChoice.Create(AOwner : TComponent);
begin
  ListOfPeople := TStringList.Create();
  inherited Create(AOwner);
  chkb_Possible.Sorted := True;
  ListOfPeople.Assign(chkb_Possible.Items);
end;

destructor TFrameChoice.Destroy;
begin
   //cleanup stuff
   ListOfPeople.Free;
   inherited Destroy;
end;


end.
