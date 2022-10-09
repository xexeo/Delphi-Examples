object FrameChoice: TFrameChoice
  Left = 0
  Top = 0
  Width = 752
  Height = 541
  TabOrder = 0
  object lbl_PossiveisGestores: TLabel
    Left = 112
    Top = 10
    Width = 87
    Height = 13
    Caption = 'Possible Names'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Filtro: TLabel
    Left = 20
    Top = 320
    Width = 32
    Height = 13
    Caption = 'Filter:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lbl_GestoresEscolhidos: TLabel
    Left = 559
    Top = 11
    Width = 82
    Height = 13
    Caption = 'Chosen Names'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ckb_GestoresPossiveis: TCheckListBox
    Left = 20
    Top = 30
    Width = 300
    Height = 280
    Cursor = crHandPoint
    ItemHeight = 13
    Items.Strings = (
      'Ant'#244'nio Aroreia (CTO)'
      'Beth Balan'#231'o (CIO)'
      'Carlos Capoeira (Gerente de Marketing)'
      'Denise Domigues (CFO)'
      'Edson Ernane (Gerente Administrativo)'
      'Fabiana Fantomas (Gerente de Rela'#231#245'es Institucionais)'
      'Glauber Gambone (Evangelizador)'
      'Helena Harmona (Gerente de Vendas)')
    TabOrder = 0
  end
  object btn_IncludeName: TButton
    Left = 340
    Top = 70
    Width = 100
    Height = 25
    Caption = 'Include Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn_IncludeNameClick
  end
  object CheckListBoxEscolhidos: TCheckListBox
    Left = 452
    Top = 30
    Width = 300
    Height = 280
    Cursor = crHandPoint
    ItemHeight = 13
    TabOrder = 2
  end
  object brn_ExcludeName: TButton
    Left = 340
    Top = 240
    Width = 100
    Height = 25
    Caption = 'Exclude Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = brn_ExcludeNameClick
  end
  object edit_FilterPossiveis: TEdit
    Left = 58
    Top = 316
    Width = 260
    Height = 21
    TabOrder = 4
    OnChange = edit_FilterPossiveisChange
  end
end
