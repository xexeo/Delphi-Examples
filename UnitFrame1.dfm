object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 800
  Height = 540
  TabOrder = 0
  object Label1: TLabel
    Left = 424
    Top = 208
    Width = 185
    Height = 77
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 80
    Top = 176
    Width = 217
    Height = 161
    Caption = 'Escolha Um Apenas'
    Items.Strings = (
      'Um'
      'Dois'
      'Tr'#234's'
      'Quatro'
      'Cinco'
      'Seis')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
end
