object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 690
  Height = 485
  TabOrder = 0
  object StringGridPIs: TStringGrid
    Left = 71
    Top = 56
    Width = 505
    Height = 257
    ColCount = 4
    DefaultColWidth = 120
    FixedCols = 0
    RowCount = 25
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedColDefAlign, goFixedRowDefAlign]
    TabOrder = 0
    OnSelectCell = sg1SelectCell
    OnTopLeftChanged = sg1TopLeftChanged
  end
  object ComboBox1: TComboBox
    Left = 267
    Top = 352
    Width = 94
    Height = 21
    TabOrder = 1
    Text = 'ComboBox1'
    Visible = False
    OnChange = cb1Change
    Items.Strings = (
      'Baixo'
      'M'#233'dio'
      'Alto')
  end
end
