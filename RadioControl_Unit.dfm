object FrameRadioControl: TFrameRadioControl
  Left = 0
  Top = 0
  Width = 800
  Height = 540
  Cursor = crNo
  TabOrder = 0
  object TheBigNumber: TLabel
    Left = 432
    Top = 200
    Width = 35
    Height = 77
    Cursor = crNo
    Alignment = taCenter
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object RadioGroup1: TRadioGroup
    Left = 80
    Top = 176
    Width = 217
    Height = 161
    Cursor = crHandPoint
    Caption = 'Choose one...'
    ItemIndex = 0
    Items.Strings = (
      'One'
      'Two'
      'Three'
      'Four'
      'Five'
      'Six')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
end
